<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/bootstrap.css">
<!-- 引入js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery-3.2.1.js"></script>
</head>
<body>
<table class="table">
	<tr>
		<td>编号</td>
		<td>用户名</td>
		<td>密码</td>
	</tr>
	<c:forEach items="${info.list}" var = "a" varStatus="count">
	<tr>
		<td>${count.count}</td>
		<td>${a.username}</td>
		<td>${a.password}</td>
	</tr>
	</c:forEach>
	<tr>
		<td><jsp:include page="/WEB-INF/views/pages2.jsp"></jsp:include></td>
	</tr>
</table>
</body>
<script type="text/javascript">
	function goPage(page){
		location.href="${pageContext.request.contextPath}/list?page="+page;
	}
</script>
</html>