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
</head>
<body>
	<%@ include file="../config/header.jsp"%>
	<div class="wrap">
		<h1 class="title">게시글 작성</h1>
		<div class="content">
			<form method="POST" action="/board/create" name="board">
				<p>
					제목 : <input type="text" name="title">
				</p>
				<p>
					닉네임 : <input type="text" name="nickname"
						value="<%=session.getAttribute("nickname")%>"
						readOnly="readOnly">
				</p>
				<p>
					카테고리: <input type="text" name="category">
				</p>
				<p>
					내용: <input type="text" name="content">
				</p>
				<input type="hidden" name="userId"
					value="<%=session.getAttribute("userId")%>"> 
				<input class="btn-primary"
					type="submit" value="저장하기 ">
			</form>
		</div>
	</div>


</body>
</html>