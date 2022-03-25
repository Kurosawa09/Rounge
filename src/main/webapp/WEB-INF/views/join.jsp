<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>회원가입</title>
</head>
<body>
	<h1>회원 가입</h1>
	
	<form action = "/test/join" method = "post">
	
		<table BORDER = "1">
			<tr>
				<th>아이디</th>
				<td>
					<input type = "text" name = "memberId">
				</td>	
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type = "password" name = "memberPw">
				</td>	
			</tr>
			<tr>
				<th>닉네임</th>
				<td>
					<input type = "text" name = "memberNm">
				</td>	
			</tr>
			<tr>
				<td colspan = "2">
					<input type = "submit" value = "가입하기">
				
				</td>	
			</tr>
		</table>
	</form>
	
	<a href ="/test/logintesthome">뒤로가기</a>
	
</body>
</html>