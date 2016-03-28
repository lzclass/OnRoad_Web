<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/manage.css" media="screen" rel="stylesheet"
	type="text/css" />
<script src="/js/jquery-1.4.4.min.js" type="text/javascript"></script>
<title>add.jsp</title>
</head>
<body>
	<div class="manage_container">
		<div class="manage_head">
			<div class="manage_logo">
				<a href="http://www.jfinal.com">在路上</a>
			</div>
			<div id="nav">
				<ul>
					<li><a href="/"><b>首页</b></a></li>
					<li><a href="/quotation"><b>语录管理</b></a></li>
				</ul>
			</div>
		</div>
		<div class="main">
			<h1>语录管理 ---&gt; 编辑语录</h1>
			<div class="form_box">
				<form action="/quotation/save" method="post">
					<%@ include file="/quotation/_form.jsp"%>
				</form>
			</div>
		</div>
	</div>
</body>
</html>