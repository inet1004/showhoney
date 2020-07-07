<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 
 
 
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
}

.w3-bar .w3-button {
  padding: 16px;
}
</style>
 
 
 
 
<style>
.profile-ava {

    border-radius: 50%;

    -webkit-border-radius: 50%;

    border: 2px solid #688a7e;

    display: inline-block;
}
</style>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar" style="line-height:3;">
    <a href="exhibitionList.do" class="w3-bar-item w3-button w3-wide">SHOWHONEY</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="exhibitionList.do" class="w3-bar-item w3-button">박람회</a>
      <a href="pboardList.do" class="w3-bar-item w3-button">발표회</a>
      <a href="ticketList.do" class="w3-bar-item w3-button"> 티켓구매하기</a>
      <a href="ask.do" class="w3-bar-item w3-button"> 문의하기</a>
      <c:choose>
      	<c:when test="${not empty customer_profile }">
      		<a href="#" class="w3-bar-item w3-button" ><img src="<spring:url value='/resources/FileUpload/customerProfile/${customer_profile }'/>" class="profile-ava" style="width:50px;height:50px">&nbsp;<b>${customer_id}님!</b></a>
      	</c:when>
      	<c:otherwise>
      		<a href="#" class="w3-bar-item w3-button" ><img src="<spring:url value='/resources/FileUpload/customerProfile/noprofile.jpg'/>" class="profile-ava" style="width:50px;height:50px">&nbsp;<b>${customer_id}님!</b></a>
      	</c:otherwise>
      </c:choose>
      <div class="w3-dropdown-hover">
      <a class="w3-bar-item w3-button" style="padding-right: 100px;"><i class="fas fa-cog"></i></a>     
	    
	    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
	      <a href="customerUserInfo.do" class="w3-bar-item w3-button">내 정보수정</a>
      <a href="ask.do" class="w3-bar-item w3-button"> 문의하기</a>
      <a href="customerPaymentDetails.do" class="w3-bar-item w3-button">결제내역</a>
	      <a href="logout.do" class="w3-bar-item w3-button"> LOGOUT </a>
	    </div>
	  </div>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <c:choose>
  	<c:when test="${not empty customer_profile }">
  		<a href="myPage.do" onclick="w3_close()" class="w3-bar-item w3-button"><img src="<spring:url value='/resources/FileUpload/customerProfile/${customer_profile }'/>" class="profile-ava" style="width:50px;height:50px">&nbsp;${customer_id}님!</a>
  	</c:when>
  <c:otherwise>
  	<a href="myPage.do" onclick="w3_close()" class="w3-bar-item w3-button"><img src="<spring:url value='/resources/FileUpload/customerProfile/noprofile.jpg'/>" class="profile-ava" style="width:50px;height:50px">&nbsp;${customer_id}님!</a>
  </c:otherwise>
  </c:choose>
  <hr style="color:white;">
  <a href="exhibitionList.do" onclick="w3_close()" class="w3-bar-item w3-button">박람회</a>
  <a href="pboardList.do" onclick="w3_close()" class="w3-bar-item w3-button"> 발표회</a>
  <a href="ticketList.do" onclick="w3_close()" class="w3-bar-item w3-button"> 티켓구매하기</a>
  <a href="ask.do" onclick="w3_close()" class="w3-bar-item w3-button"> 문의하기</a>
  <a href="customerUserInfo.do" onclick="w3_close()" class="w3-bar-item w3-button"> 내 정보수정</a>
  <a href="ask.do" onclick="w3_close()" class="w3-bar-item w3-button"> 문의하기</a>
  <a href="logout.do" onclick="w3_close()" class="w3-bar-item w3-button"> LOGOUT </a>
</nav>

<script>

// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
  } else {
    mySidebar.style.display = 'block';
  }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>
