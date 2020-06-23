<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ticketList</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<br>
<div>
<h1 align="center">쿠 폰 내 역 test</h1><br>
</div>
<div class="container">

<table class="table" >
  <tr>
      <th>티켓번호</th>
      <th>가격</th>
      <th>티켓상태</th>
      <th>전시회이름</th>
      <th></th>
  </tr>
  <c:forEach var="ticket" items="${tlist }">
  <tr>
	  <td>${ticket.ticket_no }</td>
      <td>${ticket.ticket_price }</td>
	  <td>${ticket.ticket_status }</td>
	  <td>${ticket.exhibition_name }</td>
      <td>
      <button type="button" class="btn btn-info" data-toggle="" 
      onclick="location.href='ticketPayment.do'">구입</button>
  	  </td>
  </tr>
  
  
    </c:forEach>
</table>
</div><br /><br />
</body>
</html>