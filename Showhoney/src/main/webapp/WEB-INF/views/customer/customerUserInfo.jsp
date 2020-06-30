<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>

<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}
</style>
<script>
//고객 비밀번호 체크
function pwtypecheck() {
	var pw = $("#customer_pw").val();
	var pwtype = /^[a-zA-Z0-9]{6,12}$/;
	
	if(pw == '' || !pwtype.test(pw)) {
		$('#pwblur').html("6~20자 영문자 또는 숫자 입력.");
		$('#pwblur').css("color", "red");
	} else {
		$('#pwblur').html("좋아요 :)");
		$('#pwblur').css("color", "green");
	}
		
}

function pwcheck(){
	var pwck = $("#customer_pw").val();
	var pw = $("#customer_pwcheck").val();
	
	if(pw != '' && pwck == pw){
		$('#pwblurck').html("비밀번호 일치");
		$('#pwblurck').css("color", "green");
	}else{
		$('#pwblurck').html("비밀번호 불일치");
		$('#pwblurck').css("color", "red");
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
		return false;
	}else{
		$("#emailblur").html("사용 가능한 이메일입니다.")
		$('#emailblur').css("color", "green");
		return true;
	}
}
}

</script>
</head>
<body class="w3-theme-l5">
	<!-- Page Container -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 80px">
		<!-- The Grid -->
		<div class="w3-row">
			<!-- Left Column -->
			<div class="w3-col m3">
				<!-- Profile -->
					<div class="w3-card w3-round w3-white">
						<div class="w3-container">
							<h4 class="w3-center">My Profile</h4>
							<p class="w3-center">
								<img src="<spring:url value='/resources/FileUpload/customerProfile/Penguins.jpg'/>" class="w3-circle"
									style="height: 106px; width: 106px" alt="Avatar">
							</p>
							<hr>
							<p>ID :  ${vo.customer_id }</p>
							<p>이름 : ${vo.customer_name }</p>
							<p>비밀번호 수정</p>
							<p>my 부스</p>
						</div>
					</div>
					<br>
			</div>

			<!-- Middle Column -->
			<div class="w3-col m7" >
				<div class="w3-row-padding">
					<div class="w3-col m12">

						<form action="customerUpdate.do" method="post" id="infoModify" name="infoModify" class="w3-container w3-card-4 w3-light-grey w3-text-gray w3-margin">
							<h2 class="w3-center">내 정보</h2>
							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-user fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_name" id="customer_name" type="text"
										value="${vo.customer_name }">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-id-badge fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_id" id="customer_id" type="text"
									 value="${vo.customer_id }" disabled>
									 <input class="w3-input w3-border" name="customer_id" id="customer_id" type="hidden"
									 value="${vo.customer_id }">
									 
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-map-marker-alt fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_addr" id="customer_addr" type="text"
										value="${vo.customer_addr }" >
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-envelope-square fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_email" id="customer_email" type="text"
										value="${vo.customer_email }" onblur="emailcheck()">
									<span class="help-block" id="emailblur"></span>
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-building fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_company_name" id="customer_company_name" type="text"
										value="${vo.customer_company_name}">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-phone-alt fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_phone" id="customer_phone" type="text"
										value="${vo.customer_phone}">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-user-circle fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_profile" id="customer_profile" type="file">
										<span>현재 프로필 : ${vo.customer_profile}</span>
								</div>
							</div>

							<p class="w3-center">
								<button type="submit" class="w3-button w3-section w3-blue w3-ripple">
									수정완료</button>
								<button type="reset" class="w3-button w3-section w3-blue w3-ripple">
									취소</button>
							</p>
						</form>
					</div>
				</div>
			</div>
				<!--Middle Column 2 -->
				
			<div class="w3-col m7" style="margin-left:25%; margin-top: 5%">
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<form id="pwModify" name="pwModify" method="post" action="customerPwUpdate.do" class="w3-container w3-card-4 w3-light-grey w3-text-gray w3-margin">
							<h2 class="w3-center">비밀번호 수정</h2>
							<input class="w3-input w3-border" name="customer_id" id="customer_id" type="hidden"
									 value="${vo.customer_id }">
									 
							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-lock fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_pw" id="customer_pw" type="password"
										placeholder="수정 할 비밀번호를 입력해 주세요 (6~20자 영문자 또는 숫자 입력)" onblur="pwtypecheck()" >
									<span class="help-block" id="pwblur"></span>
								</div>
							</div>
						
							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="far fa-check-circle fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="customer_pwcheck" id="customer_pwcheck" type="password"
										placeholder="비밀번호 확인" onblur="pwcheck()">
									<span class="help-block" id="pwblurck"></span>
								</div>
							</div>

							<p class="w3-center">
								<button type="submit" id="pwModify" name="pwModify" class="w3-button w3-section w3-blue w3-ripple">
									수정 완료</button>
							</p>
						</form>
					</div>
				</div>
				<!-- End Middle Column -->
			</div>

			<!-- End Grid -->
		</div>

		<!-- End Page Container -->
	</div>
	<br>



</body>
</html>
