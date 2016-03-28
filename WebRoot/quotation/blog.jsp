<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/manage.css" media="screen" rel="stylesheet"
	type="text/css" />
<script src="/js/jquery-1.4.4.min.js" type="text/javascript"></script>
<title>blog.jsp</title>
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
			<h1>
				语录管理&nbsp;&nbsp; <a href="/quotation/add">创建语录</a>
			</h1>
			<div class="table_box">
				<table class="list">
					<tbody>
						<tr>
							<th width="4%">id</th>
							<th width="35%">标题</th>
							<th width="12%">操作</th>
						</tr>
						<c:if test="${!empty quotationPage.list }">
							<c:forEach items="${quotationPage.list }" var="quotation">
								<tr>
									<td style="text-align: left;"><c:out
											value="${quotation.id }" default=""></c:out></td>
									<td style="text-align: left;">${quotation.title }</td>
									<td style="text-align: left;">&nbsp;&nbsp;<a
										href="/quotation/delete/${quotation.id }">删除</a> &nbsp;&nbsp;<a
										href="/quotation/edit/${quotation.id }">修改</a> &nbsp;&nbsp;<a
										href="/quotation/view/${quotation.id }">查看</a>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty quotationPage.list }">
							<tr>
								<td style="text-align: center;" colspan="3">暂无数据记录！</td>
							</tr>
						</c:if>
					</tbody>
				</table>

				<c:set var="currentPage" value="${quotationPage.pageNumber }" />
				<c:set var="totalPage" value="${quotationPage.totalPage }" />
				<c:set var="actionUrl" value="/quotation/" />
				<c:set var="urlParas" value="" />

				<%@ include file="/common/_paginate.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>