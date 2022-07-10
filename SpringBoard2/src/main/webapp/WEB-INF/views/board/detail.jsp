<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/styles.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<meta charset="UTF-8">
<title>게시글 작성</title>
<script>

	$(document).ready(function() {
		$("#listbtn").click(function() {
			location.href = '/board/list';
		})
		
		$("#listbtn").click(function() {
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
	<%@ include file="../config/header.jsp"%>
	<div class="wrap">
		<h1 class="title">게시글 작성</h1>
		<div class="content">
			<table class="table table-sm tables">
				<tr>
					<th class="col-sm-3">제목</th>
					<td>${data.title}</td>
					<th class="col-sm-3">작성일</th>
					<td>${data.regdate}</td>
				</tr>
				<tr>
					<th class="col-sm-3">조회수</th>
					<td>${data.view}</td>
					<th class="col-sm-3">닉네임</th>
					<td>${data.nickname}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan='3' class="content"><textarea style="width:100%" class="content" name="content" readonly="readonly"> ${data.content}</textarea></td>
				</tr>
			</table>
			<!-- <input class="btn-primary" type="button" id="listbtn" value="목록으로"> -->
			<a class="btn-primary" href="/board/list">목록으로</a>
			<a class="btn-primary" href="/board/update/${data.boardId}">수정하기</a>
			<input class="btn-danger" type="button" id="deletebtn" value="삭제하기">
		</div>
	</div>


</body>
</html>