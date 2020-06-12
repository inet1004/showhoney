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
<br>
<div>
<h1 align="center">기업 신청 목록</h1><br>
</div>
<div class="container">




<table class="table" >
  <tr>
      <th>기업고유번호</th>
      <th>기업 이름</th>
      <th>기업회원ID</th>
      <th>승인처리</th>
  </tr>
  <c:forEach var="admin" items="${list }">
  <tr>
      <td>${admin.company_no }</td>
      <td>
      <div>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#${admin.company_no }">${admin.company_name }</button>

  <!-- Modal -->
  <div class="modal fade" id="${admin.company_no }" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">기 업 정 보</h4>
        </div>
        <div class="modal-body">
           <table class="table table-boardered">
            <tr>
                <th>기업고유번호</th>
                <td>${admin.company_no }</td>        
            </tr>
            <tr>
                <th>기업이름</th>
                <td>${admin.company_name }</td>     
            </tr>
             
            <tr>
                <th>기업전화번호</th>
                <td>${admin.company_phone }</td>        
            </tr>
             
            <tr>
                <th>기업주소</th>
                <td>${admin.company_addr }</td>      
            </tr>
             
            <tr>
                <th>기업 E-mail</th>
                <td>${admin.company_email }</td>      
            </tr>
             
            <tr>
                <th>기업대표</th>
                <td>${admin.ceo_name }</td>
            </tr>
                         
            <tr>
                <th>기업 대표 전화번호</th>
               <td>${admin.ceo_phone }</td> 
            </tr>             
                         
            <tr>
                <th>사업자 등록번호</th>
                <td>${admin.business_license_number }</td>    
            </tr>
            
        </table>
        
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
</td>
		<td>${admin.company_user_id }</td>
     	<td>
      		
      		<button type="button" class="btn btn-info" data-toggle="" onclick="location.href='adminUpdate.do?company_user_id=${admin.company_user_id}'">승인</button>&nbsp;
      		<button type="button" class="btn btn-info" data-toggle="" onclick="location.href='adminDelete.do?company_user_id=${admin.company_user_id}'">거절</button>
      		 
      		<%-- <a href="adminUpdate.do?company_user_id=${admin.company_user_id}">승인</a>&nbsp;
      		<a href="adminDelete.do?company_user_id=${admin.company_user_id}">거절</a> --%>
      		<!-- <button type="button" class="btn btn-info">거절</button>	 -->
      	</td>
      
  </tr>
  </c:forEach>
    
</table>
</div><br /><br />
</body>
</html>