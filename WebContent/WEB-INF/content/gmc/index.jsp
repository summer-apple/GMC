<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>





<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>Member</li>
		<li><a href="member/login">login</a></li>
		<li><a href="member/login-success">login-success</a></li>
		<li><a href="member/register">register</a></li>
		<li><a href="member/home">home</a></li>
		<li><a href="member/forget">forget</a></li>
		<li><a href="member/reset-pass">reset-pass</a></li>
		<li><a href="member/profile">profile</a></li>
		<li><a href="member/edit-profile">edit-profile</a></li>
		<li><a href="member/preference">preference</a></li>
	</ul>
</body>
</html>