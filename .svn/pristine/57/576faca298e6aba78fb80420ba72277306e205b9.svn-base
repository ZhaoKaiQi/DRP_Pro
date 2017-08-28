<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'login.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<form action="${pageContext.request.contextPath}/login.action" method="post">
			<!--记住在没有学习这个form表单改名字的时候那么 名字只能是下面的这两个username/password  -->
			用户名:<input type="text" name="username" /><br /> 
			密码:<input type="text" name="password" /><br />
			<!--玩的是记住用户名和密码   name的值逻辑上是可以随便给的-->
			<!-- <input type="checkbox" name="rememberMe" />自动登陆</td> -->
			<input type="submit" value="登陆" />
		</form>
	</body>

</html>