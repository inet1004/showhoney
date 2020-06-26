<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	$(document).ready(function() {
		var maxField = 3; //최대개수
		var extcnt = 0; //최초카운트

		$('.add_btn').click(function() {
			if (extcnt < maxField) {
				extcnt++;
				$('#productlist').append($('.append:last').clone())
			}
		});

		$('.remove_btn').click(function() {
			$(this).parent($('.append:last').remove())
			extcnt--;
		})

	})
</script>

<form id="frm" name="frm" action="boothInsert.do" method="post"
	enctype="multipart/form-data">
	<div class="container-fluid video-player">
		<div class="container">
			<div style="margin-top: 10%">
				<label for="video"> 박람회를 선택해주세요 </label> <select class="w3-select"
					name="option">
					<option value="" disabled selected>박람회를 선택해주세요</option>
					<c:forEach var="exhibition" items="${exhibitionlist }"
						varStatus="i">
						<option value="${exhibition.exhibition_no}">${exhibition.exhibition_name }</option>
					</c:forEach>
				</select>

			</div>
			<div style="margin-top: 10%">
				<label for="video"> 홍보영상 주소를 입력해 주세요 </label> <input
					class="w3-input w3-border w3-animate-input" type="text"
					id="video_path" name="video_path">
			</div>
			<hr>
			<div class="row vr-gallery">
				<div class="col-md-8 mb-4">
					<div class="row">
						<div class="col-md-12 col-lg-6 light-bg pr-0 pd-md">
							<label for="company_logo">Logo사진 첨부</label> <input
								class="w3-input w3-border w3-round-large" id="booth_profile"
								name="booth_uploadfile" type="file">
						</div>
						<div class="col-md-12 col-lg-6 light-bg ">
							<label for="comment">부스를 소개해주세요</label>
							<textarea class="form-control" rows="15" id="booth_introduction"
								name="booth_introduction"></textarea>
						</div>
					</div>
				</div>

				<div class="col-md-4 pl-4 mb-4">
					<div class="row ">
						<span class="material-icons"></span>
					</div>
					<div class="w3-container w3-card-4 w3-light-grey"
						style="margin-top: 5%;">
						<p>
							<label>1:1 영상상담 주소 입력란</label> <input class="w3-input w3-border"
								name="video_call_path" id="video_call_path" type="text">
						</p>

						<p>
							<label>고객상담 전화번호 입력란</label> <input class="w3-input w3-border"
								name="company_tel" id="company_tel" type="text">
						</p>

						<p>
							<label>브로슈어 파일 업로드</label> <input class="w3-input w3-border"
								name="brochure_uploadfile" id="brochure_path" type="file">
						</p>
					</div>
				</div>

			</div>

		</div>
	</div>

	<!-- 상품 -->
	<div class="container-fluid fh5co-recent-news mt-5 pb-5"
		style="margin-top: 10%">
		<h2 class="text-uppercase text-center">PRODUCT</h2>
		<hr class="mx-auto" />
		<div class="play-list mt-5 pt-4">
			<div class="container" id="productlist">
				<div>
					<label for="video"> 구매링크 입력란 </label> <input
						class="w3-input w3-border w3-animate-input" type="text"
						id="product_mall" name="product_mall">
				</div>
				<div style="margin-top: 5%; align: right;">
					<button type="button" class="btn btn-primary add_btn">상품추가</button>
					<button type="button" class="btn btn-danger remove_btn">삭
						제</button>
					<span style="color: red;"> 총 4개만 등록가능합니다. </span>
				</div>
				<div class="w3-container w3-card-4 w3-light-grey append">
					<h2>상품 1</h2>
					<p>상품정보를 입력하세요</p>

					<p>
						<label>상품 이름</label> <input class="w3-input w3-border"
							name="product_name" id="product_name" type="text">
					</p>

					<p>
						<label>상품 소개</label> <input class="w3-input w3-border"
							name="product_desc" id="product_desc" type="text">
					</p>

					<p>
						<label>상품 이미지</label> <input class="w3-input w3-border"
							name="product_uploadfile" id="image_path" type="file">
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6" align="right">
			<p>
				<button class="w3-button w3-red w3-round-xlarge" type="reset">재작성</button>
			</p>
		</div>
		<div class="col-lg-6">
			<p>
				<button class="w3-button w3-blue w3-round-xlarge" type="submit">
					등 록</button>
			</p>
		</div>
	</div>
</form>
