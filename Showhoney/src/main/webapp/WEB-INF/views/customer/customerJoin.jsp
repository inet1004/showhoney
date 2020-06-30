<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>info</title>

<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<style>
body, h1 {
	font-family: "Raleway", sans-serif;
}

a {
	font-size: 20px;
	font-color: black;
}

.frm {
	background-color: rgb(250, 250, 250);
	margin-top: 10%;
}

.logo {
	width: 50%;
	hieght: 20%;
}

.button {
	width: 20%;
	height: 130%;
	font-size: 18px;
}
</style>
<script>
var checkval = true;

function check(re, what, message) {
	   if(re.test(what.value)) {
	       return true;
	   }
	   alert(message);
	   what.value = "";
	   what.focus();
	   //return false;
}

$(function(){
	function check(re, what, message) {
		   if(re.test(what.value)) {
		       return true;
		   }
		   alert(message);
		   what.value = "";
		   what.focus();
		   //return false;
		}	
			
	$('#customer_id').change(function() {
		
					var re = /^[a-zA-Z0-9]{4,12}$/ 
					var id =  document.getElementById("customer_id");
					
						if(!check(re,id,"아이디는 4~12자의 영문 대소문자와 숫자로만 입력")) {
					    	 return false;
							//checkval = false
					       }
					
						var customer_id = $('#customer_id').val();
						$.ajax({
							url : '${pageContext.request.contextPath}/customer/idCheck.do?customer_id='
									+ customer_id,
							type : 'get',
							success : function(data) {
								console.log("1 = 중복o / 0 = 중복x : " + data);

								if (data == 1) {
									$("#id_check").text("사용중인 아이디입니다 :(");
									$("#id_check").css("color", "red");
									//$("#reg_submit").attr("disabled", true);
									
								} else if(customer_id == "") {
									$('#id_check').text('아이디를 입력해주세요 :)');
									$('#id_check').css('color', 'red');
									
									
								} else {
									$("#id_check").text("멋진 아이디네요! :)");
									$("#id_check").css("color", "green");
									
								
								} 

							},
							error : function() {
								console.log("실패");

							}
						})
					})
})

//고객 비밀번호 체크
	function pwtypecheck() {
		var pw = $("#customer_pw").val();
		var pwtype = /^[a-zA-Z0-9]{6,12}$/;
		
		if(pw == '' || !pwtype.test(pw)) {
			$('#pwblur').html("6~20자 영문자 또는 숫자 입력.");
			$('#pwblur').css("color", "red");
			checkval = false
		} else {
			$('#pwblur').html("좋아요 :)");
			$('#pwblur').css("color", "green");
			checkval = true
		}
			
	}
	
	function pwcheck(){
		var pwck = $("#customer_pw").val();
		var pw = $("#customer_pwcheck").val();
		
		if(pw != '' && pwck == pw){
			$('#pwblurck').html("비밀번호 일치");
			$('#pwblurck').css("color", "green");
			checkval = true
		}else{
			$('#pwblurck').html("비밀번호 불일치");
			$('#pwblurck').css("color", "red");
			checkval = false
		}
	}
	
	//고객 이메일 체크
	function emailcheck(){
	var email = $("#customer_email").val();
	var emailRule = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if(email != ""){
		if(!emailRule.test(email)){
			$("#emailblur").html("ex) abcd1234@naver.com")
			$('#emailblur').css("color", "red");
			checkval = false
		}else{
			$("#emailblur").html("사용 가능한 이메일입니다.")
			$('#emailblur').css("color", "green");
			checkval = true
		}
	}
}
	
	function infocheck() {

		if (checkval == false) {
			alert("조건을 정확히 입력해주세요");
			return false;
		} else {
			return true;
		}
	}

	
</script>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">SHOWHONEY</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link" href="info.do">HOME</a></li>
					<li class="nav-item"><a class="nav-link" href="">문의사항</a></li>
					<li class="nav-item"><a class="nav-link" href="">로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header -->
	<header class="d-flex">
		<div class="container text-center my-auto">
			<form id="frm" name="frm" method="post" action="customerInsert.do"
				enctype="multipart/form-data" onsubmit="return infocheck()">
				<div class="frm">

					<div class="row">
						<div class="col-md-2 col-sm-2" style="margin-top: 5%;">
							<i class="far fa-arrow-alt-circle-left fa-3x"></i>
						</div>
						<div class="col-md-8 col-xs-8" style="margin-top: 5%">
							<img src="img/info/logo.png" class="logo">
						</div>
					</div>

					<div class="row text-center"style="margin-left: 20%; margin-top: 10%">
						<div class="col-md-2">
							<label for="customer_id">ID</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_id" name="customer_id" type="text" placeholder="ID" required>
						</div>
					</div>
					
					<div class="row text-center">
							<div class="check_font" style="margin-left:40%" id="id_check"></div>
						</div>

					<div class="row text-center" style="margin-left: 20%; margin-top: 2%">
						<div class="col-md-2">
							<label for="customer_pw">PW</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_pw" name="customer_pw" type="password" placeholder=" 비밀번호" required required onblur="pwtypecheck()">
							<span class="help-block" id="pwblur"></span> 
						</div>
					</div>

					<div class="row text-center" style="margin-left: 20%; margin-top: 2%">
						<div class="col-md-2">
							<label for="customer_pwcheck">PW확인</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_pwcheck" name="customer_pwcheck" type="password" placeholder="비밀번호를 확인하세요" required onblur="pwcheck()">
							<span class="help-block" id="pwblurck"></span>
						</div>
					</div>

					<div class="row text-center"
						style="margin-left: 20%; margin-top: 2%">
						<div class="col-md-2">
							<label for="customer_name">이 름</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_name" name="customer_name" type="text" placeholder="이름">
						</div>
					</div>

					<div class="row text-center"
						style="margin-left: 20%; margin-top: 2%">
						<div class="col-md-2">
							<label for="customer_email">이메일</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_email" name="customer_email" type="text" placeholder="E-mail" onblur="emailcheck()">
							<span class="help-block" id="emailblur"></span>
						</div>
					</div>

					<div class="row text-center" style="margin-left: 20%; margin-top: 2%">
						<div class="col-md-2">
							<label for="customer_phone">전화번호</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_phone" name="customer_phone" type="text" placeholder="전화번호">
						</div>
					</div>

					<div class="row text-center" style="margin-left: 20%; margin-top: 2%">
						<div class="col-md-2">
							<label for="customer_addr">주 소</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_addr" name="customer_addr" type="text" placeholder="주소">
						</div>
					</div>

					<div class="row text-center"
						style="margin-left: 20%; margin-top: 2%">
						<div class="col-md-2">
							<label for="customer_company_name">직 장</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_company_name" name="customer_company_name"
								type="text" placeholder="직장">
						</div>
					</div>

					<div class="row text-center" style="margin-left: 20%; margin-top: 2%">
						<div class="col-md-2">
							<label for="customer_profile">프로필 사진</label>
						</div>
						<div class="col-md-5">
							<input class="w3-input w3-border w3-round-large" id="customer_profile" name="uploadFile" type="file">
						</div>
					</div>


					<div class="row">
						<div class="col text-center"
							style="margin-top: 10%; margin-bottom: 35%">
							<button class="btn btn-outline-danger button" type="reset">다시작성</button>
							<button class="btn btn-outline-info button" type="submit">완 료</button>
						</div>
					</div>

				</div>
			</form>

		</div>
	</header>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
