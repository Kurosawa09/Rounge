<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 채용공고 추가 </title>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
<script src="/resources/js/jquery-3.6.0.min.js"></script>

</head>
<body>
<h1> 채용 공고 추가 </h1>
	
	<form action="/job/jobAdd" method="post">
	<table>
	<tr>
		<th>기업 이름</th>
		<td>
			<input type ="text" name="companyName" style="width:400px;" placeholder="기업 이름 ">
		</td>
	</tr>
	<tr>
		<th>경력 설정</th>
		<td>
			<input type ="text" name="vacancyCareer" style="width:400px;"placeholder="경력 설정 유(경력 년수 입력 )/무">
		</td>
	</tr>
	<tr>
		<th>모집 기간</th>
		<td>
			<input type= "text" name="vacancyPeriod" style="width:400px;"placeholder="모집 기간" >
		</td>
	</tr>
	<tr>
		<th>채용 공고 제목</th>
		<td>
			<input type="text" name="vacancyTitle"  style="width:400px;"placeholder="채용 공고 제목">
		</td>
	</tr>
	<tr>
		<th>채용 공고 내용</th>
		<td>
			<textarea name="vacancyContent" style="width:400px;height:200px;resize:none;"placeholder="채용 공고 내용"></textarea>
		</td>
	</tr>
	<tr>
		<td colspan ="8" class ="center">
			<input type="submit" value ="제출하기" >
		</td>
	</tr>
	</table>
	</form>

</body>
</html>