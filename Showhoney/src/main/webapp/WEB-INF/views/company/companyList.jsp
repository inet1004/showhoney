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
	<h2>회사 목록</h2>
	<c:forEach var="company" items="${list }">
		${company.company_no} &nbsp;&nbsp;&nbsp;
		${company.company_name } &nbsp;&nbsp;&nbsp;
		${company.company_phone } &nbsp;&nbsp;&nbsp;
		${company.company_addr } &nbsp;&nbsp;&nbsp;
		${company.company_email } &nbsp;&nbsp;&nbsp;
		${company.ceo_name } &nbsp;&nbsp;&nbsp;
		${company.ceo_phone } &nbsp;&nbsp;&nbsp;
		${company.business_license_number }<br/>
		
		
		
	</c:forEach>
</body>
</html>