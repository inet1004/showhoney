<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>




	 <%
        String navername = request.getParameter("navername");
        String kakaonickname = request.getParameter("kakaonickname");
        
        session.setAttribute("navername", navername);
        session.setAttribute("kakaonickname", kakaonickname);
        
        
        if (navername == null && kakaonickname == null) {
    %>
        guest님 방문을 환영합니다.
    <%@ include file="login.jsp"%>
    
    <%
        } else if (navername != null){
    %>
    <%=" (네이버) "+session.getAttribute("navername")%>님 방문을 환영합니다.
    <form action ="naver_logout.do" method = "post">
    <button type = "submit" name = "submit" >로그아웃</button>
    </form>
    
    <%    
        } else if (kakaonickname != null){
    %>
    
    <%=" (카카오톡) "+session.getAttribute("kakaonickname")%>님 방문을 환영합니다.
    
    <form action = "kakao_logout.do" method = "post">
    <button type = "submit" name = "submit">로그아웃</button></form>
    
    <%
        };
        
    %>





</body>
</html>