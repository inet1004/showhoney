<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>
Hello ~~~~ 여기가 홈이야
홈입니다 updatedsffdgsdg
df
<p>

<a href="customerList.do">고객목록</a><br/>
<a href="customerJoin.do">고객회원가입</a><br/>
<a href="companyInsertForm.do">기업정보등록</a><br/>
<a href="companyList.do">기업목록</a><br/>
<a href="companyUserList.do">기업회원목록</a><br/>
<a href="companyuserJoin.do">기업회원가입</a><br/>
<br/><br/><br/>
<h2>(공사중)관리자 페이지</h2>
<a href="adminManage.do">관리자 페이지</a><br/>
<a href="adminManageList.do">기업관리</a><br/>
<a href="adminPresentation.do">발표회관리</a><br/>
<a href="adminExhibitionManage.do">박람회관리</a><br/>
<a href="ExhibitionInsertForm.do">박람회등록</a><br/>
<a href="CouponList.do">쿠폰리스트</a><br/>
<a href="exhibitionList.do">박람회 목록</a><br/>
<a href="ticketList.do">티켓리스트</a><br/>
<a href="pay.do">결제하러가기</a><br>
<a href="like.do">좋아요</a><br>
<a href="customerPaymentDetails.do">결제내역</a>
<br>
<a href="companyUserInfo.do">기업고객정보보기</a><br>
<a href="customerUserInfo.do">고객정보보기</a><br>
<a href="adminAsk.do">관리자 메일 보내기</a>
</body>

<br><p/>
<br><p/>

<% if(session.getAttribute("customer_id")!=null){ //세션이 설정되지 않을 경우 %>
	<form method="post" action="logout.do">
		[고객회원] <%=session.getAttribute("customer_id") %>님 환영합니다~~~
		<input type="submit" value="로그아웃" /> <br><p/>기업 로그인은 고객 로그아웃하여야 합니다.
	</form>
<% }else if(session.getAttribute("company_user_id")!=null){ %>
	<form method="post" action="logout.do">
		[기업회원] <%=session.getAttribute("company_user_id") %>님 환영합니다~~~
		<input type="submit" value="로그아웃" /> <br><p/>고객회원 로그인은 기업 로그아웃하여야 합니다.
	</form>
<% } else { %>
<a href="snslogin.do">고객 로그인</a> <a href="loginCom.do">기업 로그인</a>
<% } %>	
</body>
</html>