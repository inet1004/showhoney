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
	<h2>기업 회원 목록</h2>
	<c:forEach var="companyuser" items="${list }">
		${companyuser.company_user_id } &nbsp;&nbsp;&nbsp;
		${companyuser.company_user_pw } &nbsp;&nbsp;&nbsp;
		${companyuser.company_no } &nbsp;&nbsp;&nbsp;
		${companyuser.company_user_auth } &nbsp;&nbsp;&nbsp;
		${companyuser.company_profile } &nbsp;&nbsp;&nbsp;
		<br/>
		
		
	</c:forEach>
</body>
</html>