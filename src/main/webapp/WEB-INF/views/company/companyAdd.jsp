<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>기업 정보 등록하기</h1>

<form action="/company/companyAdd" method="post">
	
	<table>
	<tr>
		<th>회사 이름</th>
		<td>
			<input type="text" name="companyName" style="width:400px;" placeholder="회사 이름 중복 불가 / 영어로 작명해주세요">
		</td>
	</tr>
	<tr>
		<th>회사 홈페이지</th>
		<td>
			<input type="text" name="companyHomepage" style="width:400px;" placeholder="회사 이름 중복 불가 / 영어로 작명해주세요">
		</td>
	</tr>
	<tr>
		<th>업계</th>
		<td>
			<input type="text" name="companyService" style="width:400px;" placeholder="회사 이름 중복 불가 / 영어로 작명해주세요">
		</td>
	</tr>
	<tr>
		<th>본사</th>
		<td>
			<input type="text" name="headOffice" style="width:400px;" placeholder="회사 이름 중복 불가 / 영어로 작명해주세요">
		</td>
	</tr>
	<tr>
		<th>설립</th>
		<td>
			<input type="text" name="companyYear" style="width:400px;" placeholder="회사 이름 중복 불가 / 영어로 작명해주세요">
		</td>
	</tr>
	<tr>
		<th>직원 수</th>
		<td>
			<input type="text" name="employees" style="width:400px;" placeholder="회사 이름 중복 불가 / 영어로 작명해주세요">
		</td>
	</tr>
	<tr>
		<th>연봉 정보</th>
		<td>
			<input type="text" name="salary" style="width:400px;" placeholder="회사 이름 중복 불가 / 영어로 작명해주세요">
		</td>
	</tr>
	<tr>
		<td colspan="8" class="center">
			<input type="submit" value="제출" />
		</td> 
	</tr>
</table>
</form>
	
</body>
</html>