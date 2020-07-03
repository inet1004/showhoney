<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
        <a href="#" class="w3-bar-item w3-button" ><b>${customer_id}님!</b></a>
      <div class="w3-dropdown-hover">
      <a class="w3-bar-item w3-button" style="padding-right: 100px;"><i class="fas fa-cog"></i></a>     
	    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
	      <a href="companyUserInfo.do" class="w3-bar-item w3-button">내 정보수정</a>
	      <a href="boothList.do?company_no=${company_no }" class="w3-bar-item w3-button">찜한부스</a>
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
  <a href="myPage.do" onclick="w3_close()" class="w3-bar-item w3-button">${customer_id}님!</a>
  <hr style="color:white;">
  <a href="exhibitionList.do" onclick="w3_close()" class="w3-bar-item w3-button">박람회</a>
  <a href="pboardList.do" onclick="w3_close()" class="w3-bar-item w3-button"> 발표회</a>
  <a href="ticketList.do" onclick="w3_close()" class="w3-bar-item w3-button"> 티켓구매하기</a>
  <a href="ask.do" onclick="w3_close()" class="w3-bar-item w3-button"> 문의하기</a>
  <a href="customerUserInfo.do" onclick="w3_close()" class="w3-bar-item w3-button"> 내 정보수정</a>
  <a href="#" onclick="w3_close()" class="w3-bar-item w3-button"> 찜한부스</a>
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
