<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/5.0.11/css/font-awesome.min.css">
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%
}
.logo{
	margin-left: 2%
}

.top {
	text-align: right;
	font-size: large;
	margin-right: 5%;
	margin-top: 3%;
}

.bgimg::after{
	min-height: 100%;
	background-position: center;
}

.bgimg {
	background-image: url('img/info/info2.png');
	min-height: 100%;
	background-position: center;
	background-size: cover;
 
	
}

.button {
	margin: auto;
	margin-top: 5%;
	width: 80%;
	font-size: Xlarge;
}

.div{
	background-color: #000000;
	margin : center;
	width: 40%;
	height: 50%;
	opacity: 0.5;

}
</style>
<title>Info</title>
<body>
	<div class="bgimg w3-display-container w3-animate-opacity w3-text-black">
		<div class="logo row w3-display-topleft w3-padding-large w3-xxlarge">
			<h1>SHOW HONEY</h1>
		</div>
			<div class="top col-md-4 col-md-offset-4 w3-hide-small w3-right ">
				<a href="#로그인" class="w3-bar-item w3-button w3-right"><b>로그인</b></a> 
				<a href="#회원가입" class="w3-bar-item w3-button w3-right"><b>회원가입</b></a>
				<a href="#문의사항" class="w3-bar-item w3-button w3-right"><b>문의사항</b></a>
			</div>
		
		<div class="row w3-display-middle div">
			<i class="fas fa-user fa-7x"></i>
			<i class="fas fa-user-tie fa-7x"></i>
		</div>
	</div>
	
	
</body>
</html>
