<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<br/><br/><br/>
<div align="center"><h1>문 의 내 용</h1></div>
<form action="" method="post">
<div align="center">
<table border="1">
	<tr>
		<td>문의번호</td>
		<td><input type="text" id="ask_no" name="ask_no" value="${Dalist.ask_no }" readonly></td>
	</tr>
		
	<tr>
		<td>제목</td>
		<td><input type="text" id="ask_title" name="ask_title" value="${Dalist.ask_title }" readonly></td>
	</tr>
	
	<tr>
		<td>내용</td>
		<td><textarea name="ask_contents" id="ask_contents" readonly>${Dalist.ask_contents }</textarea></td>
	</tr>
	
	<tr>
		<td>문의일자</td>
		<td><input type="text" id="ask_date" name="ask_date" value="${Dalist.ask_date }" readonly></td>
	</tr>
	
	<tr>
		<td>닉네임</td>
		<td><input type="text" id="ask_name" name="ask_name" value="${Dalist.ask_name }" readonly></td>
	</tr>
	
	<tr>
		<td>E-mail</td>
		<td><input type="text" id="ask_email" name="ask_email" value="${Dalist.ask_email }" readonly></td>
	</tr>
</table>
</div>	
</form>

<br><br>
<div align="center">
	<p><strong>항상 ShowHoney를 사랑해주셔서 감사합니다</strong></p>
	<br><p/>
	<a href="/core/" alt="홈으로"><i class="fas fa-landmark  fa-3x"></i></a>
	<br>
	홈으로 가기
	
</div>
</body>
</html>