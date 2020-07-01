<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<title>발표회게시판 글 쓰기</title>
<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<script>
	function test(){
		if(!document.frm.booth_no.value){
			alert("부스를 선택해주세요. 부스가 없다면 먼저 부스를 생성하세요.");
			document.frm.booth_no.focus();
			return false;
		}
		
		if(!document.frm.p_title.value){
			alert("제목을 입력해주세요");
			document.frm.p_title.focus();
			return false;
		}
		
		if(!document.frm.p_contents.value){
			alert("내용을 입력해주세요");
			document.frm.p_contents.focus();
			return false;
		}
		
		if(!document.frm.p_start_day.value){
			alert("시작 예정날짜를 입력해주세요");
			document.frm.p_start_day.focus();
			return false;
		}
		
		if(!document.frm.p_start_hour.value){
			alert("시간 단위를 입력해주세요");
			document.frm.p_start_day.focus();
			return false;
		}
		
		if(!document.frm.p_start_minute.value){
			alert("분 단위를 입력해주세요");
			document.frm.p_start_day.focus();
			return false;
		}
		
		return true;
	}
</script>
<h1 align="center">글 쓰 기</h1><br>
<div align="center">
<c:choose>
<c:when test="${not empty list[0].booth_no}">
	<form id="frm" name="frm" action="pboardInsert.do" method="post" onsubmit="return test()">
		<div>
			부스 : <select class="w3-select" id="booth_no" name="booth_no">
				<option value="" disabled selected>부스를 선택해주세요</option>
				<c:forEach var="list" items="${list }" varStatus="i">
				<option value="${list.booth_no}">${list.exhibition_name } ▷${list.company_name } 부스</option>
				</c:forEach>
			</select><br/><br/>
		</div>
		<div>
			제목 : <input type="text" id="p_title" name="p_title" size="50"><br/><br/>
		</div>		
		<div>
			내용 : <textarea name="p_contents" id="p_contents" rows="3" cols="50"></textarea><br/><br/>
		</div>
		<div>
			시작 예정날짜 :
			<input type="date" id="p_start_day" name="p_start_day"><br/><br/>
		</div>
		<div>
			시작 예정시간 :
			<select class="w3-select" name="p_start_hour">
				<option value="" disabled selected>시간 단위를 선택해주세요</option>
				 <c:forEach var="hour" varStatus="i" begin="0" end="23" step="1">
       				<option value="${hour}">${hour }시</option>
				</c:forEach>
			</select>
			<select class="w3-select" name="p_start_minute">
				<option value="" disabled selected>분 단위를 선택해주세요</option>
				<c:forEach var="minute" varStatus="i" begin="0" end="59" step="1">
       				<option value="${minute}">${minute }분</option>
				</c:forEach>
			</select><br/><br/>
		</div>
		<div>
			<input type="submit" value="작성하기" class="btn btn-primary">
			<input type="button" value="목록보기" class="btn btn-warning" onclick="location.href='pboardList.do'">
		</div>
	</form>
</c:when>
<c:otherwise>
	<div>
		<h2><strong>앗! 아직 부스가 없으시군요. 먼저 부스 생성후 이용해주세요 :)</strong></h2>
		<br/><br/>
		<div>
			<input type="button" value="돌아가기" class="btn btn-primary" onclick="location.href='pboardList.do'">
			<input type="button" value="부스생성하기" class="btn btn-success" onclick="location.href='boothForm.do'">
		</div>
	</div>
</c:otherwise>
</c:choose>
</div>
	
<br/><br/>

<div align="center">
	<p><strong>항상 ShowHoney를 사랑해주셔서 감사합니다</strong></p>
	<br><p/>
	<a href="/core/" alt="홈으로"><i class="fas fa-landmark  fa-3x"></i></a>
	<br>
	홈으로 가기
	
</div>

</body>
</html>