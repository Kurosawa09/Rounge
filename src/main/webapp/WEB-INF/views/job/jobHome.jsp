<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용공고</title>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>[ 채용공고 목록  ]</h1>

	<c:choose>
	<c:when test = "${empty listVacancy }">
				<p>아직 등록된 채용 공고가 없습니다.</p>
		</c:when>
		<c:otherwise>
		<c:forEach var="job" items="${listVacancy}">
	<table border = 1>
		<tr>
			<th>
				<a></a>
			</th>
		</tr>
	</table>
	
	</c:forEach>
	</c:otherwise>
	</c:choose>
<input type ="button" value="채용 공고 추가 " onclick="location.href='/job/jobAdd'">
<input type ="button" value="채용 공고 내용 " onclick="location.href='/job/readJob'">

</body>
</html>