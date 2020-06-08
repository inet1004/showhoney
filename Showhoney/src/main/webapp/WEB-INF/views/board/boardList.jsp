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
	<c:forEach var="board" items="${list }">
		${board.boardId } &nbsp;&nbsp;&nbsp;
		${board.writer } &nbsp;&nbsp;&nbsp;
		${board.wDate } &nbsp;&nbsp;&nbsp;
		${board.title } &nbsp;&nbsp;&nbsp;
		${board.contents } &nbsp;&nbsp;&nbsp;
		${board.hit } &nbsp;&nbsp;&nbsp;
		${board.fileName } <br/>
		
		
	</c:forEach>
</body>
</html>