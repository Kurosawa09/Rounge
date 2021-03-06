<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>로그인</title>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script>
//로그인 폼 검사
function formCheck() {
	var id = document.getElementById('id34');
	var password = document.getElementById('password71');
	
	if (id.value == '' || password.value == '') {
		alert('ID와 비밀번호를 입력하세요.');
		return false;
	}
	return true;
}
</script>
</head>
<body>
<h1>[ 로그인 ]</h1>

<form action="/member/login" method="post" onSubmit="return formCheck();">
<table>
<tr>
	<td class="bold">ID</td>
	<td><input type="text" name="id" id="id34" /></td>
</tr>
<tr>
	<td class="bold">Password</td>
	<td><input type="password" name="password" id="password71" /></td>
</tr>

<tr>
	<td colspan="2" class="center white">
		<input type="submit" value="Login" />
	</td>
</tr>
</table>
</form>

</body>
</html>
