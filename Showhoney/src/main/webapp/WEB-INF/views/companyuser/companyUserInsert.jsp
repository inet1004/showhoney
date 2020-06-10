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
	<h2>기업회원가입</h2>
	<!-- <form id="frm" name="frm" action="companyUserInsert.do" method="post">
		기업명 <input type="text" id="company_name" name="company_name"><br/>
		기업전화번호 <input type="text" id="company_phone" name="company_phone"><br/>
		기업주소 <input type="text" id="company_addr" name="company_addr"><br/>
		기업이메일 <input type="text" id="company_email" name="company_email"><br/>
		대표 성명 <input type="text" id="ceo_name" name="ceo_name"><br/>
		대표 핸드폰<input type="text" id="ceo_phone" name="ceo_phone"><br/>
		사업자 등록번호<input type="text" id="business_license_number" name="business_license_number"><br/>
		<br/>
		
		아이디 <input type="text" id="company_user_id" name="company_user_id"><br/>
		비밀번호 <input type="password" id="company_user_pw" name="company_user_pw"><br/>
		기업고유번호 <input type="text" id="company_no" name="company_no"><br/>
		  승인여부(히든처리필요) <input type="text" id="company_user_auth" name="company_user_auth"><br/>
		프로필사진  <input type="text" id="company_profile" name="company_profile"><br/>
		<button type="submit">가입하기</button>
		<button type="reset">다시작성</button>
	</form> -->
	
	<form id="frm" name="frm" action="companyUserInsert.do" method="post">
		아이디 <input type="text" id="company_user_id" name="company_user_id"><br/>
		비밀번호 <input type="password" id="company_user_pw" name="company_user_pw"><br/>
		기업고유번호 <input type="text" id="company_no" name="company_no"><br/>
		  <!-- 승인여부(히든처리필요) <input type="text" id="company_user_auth" name="company_user_auth"><br/> -->
		프로필사진  <input type="text" id="company_profile" name="company_profile"><br/>
		<button type="submit">가입하기</button>
		<button type="reset">다시작성</button>
	</form>
</body>
</html>