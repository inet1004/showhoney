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
	<c:forEach var="admin" items="${list }">
		기업번호:${admin.company_no } &nbsp;&nbsp;&nbsp;
		기업이름:${admin.company_name } &nbsp;&nbsp;&nbsp;
		기업전화번호:${admin.company_phone } &nbsp;&nbsp;&nbsp;
		기업주소:${admin.company_addr } &nbsp;&nbsp;&nbsp;
		기업이메일:${admin.company_email } &nbsp;&nbsp;&nbsp;
		기업대표:${admin.ceo_name } &nbsp;&nbsp;&nbsp;
		기업대표휴대폰:${admin.ceo_phone } &nbsp;&nbsp;&nbsp;
		사업자번호:${admin.business_license_number } &nbsp;&nbsp;&nbsp;
		기업회원아이디:${admin.company_user_id } &nbsp;&nbsp;&nbsp;
		기업회원비번:${admin.company_user_pw } &nbsp;&nbsp;&nbsp;
		기업회원권한:${admin.company_user_auth } &nbsp;&nbsp;&nbsp;
		기업회원프사:${admin.company_profile } &nbsp;&nbsp;&nbsp;
		<br/><br/>
		
	</c:forEach>
</body>
</html>