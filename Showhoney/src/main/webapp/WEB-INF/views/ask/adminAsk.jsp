<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Ask 문의내역</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<style>
	body{
		margin-top:50px;
	}
</style>
</head>
<body>
<br>
<div>
<h1 align="center">문 의 내 역</h1><br>
</div>
<table class="table" >
  <tr>
      <th>문 의 번 호</th>
      <th>제 목</th>
      <th>작 성 일 자</th>
      <th>닉 네 임</th>
      <th>이 메 일</th>
      <th></th>
  </tr>
  <c:forEach var="ask" items="${alist }">
  <tr>
	  <td>${ask.ask_no }</td>
      <td><button type="button" onclick="location.href='GoAskDetail.do?ask_no=${ask.ask_no}'"
       class="btn btn-warning">${ask.ask_title }</button></td>
	  <td>${ask.ask_date}</td>
	  <td>${ask.ask_name }</td>
	  <td>${ask.ask_email }</td>
	  <td>
	  	<button type="button" class="btn btn-primary" onclick="location.href='adminSendMail.do?ask_no=${ask.ask_no}'">답장하러가기</button>
	  </td>
  </tr>
  
  
    </c:forEach>
</table>

<div align="center">
	<p><strong>항상 ShowHoney를 사랑해주셔서 감사합니다</strong></p>
	<p><strong>문의 내역은 작성하신 E-mail로 발송됩니다</strong></p>
	<br><p/>
	<a href="/core/" alt="홈으로"><i class="fas fa-landmark  fa-3x"></i></a>
	<br>
	홈으로 가기
	
</div>
<br /><br />
</body>
</html>