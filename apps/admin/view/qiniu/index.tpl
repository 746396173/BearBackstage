<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="__ROOT____COMMON__/css/global.css" rel="stylesheet" type="text/css" />
<link href="__ROOT____ADMIN__/css/main.css" rel="stylesheet" type="text/css" />
<link href="__ROOT____PUBLIC__/ueditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="__ROOT____COMMON__/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="__ROOT____COMMON__/js/jquery.pngfix.js"></script>
<script type="text/javascript" src="__ROOT____ADMIN__/js/jquery.jclock.js"></script>
<script type="text/javascript" charset="utf-8" src="__ROOT____PUBLIC__/ueditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="__ROOT____PUBLIC__/ueditor/umeditor.min.js"></script>
<script type="text/javascript" src="__ROOT____PUBLIC__/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" src="__ROOT____ADMIN__/js/common.js"></script>
<title>main</title>
<script type="text/javascript">
$(document).ready(function(){

	$("#back").click(function(){
		window.location.href="{:url('admin/qiniu/index')}";
	})
	
	$("#mod").click(function(){
		$("#form1").attr("action","{:url('admin/qiniu/mod')}");
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
	
	<div class="position link grey_l"><a href="{:url('admin/index/index')}" target="_top">首页</a>&nbsp;>&nbsp;系统管理&nbsp;>&nbsp;七牛云设置</div>
	<div class="tab-box">
		<ul>
			<li class="cur">七牛云配置</li>
			
		</ul>
	</div>
	<div class="loading">乐尚商城提示您，请稍候！</div>
	<div class="add-box">
		<ul>
			<li><div class="title">ACCESSKEY</div><div class="input-box"><input name="ACCESSKEY" type="text" class="input" value="{$data.ACCESSKEY}"/></div><div class="clear"></div></li>
			<li><div class="title">SECRETKEY</div><div class="input-box"><input name="SECRETKEY" type="text" class="input" value="{$data.SECRETKEY}"/></div><div class="clear"></div></li>
			<li><div class="title">空间</div><div class="input-box"><input name="BUCKET" type="text" class="input" value="{$data.BUCKET}"/></div><div class="clear"></div></li>
			<li><div class="title">绑定域名</div><div class="input-box"><input name="DOMAIN" type="text" class="input" value="{$data.DOMAIN}"/></div><div class="clear"></div></li>
		</ul>
	</div>
	<div class="fun-box" style="margin-left:30px;">
		<div class="button">
			<ul>
				<li class="add" id="mod">编辑</li>
				<div class="clear"></div>
			</ul>
		</div>
		
		<div class="clear"></div>
	</div>
	
	
	
</div><!-- end of main -->
<input type="hidden" name="id" value="1" />
</form>
</body>
</html>
