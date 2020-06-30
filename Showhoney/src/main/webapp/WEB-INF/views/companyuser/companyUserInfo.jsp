<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
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
	var checkval = true;
	var checkpw = true;
	//고객 비밀번호 체크
	function pwtypecheck() {
		var pw = $("#company_user_pw").val();
		var pwtype = /^[a-zA-Z0-9]{6,12}$/;

		if (pw == '' || !pwtype.test(pw)) {
			$('#pwblur').html("6~20자 영문자 또는 숫자 입력.");
			$('#pwblur').css("color", "red");
			checkpw = false
		} else {
			$('#pwblur').html("좋아요 :)");
			$('#pwblur').css("color", "green");
			checkpw = true
		}

	}

	function pwcheck() {
		var pwck = $("#company_user_pw").val();
		var pw = $("#company_user_pwcheck").val();

		if (pw != '' && pwck == pw) {
			$('#pwblurck').html("비밀번호 일치");
			$('#pwblurck').css("color", "green");
			checkpw = true
		} else {
			$('#pwblurck').html("비밀번호 불일치");
			$('#pwblurck').css("color", "red");
			checkpw = false
		}
	}

	function pwpw() {

		if (checkpw == false) {
			alert("조건을 정확히 입력해주세요");
			return false;
		} else {
			return true;
		}
	}

	//고객 이메일 체크
	function emailcheck() {
		var email = $("#company_email").val();
		var emailRule = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

		if (email != "") {
			if (!emailRule.test(email)) {
				$("#emailblur").html("ex) abcd1234@naver.com")
				$('#emailblur').css("color", "red");
				document.PageForm.email.focus();
				checkval = false
			} else {
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
					<form action="companyProfileUpdate.do" method="post"
						id="profilefrm" name="profilefrm" enctype="multipart/form-data">
						<div class="w3-container">
							<h4 class="w3-center">My Profile</h4>
							<p class="w3-center">
								<img
									src="<spring:url value='/resources/FileUpload/companyUserProfile/${vo.company_profile }'/>"
									class="w3-circle" style="height: 106px; width: 106px"
									alt="Avatar">
							</p>
							<hr>
							<p>ID : ${vo.company_user_id }</p>
							<p>기업이름 : ${vo.company_name }</p>
							<p>
								<input type="file" id="company_profile" name="uploadFile">
							</p>
							<input type="hidden" id="company_user_id" name="company_user_id"
								value="${vo.company_user_id }"> <span>현재 파일 :
								${vo.company_profile }</span>
							<p>
								<small><button type="submit"
										class="w3-button w3-section w3-blue w3-ripple">프로필
										사진수정</button></small>
							</p>
						</div>
					</form>
				</div>
				<br>
			</div>

			<!-- Middle Column -->
			<div class="w3-col m7">
				<div class="w3-row-padding">
					<div class="w3-col m12">

						<form action="companyUpdate.do" method="post" id="infoModify"
							name="infoModify" class="w3-container w3-card-4 w3-light-grey w3-text-gray w3-margin" onsubmit="return infocheck()">
							<h2 class="w3-center">내 정보</h2>
							<input type="hidden" name="company_no" value="${vo.company_no }">
							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-building fa-2x"></i>
								</div>
								<div class="w3-rest">

									<input class="w3-input w3-border" name="company_name"
										id="company_name" type="text" value="${vo.company_name }"
										placeholder="기업이름">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-id-badge fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="company_user_id"
										id="company_user_id" type="text"
										value="${vo.company_user_id }" disabled> <input
										class="w3-input w3-border" name="company_user_id"
										id="company_user_id" type="hidden"
										value="${vo.company_user_id }">

								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-phone-alt fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="company_phone"
										id="company_phone" type="text" value="${vo.company_phone }"
										placeholder="기업 전화번호">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-map-marker-alt fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="company_addr"
										id="company_addr" type="text" value="${vo.company_addr }"
										placeholder="기업 주소">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-envelope-square fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="company_email"
										id="company_email" type="text" value="${vo.company_email }"
										onblur="emailcheck()"> <span class="help-block"
										id="emailblur" placeholder="기업 이메일"></span>
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-user-tie fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="ceo_name" id="ceo_name"
										type="text" value="${vo.ceo_name }" placeholder="대표자 이름">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-mobile-alt fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="ceo_phone"
										id="ceo_phone" type="text" value="${vo.ceo_phone }"
										placeholder="대표자 전화번호">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-id-card fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border"
										name="business_license_number" id="business_license_number"
										type="text" value="${vo.business_license_number }"
										placeholder="사업자 등록번호" disabled>
								</div>
							</div>

							<p class="w3-center">
								<button type="submit"
									class="w3-button w3-section w3-blue w3-ripple">수정완료</button>
								<button type="reset"
									class="w3-button w3-section w3-blue w3-ripple">취소</button>
							</p>
						</form>
					</div>
				</div>
			</div>
			<!--Middle Column 2 -->

			<div class="w3-col m7" style="margin-left: 25%; margin-top: 5%">
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<form id="pwModify" name="pwModify" method="post"
							action="companyPwUpdate.do"
							class="w3-container w3-card-4 w3-light-grey w3-text-gray w3-margin" onsubmit="pwpw()">
							<h2 class="w3-center">비밀번호 수정</h2>
							<input class="w3-input w3-border" name="company_user_id"
								id="company_user_id" type="hidden"
								value="${vo.company_user_id }">

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="fas fa-lock fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="company_user_pw"
										id="company_user_pw" type="password"
										placeholder="수정 할 비밀번호를 입력해 주세요 (6~20자 영문자 또는 숫자 입력)"
										onblur="pwtypecheck()"> <span class="help-block"
										id="pwblur"></span>
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="far fa-check-circle fa-2x"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="company_user_pwcheck"
										id="company_user_pwcheck" type="password"
										placeholder="비밀번호 확인" onblur="pwcheck()"> <span
										class="help-block" id="pwblurck"></span>
								</div>
							</div>

							<p class="w3-center">
								<button type="submit" id="pwModify" name="pwModify"
									class="w3-button w3-section w3-blue w3-ripple">수정 완료</button>
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
