<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>ticketList</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
.div1 {
	width: 500px;
	height: 190px;
	background-image: url("img/info/123qq.jpg");
	background-repeat: no-repeat;
	padding: 10px;
	margin: 10px;
	float: left;
}
</style>
<body>
	<h1 align="center">쿠폰내역 LIST</h1>
	<br>
	<div> 
	<c:forEach var="ticket" items="${tlist }">
		<div align="center" class="div1">
		<p/>
			<p align="center">NO.${ticket.ticket_no }</p>
			<h1 align="center">${ticket.exhibition_name }&nbsp;
			<button type="button" class="btn btn-info" data-toggle="" onclick="location.href='ticketPayment.do'">구매</button></h1>			
			<p align="center">${ticket.exhibition_start_date }~${ticket.exhibition_end_date }</p>
			<p align="center">${ticket.ticket_price }원</p>
		</div>
		</c:forEach>
		</div>
</body>
</html>