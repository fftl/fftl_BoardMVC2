<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>
</head>
<body>
<h1>수정하기</h1>
<form method="POST" action="/user/update" name="user">
	<p>아이디 : <input type="text" name="username"  value="${data.username}"> </p>
	<p>비밀번호: <input type="password" name="password" } ></p>
	<p>닉네임 : <input type="text" name="nickname" value="${data.nickname}"></p>
	<input type="submit" value="저장하기 ">
</form>
</body>
</html>