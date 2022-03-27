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
function formCheck() {
	var title = document.getElementById('title14');
	if (title.value == '') {
		alert("제목을 입력하세요.");
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div class="centerdiv">
<h1>[ 게시판 추가하기 ]</h1>

<form action="/board/boardAdd" method="post" onsubmit="return formCheck();">
	
	<table>
	<tr>
		<th>게시판 이름</th>
		<td>
			<input type="text" name="boardName" id="title14" style="width:400px;" placeholder="게시판 이름 중복 불가 / 영어로 작명해주세요">
		</td>
	</tr>
	<tr>
		<td colspan="2" class="center">
			<input type="submit" value="제출" />
		</td> 
	</tr>
</table>
</form>
</div>
</body>
</html>
