<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<html>
<head>
<link rel="stylesheet" href="/resources/css/styles.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Home</title>
<script>
	$(document).ready(function() {
		$("#btnLogin").click(function() {
			var username = $("#username").val();
			var password = $("#password").val();

			if (username == "") {
				alert("아이디를 입력해주세요.");
				$("#username").focus();
				return;
			}

			if (password == "") {
				alert("비밀번호를 입력해주세요.");
				$("#password").focus();
				return;
			}

			document.loginForm.action = "/user/login";
			document.loginForm.submit();
		})
	});
</script>

</head>
<body>

	<div class="wrap">
		<h1 class="title">홈 입니다.</h1>
		<div class="content">
			<form name="loginForm" method="POST">
				<p>
					ID : <input type="text" name="username" id="username">
				</p>
				<p>
					PW : <input type="password" name="password" id="password">
				</p>

				<p>
					<input type="button" class="btn btn-primary" id="btnLogin"
						value="로그인"> <a class="btn btn-primary"
						href="/user/create">회원가입</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>
