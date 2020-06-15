<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
  font-family: "Raleway", sans-serif;
}

.w3-bar .w3-button {
  padding: 16px;
}
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">SHOWHONEY</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">회원가입승인</a>
      <a href="#team" class="w3-bar-item w3-button">박람회관리</a>
      <a href="#work" class="w3-bar-item w3-button">부스관리</a>
      <a href="#pricing" class="w3-bar-item w3-button">발표회관리</a>
      <a href="#contact" class="w3-bar-item w3-button">티켓관리</a>
      <a href="#contact" class="w3-bar-item w3-button">문의사항</a>
      <a href="#contact" class="w3-bar-item w3-button">admin</a>
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
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">회원가입승인</a>
  <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">박람회관리</a>
  <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">부스관리</a>
  <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">발표회관리</a>
  <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">티켓관리</a>
 <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">문의사항</a>
 <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">admin</a>
</nav>


<script>
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

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


</body>
</html>