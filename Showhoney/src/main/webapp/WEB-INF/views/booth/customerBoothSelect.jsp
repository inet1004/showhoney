<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="container-fluid video-player">

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="asset/css/bootstrap.min.css">
    <link rel="stylesheet" href="asset/css/style.css">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
	<div class="container">
		<div style="margin-top: 5%">
			<div class="screen embed-responsive embed-responsive-16by9">
			<span>${list[0].video_path }</span>
			</div>
		</div>
		<hr>
		<div class="row vr-gallery">
			<div class="col-md-8 mb-4">
				<div class="row">
					<div class="col-md-12 col-lg-6 light-bg pr-0 pd-md">
						<!-- 기업이미지 -->
						<img
							src="<spring:url value='/resources/FileUpload/boothProfile/${list[0].booth_profile }'/>">
					</div>
					<!-- 소개글 -->
					<div class="col-md-12 col-lg-6 light-bg ">
						<p>${list[0].booth_introduction }</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 pl-4 mb-4">
				<div class="row ">
					<span class="material-icons"></span>
				</div>
				<div class="w3-container w3-card-4 w3-light-grey" style="margin-top: 5%;">
					<div>
						<!-- 영상 <a href="${list[0].video_call_path }"> -->
						<label><i class="fas fa-video fa-3x"></i></label>
						<button class="w3-btn w3-link w3-xlarge" onclick="">1:1 영상상담</button>
					</div>
					<div>
						<!-- 전화 onclick="${list[0].company_tel }"-->
						<label><i class="fas fa-phone-alt fa-3x"></i></label>
						<button class="w3-btn w3-link w3-xlarge">전화번호</button>
					</div>
					<!-- 브로슈어 -->
					<label><i class="fas fa-cloud-download-alt fa-3x"></i></label>
					<button class="w3-btn w3-link w3-xlarge">브로슈어 download</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 상품 -->
<div class="container-fluid fh5co-recent-news mt-5 pb-5">
	<h2 class="text-uppercase text-center">PRODUCT</h2>
	<hr class="mx-auto" />
	<div class="play-list mt-5 pt-4">
		<div align="center">
			<label><i class="fas fa-shopping-cart fa-3x"></i></label>
			<a href="${list[0].product_mall}">구매하러가기</a>
		</div>
		<div class="w3-row-padding w3-padding-16 w3-center" id="food">
			<c:forEach var="product" items="${productlist }" varStatus="i">
				<div class="w3-quarter">
					<img src="<spring:url value='/resources/FileUpload/product/${product.product_image_path }'/>"
						alt="상품" style="width: 100%">
					<h3>${product.product_name}</h3>
					<p>${product.product_desc}</p>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<!-- 수정input -->
<div class="row">
	<div class="col-lg-6" align="right">
		<p>
			<%-- <button class="w3-button w3-blue w3-round-xlarge" type="button" onclick="location.href='boothModifyForm.do?booth_no=${list[0].booth_no}'">수정하기</button> --%>
		</p>
	</div>
</div>
    <script src="asset/js/popper.min.js"></script>
    <script src="asset/js/jquery-1.12.0.min.js"></script>
    <script src="asset/js/bootstrap.min.js"></script>
    <script src="asset/js/owl.carousel.min.js"></script>
    <script src="asset/js/jquery.yu2fvl.js"></script>
    <script src="asset/js/main.js"></script>
</body>
</html>
