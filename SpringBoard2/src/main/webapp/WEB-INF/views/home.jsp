<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	홈 입니다.
</h1>
<form method="POST" action="/user/login">
	<p>ID : <input type="text" name="username"></p>
	<p>PW : <input type="password" name="password"></p>
	<input type="submit" value="login">
</form>
<p><a href="/user/create">회원가입</a></p>
</body>
</html>
