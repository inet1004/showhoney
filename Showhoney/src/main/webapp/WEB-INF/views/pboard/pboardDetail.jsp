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
<title>발표회 게시판</title>
<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<script>
	function test(){
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
		alert("수정되었습니다.");
		return true;
	}
	
	function deleteCheck(){
		var pno = ${pboard.p_no};
		var del;
		del = confirm("정말 삭제하시겠습니까 ?");
		if(del){
			location.href="pboardDelete.do?p_no="+pno;
			alert("삭제했습니다.");
		}else{
		}
	}
	
</script>
</head>
<body>
<h2 align="center">No. ${pboard.p_no }</h2><br>
	<div align="center">
	<c:choose>
	<c:when test="${pboard.company_user_id eq sessionScope.company_user_id }">
	<form id="frm" name="frm" action="pboardUpdate.do" method="post" onsubmit="return test()">
	<input type="hidden" name="p_no" value="${pboard.p_no }">
		제목 : <input type="text" id="p_title" name="p_title" value="${pboard.p_title}" size="50"><br/><br/>
		내용 : <textarea id="p_contents" name="p_contents" rows="3" cols="50">${pboard.p_contents}</textarea><br/>
		작성일자 : <input type="date" id="p_date" name="p_date" value="${pboard.p_date}" readonly style="color:gray" size="50"><br/>
		작성자 : <input type="text" value="${pboard.company_user_id}" readonly style="color:gray" size="50"><br/>
		박람회 : <input type="text" value="${pboard.exhibition_name}" readonly style="color:gray" size="50"><br/>
		부스 : <input type="text" value="${pboard.company_name}" readonly style="color:gray" size="50"><br/>
		예정날짜 : <input type="date" id="p_start_day" name="p_start_day" value="${pboard.p_start_day}" size="50"><br/>
		예정시간 : 
		<select class="w3-select" id="p_start_hour" name="p_start_hour">
			<option value="${pboard.p_start_hour }">${pboard.p_start_hour }시(기존)</option>
				<c:forEach var="hour" varStatus="i" begin="0" end="23" step="1">
       				<option value="${hour}">${hour }시</option>
				</c:forEach>
		</select> 
		<select class="w3-select" id="p_start_minute" name="p_start_minute">
			<option value="${pboard.p_start_minute }">${pboard.p_start_minute }분(기존)</option>
				<c:forEach var="minute" varStatus="i" begin="0" end="59" step="1">
       				<option value="${minute}">${minute }분</option>
				</c:forEach>
		</select>
		<br/><br/>
		<input type="button" class="btn btn-primary" onclick="location.href='pboardList.do'" value="목록">
		<input type="submit" class="btn btn-warning" value="수정">
		<input type="button" class="btn btn-danger" value="삭제" onclick="deleteCheck()">
	</form>
		<br/><br/>
		<p><strong>※ 부스와 박람회 부분은 수정이 불가능 하오니 삭제후 이용하십시오.</strong></p>
	</c:when>
	<c:otherwise>
		제목 : <input type="text" value="${pboard.p_title}" readonly size="50"><br/>
		내용 : <textarea readonly rows="3" cols="50">${pboard.p_contents}</textarea><br/>
		작성일자 : <input type="date" value="${pboard.p_date}" readonly size="50"><br/>
		작성자 : <input type="text" value="${pboard.company_user_id}" readonly size="50"><br/>
		박람회 : <input type="text" value="${pboard.exhibition_name}" readonly size="50"><br/>
		부스 : <input type="text" value="${pboard.company_name}" readonly size="50"><br/>
		예정날짜 : <input type="date" value="${pboard.p_start_day}" readonly size="50"><br/>
		예정시간 : <input type="text" value="${pboard.p_start_hour}시  ${pboard.p_start_minute}분" readonly size="50">
	
		<%-- 제목 : ${pboard.p_title} <br/>
		내용 : ${pboard.p_contents} <br/>
		작성일자 : ${pboard.p_date} <br/>
		작성자 : ${pboard.company_user_id} <br/>
		박람회 : ${pboard.exhibition_name} <br/>
		부스 :  ${pboard.company_name} <br/>
		예정날짜 : ${pboard.p_start_day} <br/>
		예정시간 : ${pboard.p_start_hour}시 ${pboard.p_start_minute}분 --%>
		<br/><br/>
		<div>
			<input type="button" class="btn btn-primary" onclick="location.href='pboardList.do'" value="목록">
		</div>
		
	</c:otherwise>
	</c:choose>
	</div>
	
<br/>

<div align="center">
	<p><strong>항상 ShowHoney를 사랑해주셔서 감사합니다</strong></p>
	<br><p/>
	<a href="/core/" alt="홈으로"><i class="fas fa-landmark  fa-3x"></i></a>
	<br>
	홈으로 가기
	
</div>

</body>
</html>