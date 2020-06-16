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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">

<!-- jq -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script>
	$(function(){
		$('#next').click(function(){
			$('.content1').hide()
			$('.content2').show()
		})

	})
	function back1(){
		history.go(-1)
	}
	
	function back2() {
	$('.content2').hide()
	$('.content1').show()
	}
</script>
<style>
body, h1 {
	font-family: "Raleway", sans-serif;

}

a{
	font-size: 20px;
	font-color: black;
}

.frm {
	background-color: rgb(250, 250, 250);
	margin-top:10%;
}

.logo{
	width: 50%;
	hieght: 20%;
}

.button {
	width: 20%;
	height: 130%;
	font-size: 18px;
}

.content2{
	display: none;
}
</style>
<script>
$(function(){
	$('#company_user_id, #company_user_id2, #company_user_id3').blur(function() {
						var compny_user_id = $(this).val();
						var check = $(this).closest(".row").next().find("div")
						$.ajax({
							url : '${pageContext.request.contextPath}/companyUser/idCheck.do?company_user_id='
									+ compny_user_id,
							type : 'get',
							success : function(data) {
								console.log("1 = 중복o / 0 = 중복x : " + data);

								if (data == 1) {
									check.text("사용중인 아이디입니다 :(");
									check.css("color", "red");

								} else if(compny_user_id == "") {
									check.text('아이디를 입력해주세요 :)');
									check.css('color', 'red');
									
								} else {
									check.text("멋진 아이디네요! :)");
									check.css("color", "green");
								
								} 

							},
							error : function() {
								console.log("실패");

							}
						})
					})
})
</script>

</head>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">SHOWHONEY</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                    	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="info.do">HOME</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="">문의사항</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="">로그인</a></li>
                    </ul>
                </div>
            </div>
        </nav>
      				
      				   <!-- 기업 정보 -->
	  <!-- Header -->
<header class="d-flex">
 
  	<div class="container text-center my-auto">
  <form id="frm" name="frm" method="post" action="companyUserInsert.do" enctype="multipart/form-data">

			<div class="frm content1" >
			
				<div class="row">
					<div class="col-md-2 col-sm-2" style="margin-top: 5%;">
						<i class="far fa-arrow-alt-circle-left fa-3x" onclick="back1()"></i>
					</div>
					<div class="col-md-8 col-xs-8" style="margin-top: 5%">
						<img src="img/info/logo.png" class="logo">
					</div>	
				</div>
				
			<div class="row" style="margin-left:30%; margin-top:10%">
				<div class="col-md-pull-3">
					<label for="company_name">기업명</label>
				</div>
				<div class="col-md-6" style="margin-left:5%;">
					 <input class="w3-input w3-border w3-round-large" id="company_name" name="company_name" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for="business_license_number">사업자<br>등록번호</label>
				</div>
				<div class="col-md-6" style="margin-left:3%;">
					 <input class="w3-input w3-border w3-round-large" name="business_license_number" id="business_license_number" type="text" style=" height: 100%;">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for="company_phone">기업 전화번호</label>
				</div>
				<div class="col-md-6">
					 <input class="w3-input w3-border w3-round-large" name="company_phone" id="company_phone" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3" >
					<label for="ceo_name">CEO이름</label>
				</div>
				<div class="col-md-6" style="margin-left:3%;">
					 <input class="w3-input w3-border w3-round-large" name="ceo_name" id="ceo_name" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for="ceo_phone">CEO Phone</label>
				</div>
				<div class="col-md-6" style="margin-left:%;">
					 <input class="w3-input w3-border w3-round-large" name="ceo_phone" id="ceo_phone" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for="company_addr">기업주소</label>
				</div>
				<div class="col-md-6">
					 <input class="w3-input w3-border w3-round-large" name="company_addr" id="company_addr" type="text">
				</div>
			</div>
			
			<div class="row" style="margin-left:30%; margin-top:2%">
				<div class="col-md-pull-3">
					<label for="company_email">이메일</label>
				</div>
				<div class="col-md-6" style="margin-left:3%;">
					 <input class="w3-input w3-border w3-round-large" name="company_email" id="company_email" type="text">
				</div>
			</div>
				
		<div class="row">
			<div class="col text-center" style="margin-top:10%; margin-bottom: 35%" >
					<button class="btn btn-outline-danger button" type="reset">다시작성</button>
					<button class="btn btn-outline-info button p" id="next" type="button">다 음</button>
				</div>
			</div>		
	    </div>
	    
	  <!-- 기업 id, pw -->		
	    	<div class="frm content2" >
	    	
				<div class="row">
					<div class="col-md-2 col-sm-2" style="margin-top: 5%;">
						<i class="far fa-arrow-alt-circle-left fa-3x back2" onclick="back2()"></i>
					</div>
					<div class="col-md-8 col-xs-8" style="margin-top: 5%">
						<img src="img/info/logo.png" class="logo">
					</div>	
				</div>
				
				<div class="row text-center" style="margin-left:20%; margin-top:10%">
				<div class="col-md-2">
					<label for="company_profile">기업 프로필</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_profile" name="uploadFile" type="file">
				</div>	
			</div>
			
				<div class="row text-center" style="margin-left:20%; margin-top:10%">
				<div class="col-md-2">
					<label for="company_user_id">기업ID</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_id" name="company_user_id" type="text">
				</div>
				</div>
				
				<div class="row text-center">
					<div class="check_font" style="margin-left:40%" id="id_check"></div>
				</div>		
			
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="company_user_pw">기업PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_pw" name="company_user_pw" type="password">
				</div>
			</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="company_user_pwck">PW 확인</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_pwck" name="company_user_pwck" type="password">
				</div>
			</div>
			
	  <!-- <div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="companyname">이 름</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="companyname" type="text">
				</div>
			</div>
			
		 -->
			
			<div class="row text-center" style="margin-left:20%; margin-top:5%">
				<div class="col-md-2">
					<label for="company_user_id2">기업ID</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_id2" name="company_user_id2" type="text">
				</div>	
			</div>
			
			<div class="row text-center">
				<div class="check_font" style="margin-left:40%" id="id_check"></div>
			</div>
				
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="company_user_pw2">기업PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_pw2" name="company_user_pw2" type="password">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="company_user_pwck2">PW 확인</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_pwck2" name="company_user_pwck2" type="password">
				</div>
			</div>
			
			
			<div class="row text-center" style="margin-left:20%; margin-top:5%">
				<div class="col-md-2">
					<label for="company_user_id3">기업ID</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_id3" name="company_user_id3" type="text">
				</div>
			</div>
			
			<div class="row text-center">
					<div class="check_font" style="margin-left:40%" id="id_check"></div>
				</div>
			
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="company_user_pw3">기업PW</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_pw3" name="company_user_pw3" type="password">
				</div>
			</div>
			<div class="row text-center" style="margin-left:20%; margin-top:2%">
				<div class="col-md-2">
					<label for="company_user_pwck3">PW 확인</label>
				</div>
				<div class="col-md-5">
					 <input class="w3-input w3-border w3-round-large" id="company_user_pwck3" name="company_user_pwck3" type="password">
				</div>
			</div>

			
			<div class="row">
			<div class="col text-center" style="margin-top:10%; margin-bottom: 35%" >
					<button class="btn btn-outline-danger button" type="reset">다시작성</button>
					<button class="btn btn-outline-info button" type="submit">완 료</button>
				</div>
			</div>		

			</div>
	    	  </form>	
	    	</div>	
	  
	    
	    
	  </header>

        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
