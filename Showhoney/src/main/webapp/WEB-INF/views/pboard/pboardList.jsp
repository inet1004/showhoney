<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>발표회 게시판</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
 
 
  
<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<script>
	function ticketCheck(customer_id){
		var del;
		del = confirm("발표회는 티켓을 1장이상 구매하셔야 이용 가능합니다. 지금 구매하시겠습니까 ?");
		if(del){
			location.href="ticketList.do";
		}else{
		}
	} 
</script>
</head>
<body>
<br/><br><br>
<div>
<h1 align="center">발 표 회</h1><br>
</div>
<div class="container">
<table class="table" >
  <tr>
      <th>글 번 호</th>
      <th>작 성 일 자</th>
      <th>박람회</th>
      <th>부스</th>
      <th>제 목</th>
      <th>시작예정시간</th>
      <th>작성자</th>
  </tr>
  <c:forEach var="pboard" items="${list }">
  <tr style="cursor:pointer" onmouseover="this.style.background='pink'" onmouseout="this.style.background='white'" onclick="location.href='pboardDetail.do?p_no=${pboard.p_no}'">
	  <td>${pboard.p_no }</td>
      <td>${pboard.p_date }</td>
	  <td>${pboard.exhibition_name }</td>
	  <td>${pboard.company_name }</td>
	  <td>${pboard.p_title }</td>
       <td>${pboard.p_start_hour }시&nbsp;${pboard.p_start_minute }분</td>
       <td>${pboard.company_user_id }</td>
  </tr>
  
  
    </c:forEach>
</table>
</div>
<br/><br/>
<div align="center">
	<c:choose>
		<c:when test="${not empty sessionScope.company_user_id }">
			<button type="button" class="btn btn-primary" onclick="location.href='pboardInsertForm.do'">글쓰기</button>
			<button type="button" class="btn btn-success" onclick="window.open('https://192.168.0.109:9001/demos/dashboard/')">발표회가기</button>
		</c:when>
		<c:otherwise>
			<%-- <c:when test="${not empty sessionScope.customer_id}">
				<button type="button" class="btn btn-success" onclick="ticketCheck();">발표회가기</button>
				<input type="hidden" id ="customer_id" name="customer_id" value="${sessionScope.customer_id }">
				<button type="button" class="btn btn-success" onclick="window.open('https://192.168.0.109:9001/demos/dashboard/')">발표회가기</button>
			</c:when> --%>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${sessionScope.customer_id eq 'admin'}">
			<button type="button" class="btn btn-success" onclick="window.open('https://192.168.0.109:9001/demos/dashboard/')">발표회가기</button>
		</c:when>
		<c:when test="${not empty sessionScope.customer_id and check==0}">
			<button type="button" class="btn btn-success" onclick="ticketCheck();">발표회가기</button>			
		</c:when>
		<c:when test="${not empty sessionScope.customer_id and check>0}">
			<button type="button" class="btn btn-success" onclick="window.open('https://192.168.0.109:9001/demos/dashboard/')">발표회가기</button>
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
	
</div><br><br>
<div align="center">
	<p><strong>항상 ShowHoney를 사랑해주셔서 감사합니다</strong></p>
	<br><p/>
	<a href="exhibitionList.do" alt="홈으로"><i class="fas fa-landmark  fa-3x"></i></a>
	<br>
	홈으로 가기
	
</div>
<br /><br />






</body>
</html>