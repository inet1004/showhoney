<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>
Hello ~~~~ 여기가 홈이야
홈입니다 updatedsffdgsdg
df
<p>

<!-- <a href="boardList.do">게시판</a>  -->
<a href="customerList.do">고객목록</a>
<a href="customerInsertForm.do">회원가입</a>
<a href="login.do">로그인</a>



<% if(session.getAttribute("customer_id")==null){ //세션이 설정되지 않을 경우 %>
<a href="login.do">로그인</a>
<% }else{ %>
<form method="post" action="logout.jsp">
	<%=session.getAttribute("customer_id") %>님 환영합니다~
	<input type="submit" value="로그아웃" />
</form>
<% } %>


	
</body>


</html>