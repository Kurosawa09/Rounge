<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is </P>

<c:if test = "${empty sessionScope.memberNm }">
	<a href = "/test/join">회원 가입</a>
	<a href = "/test/login">로그인</a>
	<a href = "/">홈</a>
</c:if>
<c:if test = "${not empty sessionScope.memberNm }">
	${memberNm} 님, 환영합니다.
	<a href = "/test/logout">로그아웃</a>
	<a href = "/">홈</a>
</c:if>

<c:if test = "${sessionScope.memberNm == 'admin'}">
	<a href = "/adminPage">관리자 페이지로 이동</a>
</c:if>
</body>
</html>
