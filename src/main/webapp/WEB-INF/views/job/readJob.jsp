<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[${companyName} 채용 공고]</title>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
<script src="/resources/js/jquery-3.6.0.min.js"></script>


</head>
<body>
<h1>채용 공고 내용</h1>

	<table>
		<tr>
			<th class="left title">모집 기간</th>
			<td class="border"></td>
		</tr>
		<tr>
			<th class="left title">경력 설정</th>
			<td class="border"></td>
		</tr>
		<tr>
			<th class="left title">제목</th>
			<td class="border"></td>
		</tr>
		<tr>
			<th class="left title">기업이름</th>
			<td class="border"></td>
		</tr>
		<tr>
			<th class="left title">내용</th>
			<td class="border"></td>
		</tr>
		<tr>
		    <td colspan ="10" class ="center">
			<input type="submit" value ="제출하기" >
		</td>
	</tr>
	</table>
	
</body>
</html>