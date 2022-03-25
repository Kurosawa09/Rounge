<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
<head>
<title>[ ${boardName }님의 블로그 ]</title>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script>

	$(document).ready(function() {
		$('#btLike').on('click', like);
	});
	
	function like() {
		$.ajax({
			url: '/board/like',
			data: {boardNum123: ${post.boardNum}},
			dataType: 'text',
			success: function(n) {
				$('#likeDiv').html(n);
			},
			error: function (e) {
				alert("추천 실패");
			}
		});
	}

	function deleteBoard(boardNum23)
	{
		var result = confirm("정말 삭제하겠습니까?");
		
		if(result)
		{
			alert("삭제 실행");
			location.href = "/board/deleteBoard?boardNum568=" + boardNum23;
		}
		else 
		{
			alert("삭제 취소")		
		}
	}
	
	function updateBoard(boardNum46)
	{
		location.href = "/board/updateBoard?boardNum=" + boardNum46;
	}
</script>
</head>
<body>

<h1>[ ${boardName } 게시판 ]</h1>

<table>
	<tr>
		<th class="left title">제목 </th>
		<td class="border">${post.title}</td>
	</tr>
	<tr>
		<th class="left title">작성일 </th>
		<td class="border">${post.inputDate }</td>
	</tr>
	<tr>
		<th class="left title">내용 </th> 
		<td class="border"><pre>${post.content}</pre></td>
	</tr>
	<tr>
		<th colspan="2">
			추천수 &nbsp;
			<span id="likeDiv" style="font-size: 30px;">${post.likeCnt}</span>
			&nbsp;&nbsp;
			<input id="btLike" type="button" value="추천하기">
		</th>
		
	</tr>

	<!-- 본인 블로그 글일때만 보임 -->
	<c:if test="${sessionScope.loginId == post.id}">
		<tr>
			<th colspan="2" style="height:50px;">
				<input type="button" value="수정" onclick="location.href = '/board/updateBoard?boardNum=${post.boardNum }'">
				<input type="button" value="삭제" onclick="deleteBoard(${post.boardNum});">
			</th>
		</tr>
	</c:if>
</table>
	<input type ="button" value = "게시글 목록" onclick="location.href='/board/boardName?boardName=${boardName }'">

</body>
</html>
