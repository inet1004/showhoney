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
	<h2>고객 목록</h2>
	<c:forEach var="customer" items="${list }">
		${customer.customer_id } &nbsp;&nbsp;&nbsp;
		${customer.customer_pw } &nbsp;&nbsp;&nbsp;
		${customer.customer_addr } &nbsp;&nbsp;&nbsp;
		${customer.customer_email } &nbsp;&nbsp;&nbsp;
		${customer.customer_name } &nbsp;&nbsp;&nbsp;
		${customer.customer_company_name } &nbsp;&nbsp;&nbsp;
		${customer.customer_phone } &nbsp;&nbsp;&nbsp;
		${customer.customer_profile } <br/>
		
		
	</c:forEach>
</body>
</html>