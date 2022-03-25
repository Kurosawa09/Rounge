<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인</h1>
	
	<form action = "/test/login", method = "post">
		<table border = "1">
			<tr>
				<th>ID</th>
				<td>
					<input type = "text" name = "memberId">
				</td>
			</tr>
			<tr>
				<th>PW</th>
				<td>
					<input type = "password" name = "memberPw">
				</td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type = "submit" value = "로그인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>