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
	<form id="frm" name="frm" action="customerInsert.do" method="post">
		아이디 <input type="text" id="customer_id" name="customer_id"><br/>
		비밀번호 <input type="text" id="customer_pw" name="customer_pw"><br/>
		주소 <input type="text" id="customer_addr" name="customer_addr"><br/>
		이메일 <input type="text" id="customer_email" name="customer_email"><br/>
		이름 <input type="text" id="customer_name" name="customer_name"><br/>
		회사 <input type="text" id="customer_company_name" name="customer_company_name"><br/>
		핸드폰 <input type="text" id="customer_phone" name="customer_phone"><br/>
		프로필사진  <input type="text" id="customer_profile" name="customer_profile"><br/>
		<button type="submit">가입하기</button>
		<button type="reset">다시작성</button>
	</form>
</body>
</html>