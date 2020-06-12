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
<!-- 기업 정보 -->
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
			
			<div class="row" style="margin-left:30%; margin-top:10%">
				<div class="col-md-pull-3">
					<label for="companyname">기업이름</label>
				</div>
				<div class="col-md-6">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for="">업 태</label>
				</div>
				<div class="col-md-6" style="margin-left:5%;">
					 <input class="w3-input w3-border w3-round-large" name="last" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for=" ">사업자<br>등록번호</label>
				</div>
				<div class="col-md-6">
					 <input class="w3-input w3-border w3-round-large" name="last" type="text" style=" height: 100%;">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for=" ">전화번호</label>
				</div>
				<div class="col-md-6">
					 <input class="w3-input w3-border w3-round-large" name="last" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3" >
					<label for=" ">대표자</label>
				</div>
				<div class="col-md-6" style="margin-left:3%;">
					 <input class="w3-input w3-border w3-round-large" name="last" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for=" ">기업주소</label>
				</div>
				<div class="col-md-6">
					 <input class="w3-input w3-border w3-round-large" name="last" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for=" ">이메일</label>
				</div>
				<div class="col-md-6" style="margin-left:3%;">
					 <input class="w3-input w3-border w3-round-large" name="last" type="text">
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

<!-- 기업 ID, PW  -->

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
			
			<div class="row text-center" style="margin-left:20%; margin-top:10%">
				<div class="col-md-2">
					<label for="companyname">기업ID</label>
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
					<label for="companyname">기업PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">이 름</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:5%">
				<div class="col-md-2">
					<label for="companyname">기업ID</label>
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
					<label for="companyname">기업PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">이 름</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:5%">
				<div class="col-md-2">
					<label for="companyname">기업ID</label>
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
					<label for="companyname">기업PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">이 름</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:5%">
				<div class="col-md-2">
					<label for="companyname">기업ID</label>
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
					<label for="companyname">기업PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">이 름</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:5%">
				<div class="col-md-2">
					<label for="companyname">기업ID</label>
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
					<label for="companyname">기업PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="password">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">이 름</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
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