<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="/core" class="w3-bar-item w3-button w3-wide">SHOWHONEY</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="exhibitionList.do" class="w3-bar-item w3-button">박람회</a>
<<<<<<< HEAD

      <a href="pboardList.do" class="w3-bar-item w3-button">발표회</a>




      <a href="ticketList.do" class="w3-bar-item w3-button"> 티켓구매하기</a>

=======
       <a href="https://192.168.0.109:9001/demos/dashboard/" target="_blank" class="w3-bar-item w3-button">발표회</a>
      <a href="ticketList.do" class="w3-bar-item w3-button"> 티켓구매하기</a>
>>>>>>> branch 'master' of https://github.com/inet1004/showhoney
      <a href="/core/room" class="w3-bar-item w3-button"> 채팅문의</a>
      <a href="ask.do" class="w3-bar-item w3-button"> 문의하기</a>
      <a href="myPage.do" class="w3-bar-item w3-button"> 내정보</a>
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
  <a href="exhibitionList.do" onclick="w3_close()" class="w3-bar-item w3-button">박람회</a>
  <a href="pboardList.do" onclick="w3_close()" class="w3-bar-item w3-button"> 발표회</a>
  <a href="ticketList.do" onclick="w3_close()" class="w3-bar-item w3-button"> 티켓구매하기</a>
  <a href="/core/room" onclick="w3_close()" class="w3-bar-item w3-button"> 채팅문의</a>
  <a href="ask.do" onclick="w3_close()" class="w3-bar-item w3-button"> 문의하기</a>
  <a href="myPage.do" onclick="w3_close()" class="w3-bar-item w3-button"> 내정보</a>
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
