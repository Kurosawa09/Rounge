<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#btWrite').on('click', goWriteForm);
	});
	
	function goWriteForm() {
		location.href = '/board/boardAdd';
	}
	</script>
</head>

<body>
<h1>[ 게시판 목록 ]</h1>	

<input type ="button" value = "기업 리뷰로 이동" onclick="location.href='/company/companyHome'">
<input type ="button" value = "홈으로 이동" onclick="location.href='/'">
	
		<table border = 1>	
			<tr>
				<th>
					토픽 게시판(추천 10개 이상)
				</th>
			</tr>

			<c:forEach var="board1" items="${listBoardPost}">
			<tr>
				<c:if test="${board1.likeCnt > '10'}">
					<td>
						<a href="/board/readBoard?boardNum=${board1.boardNum}">"${board1.title}"</a>
					</td>
				</c:if>
			</tr>
							</c:forEach>
			</table>


		<c:choose>
		<c:when test = "${empty listBoard }">
				<p>아직 등록된 게시판이 없습니다.</p>
		</c:when>
		<c:otherwise>
		<c:forEach var="board2" items="${listBoard}">
		<table border = 1>	
			<tr>
				<th>
					<a href="/board/boardName?boardName=${board2}">"${board2}"</a> 게시판으로 이동
				</th>
			</tr>

		
		<c:forEach var="board3" items="${listBoardPost}">
			<c:choose>
			<c:when test="${board3.boardType == board2}">
					<td>
						<a href="/board/readBoard?boardNum=${board3.boardNum}">"${board3.title}"</a>
					</td>
			</c:when>
				</c:choose>
			</tr>
		</c:forEach>
		
			</table>
		</c:forEach>
		</c:otherwise>
		</c:choose>

			<input id="btWrite" type="button" value="새 게시판 만들기">

</body>
</html>
