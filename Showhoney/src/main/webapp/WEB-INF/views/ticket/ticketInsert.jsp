<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<script>
	function ticketTest(){
		if(!document.frm.ticket_price.value){
			alert("가격을 입력해주세요");
			document.frm.ticket_price.focus();
			return false;
		}
		
		if(!document.frm.ticket_status.value){
			alert("티켓상태를 입력해주세요");
			document.frm.ticket_status.focus();
			return false;
		}
		
		if(!document.frm.ticket_name.value){
			alert("티켓이름을 입력해주세요");
			document.frm.ticket_name.focus();
			return false;
		}		
		
		alert("티켓등록이 완료 되었습니다.");
		return true;
	}
</script>
<br><br>
<div align="center">
	<form id="frm" name="frm" action="ticketInsert.do" method="post" onsubmit="return ticketTest()"><br><br>
		티켓가격 <input type="text" id="ticket_price" name="ticket_price"><br/>
		티켓상태 <input type="text" id="ticket_status" name="ticket_status"><br/>
		박람회번호 <input type="text" id="exhibition_no" name="exhibition_no" value="${admin.exhibition_no}" readonly><br/>
		티켓이름 <input type="text" id="ticket_name" name="ticket_name"><br/>
		<button type="submit">등록하기</button>
		<button type="reset">다시작성</button>
	</form>
</div>
</body>
</html>