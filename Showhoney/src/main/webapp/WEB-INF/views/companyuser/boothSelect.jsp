<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="container-fluid video-player">
	<div class="container">
		<div style="margin-top: 5%">
			<div class="screen embed-responsive embed-responsive-16by9">
				<span>${list[0].video_path } </span>
			</div>
		</div>
		<hr>
		<div class="row vr-gallery">
			<div class="col-md-8 mb-4">
				<div class="row">
					<div class="col-md-12 col-lg-6 light-bg pr-0 pd-md">
						<!-- 기업이미지 -->
						<img src="<spring:url value='/resources/FileUpload/booth/${list[0].booth_profile }'/>">
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
				<div class="w3-container w3-card-4 w3-light-grey"
					style="margin-top: 5%;">
					<!-- 영상 -->
					<a src="${list[0].video_call_path }"><i
						class="fas fa-video fa-7x"></i></a>
					<!-- 전화 -->
					<i class="fas fa-phone-alt fa-7x" onclick="${list[0].company_tel }"></i>

					<p>
						<label><i class="fas fa-cloud-download-alt"></i></label>
						<!-- 브로슈어 -->
						<button class="w3-btn w3-blue w3-xlarge">브로슈어</button>
					</p>
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
		<button onclick="${list[0].product_mall}">구매링크</button>
		<div class="w3-row-padding w3-padding-16 w3-center" id="food">
			<c:forEach var="product" items="${list }" varStatus="i">
				<div class="w3-quarter">
					<img src="<spring:url value='/resources/FileUpload/product/${product.product_img }'/>" alt="상품" style="width: 100%">
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
			<button class="w3-button w3-blue w3-round-xlarge" type="reset" onclick="boothModifyForm.do">수정하기</button>
		</p>
	</div>
</div>
