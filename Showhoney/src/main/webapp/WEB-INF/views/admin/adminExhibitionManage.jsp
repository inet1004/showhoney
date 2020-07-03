<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Bootstrap basic table example</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<br><br/><br/>
<div>
<h1 align="center">박람회 관리</h1><br>
</div>
<div align="center">
	<button type="button" class="btn btn-info" onclick="location.href='ExhibitionInsertForm.do'">박람회생성</button>
</div>
<br/>
<div class="container">




<table class="table" >
  <tr>
      <th>박람회고유번호</th>
      <th>시작일자</th>
      <th>종료일자</th>
      <th>박람회이름</th>
      <th>상태</th>
      <th>입장</th>
  </tr>
  <c:forEach var="admin" items="${elist }">
  <tr>
	  <td>${admin.exhibition_no }</td>
      <td>${admin.exhibition_start_date }</td>
	  <td>${admin.exhibition_end_date }</td>
      <td>${admin.exhibition_name }</td>  
      <td>
      <button type="button" class="btn btn-info" data-toggle="" 
      onclick="location.href='ExhibitionDelete.do?exhibition_no=${admin.exhibition_no}'">삭제</button>
  	  </td>
  	  <td><button type="button" class="btn btn-info" data-toggle="" 
      onclick="location.href='customerBoothList.do?exhibition_no=${admin.exhibition_no}'">입장</button>
  	  </td>
  </tr>
  
  
    </c:forEach>
</table>
</div><br /><br />
</body>
</html>