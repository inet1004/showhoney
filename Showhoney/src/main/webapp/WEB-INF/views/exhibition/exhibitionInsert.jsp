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
<br><br>
	<form id="frm" name="frm" action="ExhibitionInsert.do" method="post"><br><br>
		박람회 시작 일자 <input type="date" id="exhibition_start_date" name="exhibition_start_date"><br/>
		박람회 종료 일자 <input type="date" id="exhibition_end_date" name="exhibition_end_date"><br/>
		박람회 이름 <input type="text" id="exhibition_name" name="exhibition_name"><br/>
		<button type="submit">등록하기</button>
		<button type="reset">다시작성</button>
	</form>
</body>
</html>