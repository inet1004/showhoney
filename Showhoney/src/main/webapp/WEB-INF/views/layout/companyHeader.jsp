<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
function myFunction() {
  var x = document.getElementById("Demo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

function openNav() {
	  var x = document.getElementById("navDemo");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else { 
	    x.className = x.className.replace(" w3-show", "");
	  }
	}

</script>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="exhibitionList.do" class="w3-bar-item w3-button w3-wide">SHOWHONEY</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="exhibitionList.do" class="w3-bar-item w3-button">박람회</a>
      <a href="boothList.do?company_no=${company_no }" class="w3-bar-item w3-button">MY부스</a>
      <a href="pboardList.do" class="w3-bar-item w3-button">발표회</a>
      <a href="/core/room" class="w3-bar-item w3-button">채팅상담</a>
      <a href="ask.do" class="w3-bar-item w3-button">문의사항</a>
      <a href="#" class="w3-bar-item w3-button" ><b>${company_user_id}님!</b></a>
      <div class="w3-dropdown-hover">
      <a class="w3-bar-item w3-button" style="padding-right: 100px;"><i class="fas fa-cog"></i></a>     
	    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
	      <a href="companyUserInfo.do" class="w3-bar-item w3-button">기업정보 수정</a>
	      <a href="boothList.do?company_no=${company_no }" class="w3-bar-item w3-button">MY BOOTH</a>
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
  <a href="companyInfo.do" onclick="w3_close()" class="w3-bar-item w3-button">${company_user_id }님 !</a>
  <hr style="color:white;">
  <a href="exhibitionList.do" onclick="w3_close()" class="w3-bar-item w3-button">박람회</a>
  <a href="boothList.do" onclick="w3_close()" class="w3-bar-item w3-button">MY부스</a>
  <a href="pboardList.do" onclick="w3_close()" class="w3-bar-item w3-button">발표회</a>
  <a href="/core/room" onclick="w3_close()" class="w3-bar-item w3-button">채팅상담</a>
  <a href="ask.do" onclick="w3_close()" class="w3-bar-item w3-button">문의사항</a>
  <a href="companyUserInfo.do" onclick="w3_close()" class="w3-bar-item w3-button">기업정보수정</a>
  <a href="logout.do" onclick="w3_close()" class="w3-bar-item w3-button">로그아웃</a>
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

