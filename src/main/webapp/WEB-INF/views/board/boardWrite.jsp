<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
<script src="/resources/js/jquery-3.6.0.min.js"></script>

<script>

//가입폼 확인
function formCheck() {
	var title = document.getElementById('title14');
	var content = document.getElementById('content23');
	
	if (title.value == '') {
		alert("제목을 입력하세요.");
		return false;
	}
	if (content.value == '') {
		alert("내용을 입력하세요.");
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div class="centerdiv">
<h1>[ 게시글쓰기 ]</h1>

<form action="/board/boardWrite" method="post" onsubmit="return formCheck();">
	<input type="hidden" name="boardName" value="${boardName }">
	<input type="hidden" name="loginId" value="${pageContext.request.userPrincipal.name}">
	
	<table>
	<tr>
		<th>제목</th>
		<td>
			<input type="text" name="title" id="title14" style="width:400px;" placeholder="영어로 작성해주세요">
		</td>
	</tr>
	<tr>
		<th>내용</th> 
		<td>
			<textarea name="content" id="content23" style="width:400px;height:200px;resize:none;" placeholder="영어로 작성해주세요"></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2" class="center">
			<input type="submit" value="저장" />
		</td> 
	</tr>
</table>
</form>
</div>
</body>
</html>
