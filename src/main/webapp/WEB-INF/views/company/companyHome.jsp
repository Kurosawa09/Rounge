<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#btWrite').on('click', goWriteForm);
	});
	
	function goWriteForm() {
		location.href = '/company/companyAdd';
	}
	</script>
</head>
<body>
<h1>[ 기업 리뷰 ]</h1>	
<input type ="button" value = "기업 리뷰 쓰기" onclick="location.href='/company/companyReviewWrite'">

<c:choose>
		<c:when test = "${empty listCompany }">
				<p>아직 등록된 게시판이 없습니다.</p>
		</c:when>
		<c:otherwise>
		<c:forEach var="company" items="${listCompany}">
		<table border = 1>	
			<tr>
				<th>
					<a href="/company/companyName?companyName=${company}">"${company}"</a>
				</th>
			<td>평점
			</td>
			</tr>
			</table>
			
		</c:forEach>
		</c:otherwise>
		</c:choose>

			<input id="btWrite" type="button" value="기업 정보 등록하기">

</body>
</html>