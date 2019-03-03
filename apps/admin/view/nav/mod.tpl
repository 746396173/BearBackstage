<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="__ROOT____COMMON__/css/global.css" rel="stylesheet" type="text/css" />
<link href="__ROOT____ADMIN__/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="__ROOT____COMMON__/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="__ROOT____COMMON__/js/jquery.pngfix.js"></script>
<script type="text/javascript" src="__ROOT____ADMIN__/js/jquery.jclock.js"></script>
<script type="text/javascript" src="__ROOT____ADMIN__/js/common.js"></script>
<title>main</title>
<script type="text/javascript">
$(document).ready(function(){

	$("#back").click(function(){
		window.location.href="{:url('admin/nav/index')}";
	})
	$(".input-box-s").click(function(){
		
		$(this).children(".select-box").slideToggle("fast");
	})
	
	
	
	$("#nav-list ul li").click(function(){
		var id=$(this).attr("id");
		var text=$(this).text();
		$(this).parent("ul").parents(".input-box-s").children(".select-title").html(text);
		$(this).parent("ul").children("input").val(id);
		
	})
	
	$("#module-list ul li").click(function(){
		var id=$(this).attr("id");
		var text=$(this).text();
		$(this).parent("ul").parents(".input-box-s").children(".select-title").html(text);
		$(this).parent("ul").children("input").val(id);
		
	})
	
	$("#mod").click(function(){
		$("#form1").attr("action","{:url('admin/nav/mod')}");
		$("#form1").submit();
	})
	
	$(".radio-box1 .radio").click(function(){
		var id=$(this).attr("id");
		if($(this).hasClass("radio-n")){
			
			//去除同级选中状态
			$(this).siblings(".radio").removeClass("radio-s");
			$(this).siblings(".radio").addClass("radio-n");
			//添加本状态
			$(this).removeClass("radio-n");
			$(this).addClass("radio-s");
			
			$(this).siblings("input").val(id);
		}
	})
})
</script>
</head>

<body>
{include file="index/top" /}
<form enctype="multipart/form-data" action="" method="post" id="form1">
<div class="main" id="main">
	<div class="position link grey_l"><a href="{:url('admin/index/index')}" target="_top">首页</a>&nbsp;>&nbsp;内容管理&nbsp;>&nbsp;编辑导航</div>
	
	<div class="add-box">
		<ul>
			<li><div class="title">导航名称</div><div class="input-box"><input name="name" type="text" class="input" value="{$data.name}"/></div><div class="tip">*</div><div class="clear"></div></li>
			<li>
				<div class="title">所属栏目</div>
				<div class="input-box-s" style="z-index:100"><span class="select-title">{$data.currentName}</span>
					<div class="select-box"  id="nav-list">
						<ul>
							<input type="hidden" name="pid" value="<{$data.pid}>">
							<li id="0">顶级栏目</li>
							 {volist name="navdatas" id="d"}
								<li id="{$d.id}" mid="{$d.module_id}">{$d.name}</li>
							 {/volist}
						</ul>
					</div>
				</div>
				<div class="tip">*</div>
				<div class="clear"></div>
			</li>
			<li id="module_list" >
				<div class="title">所属模块</div>
				<div class="input-box-s" style="z-index:99"><span class="select-title">{$data.module_name}</span>
					<div class="select-box" id="module-list">
						<ul>
							<input type="hidden" name="module_id" id="module_id" value="{$data.module_id}">
							 {volist name="moduledatas" id="d"}
								<li id="{$d.id}">{$d.name}</li>
							 {/volist}
						</ul>
					</div>
				</div>
				<div class="tip">*</div>
				<div class="clear"></div>
			</li>
			<li><div class="title">栏目排序</div><div class="input-box"><input name="sort" type="text" class="input" value="{$data.sort}"/></div><div class="tip">*</div><div class="clear"></div></li>
			<li>
				<div class="title">是否显示</div>
				<div class="radio-box1">
					<div class="{if condition="$data.display==1"}radio-s{else}radio-n{/if}  radio" id="1"></div><div class="radio-t">显示</div>
					<div class="{if condition="$data.display==0"}radio-s{else}radio-n{/if}  radio" id="0" style="margin-left:30px;"></div><div class="radio-t">隐藏</div>
					<input type="hidden" name="display" value="{$data.display}">
				</div>
				<div class="clear"></div>
			</li>
		</ul>
	</div>
	
	<div class="fun-box" style="margin-left:30px;">
		<div class="button">
			<ul>
				<li class="add" id="mod">编辑</li>
				<li class="dels"  id="back">返回</li>
				<div class="clear"></div>
			</ul>
		</div>
		
		<div class="clear"></div>
	</div>
	
</div><!-- end of main -->
<input type="hidden" name="id" value="{$data.id}" />
</form>
</body>
</html>
