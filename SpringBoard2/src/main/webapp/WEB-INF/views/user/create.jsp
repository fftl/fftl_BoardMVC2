<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h1>회원가입 합니다.</h1>
<form method="POST" action="/user/create" name="user">
	<p>아이디 : <input type="text" name="username" > <</p>
	<p>비밀번호: <input type="password" name="password" ></p>
	<p>닉네임 : <input type="text" name="nickname" ></p>
	<input type="submit" value="저장하기 ">
</form>
</body>
</html>