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
	.startPayment{
		margin-top:50px;
	}
</style>


</head>
<body>
<br>
<div class="startPayment">
<h1 align="center">결 제 내 역</h1><br>
</div>
<div align="center">
<table class="table">
  <tr>
  	  <th>티켓 번호</th>
      <th>결제 날짜</th>
      <th>승인 번호</th>
      <th>결제 방식</th>
      <th>결제 금액</th>
  </tr>
  <c:forEach var="pds" items="${pdslist }">
	  <tr>
		  <td>${pds.ticket_no }</td>
	      <td>${pds.payment_date }</td>
		  <td>${pds.payment_approval_number }</td>
		  <td>${pds.payment_type }</td>
		  <td>${pds.payment_sum }</td>
	  </tr>  
   </c:forEach>
   
</table>
</div>
<div align="center">
	<button type="button" class="btn btn-primary" onclick="location.href='exhibitionList.do'">박람회가기</button>
</div><br><br>
<div align="center">
	<p><strong>항상 ShowHoney를 사랑해주셔서 감사합니다</strong></p>
	<br><p/>
	<a href="/core/" alt="홈으로"><i class="fas fa-landmark  fa-3x"></i></a>
	<br>
	홈으로 가기
	
</div>
<br /><br />
</body>
</html>