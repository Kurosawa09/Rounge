<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>

function formCheck() {
	var id = document.getElementById('id123');
	var password = document.getElementById('password456');
	var name = document.getElementById('name789');
	
	if (id.value.length < 3 || id.value.length > 10) {
		alert("ID는 3~10자로 입력하세요.");
		return false;
	}
	if (password.value.length < 3 || password.value.length > 10) {
		alert("비밀번호는 3~10자로 입력하세요.");
		return false;
	}
	if (name.value == '') {
		alert("이름을 입력하세요.");
		return false;
	}
	return true;
}
</script>
</head>

<body>
<h1>[ SES Blog 회원 가입 ]</h1>

<form action="/member/join" method="post" onsubmit="return formCheck();">
<table class="border">
	<tr>
		<td class="bold">ID</td>
		<td>
			<input type="text" name="id9" id="id123">
		</td>
	</tr>
	<tr>
		<td class="bold">비밀번호</td>
		<td>
			<input type="password" name="password8" id="password456">
		</td>
	</tr>
	<tr>
		<td class="bold">이름</td>
		<td>
			<input type="text" name="name7" id="name789">
		</td>
	</tr>
	<tr>
		<td class="bold">프로그래밍 언어</td>
		<td>
			<label>
				<input type = "checkbox" name = "language6" value ="Java">Java
				<img src="/resources/image/photo5.png">
			</label>
			<label>
				<input type = "checkbox" name = "language6" value = "DB">DB
				<img src="/resources/image/photo6.jpg">
			</label>
			<label>
				<input type = "checkbox" name = "language6" value = "Web">Web
				<img src="/resources/image/photo7.jpg">
			</label>
		</td>
	</tr>
	<tr>
		<td class="bold">사진 선택</td>
		<td>
			<label>
				<input type="radio" name="photo5" value="1" checked>
				<img src="/resources/image/photo1.png">
			</label>
			<label>
				<input type="radio" name="photo5" value="2">
				<img src="/resources/image/photo2.png">
			</label>
			<label>	
				<input type="radio" name="photo5" value="3">
				<img src="/resources/image/photo3.png">
			</label>
			<label>
				<input type="radio" name="photo5" value="4">
				<img src="/resources/image/photo4.png">
			</label>
		</td>
	</tr>
	<tr>
		<td colspan="1" class="center">
			<input type="submit" value="가입" />
		</td>
	</tr>
</table>

</form>
<div style = "color : red;">${errMsg111 }</div>


</body>
</html>