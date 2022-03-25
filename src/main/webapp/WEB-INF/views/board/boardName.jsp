<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
<script src="/resources/js/jquery-3.6.0.min.js"></script>
</head>

<body>
	<h1>[ ${boardName } 게시판 ]</h1>

<table>
	<tr class="title">
		<th>작성자</th>
		<th style="width:220px">제목</th>
		<th>작성시간</th>
	</tr>
	<c:choose>
		<c:when test = "${empty boardPost }">
			<tr>
				<td colspan = "3">
					<span style="display: inline-block; width: 95%; text-align: center;">
						등록된 게시글이 없습니다
					</span>
				</td>
			</tr>
		</c:when>
		<c:otherwise>
		
			<!-- 반복 시작 -->
			<c:forEach var="board" items="${boardPost}">
			<tr>
				<td>
					${board.id}
				</td>
				<td>
					<a href="/board/readBoard?boardNum=${board.boardNum}">${board.title}</a>
				</td>
				<td class="center">${board.inputDate}</td>
			</tr>
			</c:forEach>    
			<!-- 반복 끝 -->    
			</c:otherwise>
		</c:choose>

		<tr>
			<th colspan="3" style="height:50px;">
				<input type ="button" value = "글쓰기" onclick="location.href='/board/boardWrite?boardName=${boardName}'">
			</th>
		</tr>
</table>
	<input type ="button" value = "블로그 목록" onclick="location.href='/board/board1'">
</body>
</html>
