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
	$()
</script>
</head>
<body>
	<%@ include file="../config/header.jsp"%>
	<div class="wrap">
		<h1 class="title">게시글 작성</h1>
		<div class="content">
			<p>제목 : ${data.title}</p>
			<p>작성일 : ${data.regdate}</p>
			<p>조회수 : ${data.view}</p>
			<p>닉네임 : ${data.nickname}</p>
			<p>카테고리: ${data.category}</p>
			<p>내용: ${data.content}</p>
			<input type="hidden" name="userId" value="${data.nickname}">
			
			<input class="btn-danger"type="button" id="deletebtn" value="삭제하기">
			<input class="btn-danger"type="button" id="deletebtn" value="삭제하기">
			<input class="btn-primary"type="button" id="updatebtn" value="수정하기">
		</div>
	</div>


</body>
</html>