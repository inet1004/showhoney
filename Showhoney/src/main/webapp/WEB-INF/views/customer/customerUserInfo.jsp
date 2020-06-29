<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}
</style>
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
								<img src="/w3images/avatar3.png" class="w3-circle"
									style="height: 106px; width: 106px" alt="Avatar">
							</p>
							<hr>
							<p>${vo.customer_name }</p>
							<p>아이디</p>
							<p>비밀번호 수정</p>
							<p>my 부스</p>
						</div>
					</div>
					<br>
			</div>

			<!-- Middle Column -->
			<div class="w3-col m7">
				<div class="w3-row-padding">
					<div class="w3-col m12">

						<form action=""
							class="w3-container w3-card-4 w3-light-grey w3-text-gray w3-margin">
							<h2 class="w3-center">내 정보</h2>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="w3-xxlarge fa fa-user"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="first" type="text"
										placeholder="아이디">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="w3-xxlarge fa fa-user"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="last" type="text"
										placeholder="비번">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="w3-xxlarge fa fa-envelope-o"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="email" type="text"
										placeholder="주소">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="w3-xxlarge fa fa-phone"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="phone" type="text"
										placeholder="이메일">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="w3-xxlarge fa fa-pencil"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="message" type="text"
										placeholder="회사이름">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="w3-xxlarge fa fa-pencil"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="message" type="text"
										placeholder="휴대폰번호">
								</div>
							</div>

							<div class="w3-row w3-section">
								<div class="w3-col" style="width: 50px">
									<i class="w3-xxlarge fa fa-pencil"></i>
								</div>
								<div class="w3-rest">
									<input class="w3-input w3-border" name="message" type="text"
										placeholder="프로필사진">
								</div>
							</div>

							<p class="w3-center">
								<button class="w3-button w3-section w3-blue w3-ripple">
									수정</button>
								<button class="w3-button w3-section w3-blue w3-ripple">
									탈퇴</button>
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
