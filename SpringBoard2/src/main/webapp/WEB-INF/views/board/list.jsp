<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" href="/resources/css/styles.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>게시글 목록</title>
</head>
<body>
	<%@ include file="../config/header.jsp"%>
	<div class="wrap">
		<h1 class="title">게시글 목록</h1>
		<div class="content">
			<p>
			<form>
				<input type="text" placeholder="검색" name="keyword"
					value="${keyword}"> <input type="submit" value="검색">
			</form>
			</p>
			<div class="table-responsive">
			
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<td>글번호</td>
							<td>제목</td>
							<td>닉네임</td>
							<td>조회수</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${data}">
							<tr>
								<td>${row.boardId}</td>
								<td><a href="/board/detail/${row.boardId}">${row.title}</a></td>
								<td>${row.nickname}</td>
								<td>${row.view }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
			<p>
				<a class="btn btn-primary" href="/board/create">생성</a>
			</p>
		</div>
	</div>
</body>
</html>

