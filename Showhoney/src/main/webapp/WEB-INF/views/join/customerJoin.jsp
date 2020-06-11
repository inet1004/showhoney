<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>Insert title here</title>
<style>
.frm {
	background-color: rgb(250, 250, 250);
	margin: center;
	width: 50%;
}

.logo{
	width: 50%;
	hieght: 20%;
}

label {
	font-size: 18px;
	font-weight:bold;
}

.button {
	width: 20%;
	height: 130%;
	font-size: 18px;
}

</style>
</head>
<body>

<form id="" name="" method="post" action="">
<!-- 개인회원가입 -->
<div align="center">
		<div class="frm">
		<div class="row">
			<div class="col-md-2" style="margin-top: 5%;">
				<i class="far fa-arrow-alt-circle-left fa-3x"></i>
			</div>
			<div class="col-md-pull-10" style="margin-top: 5%">
				<img src="img/info/logo.png" class="logo">
			</div>	
		</div>	
			<div class="col">1-2</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:10%">
				<div class="col-md-2">
					<label for="companyname">ID</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
				</div>
				<div class="col-md-2">
					<button type="button" class="btn btn-outline-dark">중복확인</button>
				</div>		
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">PW확인</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">이 름</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">이메일</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">전화번호</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">주 소</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">직 장</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			
				
		<div class="row">
			<div class="col text-center" style="margin-top:10%; margin-bottom: 35%" >
					<button class="btn btn-outline-danger button" type="reset">다시작성</button>
					<button class="btn btn-outline-info button" type="button">다 음</button>
				</div>
			</div>		
	</div>
</div>
</form>

</body>
</html>