<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<script>
$(function() {
$(".remove_btn").click(function(){
    if(confirm("정말 삭제하시겠습니까 ?") == true){
        alert("삭제되었습니다");
        //var product_no = $(this).closest("form").find("#product_no").val()
        //location.href='productdelete.do?product_no='+product_no
        	$(this).closest("form").attr("action","productdelete.do")	
        	$(this).closest("form").submit()
    }
    else{
        return ;
    }
});
});

</script>
</head>
<body>
	<form id="boothfrm" name="boothfrm" action="boothUpdate.do" method="post" enctype="multipart/form-data">
		<div class="container-fluid video-player">
			<div class="container">
				<div style="margin-top: 10%">
					<input type="hidden" name="booth_no" id="booth_no"
						value="${list[0].booth_no }"> <label for="video">
						홍보영상 주소를 입력해 주세요 </label>
					<textarea class="w3-input w3-border w3-animate-input" rows="5"
						cols="50" id="video_path" name="video_path">${list[0].video_path }</textarea>
				</div>
				<hr>
				<div class="row vr-gallery">
					<div class="col-md-8 mb-4">
						<div class="row">
							<div class="col-md-12 col-lg-6 light-bg pr-0 pd-md">
								<label for="company_logo">Logo사진 첨부</label> <input
									class="w3-input w3-border w3-round-large" id="booth_profile"
									name="booth_uploadfile" type="file"> <span>${list[0].booth_profile }</span>
							</div>
							<div class="col-md-12 col-lg-6 light-bg ">
								<label for="comment">부스를 소개해주세요</label>
								<textarea class="w3-input w3-border" rows="15"
									id="booth_introduction" name="booth_introduction">${list[0].booth_introduction }</textarea>
							</div>
						</div>
					</div>

					<div class="col-md-4 pl-4 mb-4">
						<div class="row ">
							<span class="material-icons"></span>
						</div>
						<div class="w3-container w3-card-4 w3-light-grey"
							style="margin-top: 5%;">
							<p><label>1:1 영상상담 주소 입력란</label>&nbsp;&nbsp;<button type="button" class="btn btn-primary add_btn" onclick="window.open('https://192.168.0.109:9001/demos/one-to-one.html')">방만들기</button>
						  <textarea class="w3-input w3-border" name="video_call_path" id="video_call_path" rows="5" cols="50" placeholder="사용하지 않으실 때에는  비워두세요.">${list[0].video_call_path }</textarea></p>
							<p>
								<label>고객상담 전화번호 입력란</label> <input class="w3-input w3-border"
									name="company_tel" id="company_tel" type="text"
									value="${list[0].company_tel }">
							</p>

							<p>
								<label>브로슈어 파일 업로드</label> <input class="w3-input w3-border"
									name="brochure_uploadfile" id="brochure_path" type="file">
							</p>
							<span>${list[0].brochure_path }</span>
						</div>
					</div>
					<div class="container">
						<p>
							<label for="product_mall"> 구매링크 입력란 </label> <input
								class="w3-input w3-border" type="text" id="product_mall"
								name="product_mall" value="${list[0].product_mall }">
						</p>
					</div>
				</div>
			</div>
			<div style="margin-top: 5%;" align="center">
				<button class="w3-button w3-blue w3-round-xlarge" type="submit">
					부스수정 완료</button>
			</div>
		</div>
	</form>


	<!-- 상품 -->

	<c:forEach var="product" items="${productlist }" varStatus="i">
		<form id="productfrm" name="productfrm" action="productUpdate.do"
			method="post" enctype="multipart/form-data">
			<div class="container-fluid fh5co-recent-news mt-5 pb-5"
				style="margin-top: 10%">
				<h2 class="text-uppercase text-center">PRODUCT</h2>
				<hr class="mx-auto" />
				<div class="play-list mt-5 pt-4">
					<div class="container" id="productlist">
						<div style="margin-top: 5%;">
							<button type="button" class="w3-button w3-lime w3-round-large"
								onclick="location.href='productdelete.do?booth_no=${list[0].booth_no }'">추
								가</button>
						</div>
						<table class="w3-table" style="text-align: center;">
							<thead>
								<tr>
									<th style="background-color: #fafafa; text-align: center;">상품이름</th>
									<th style="background-color: #fafafa; text-align: center;">상품소개</th>
									<th style="background-color: #fafafa; text-align: center;">상품이미지</th>
									</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td><input class="w3-input" type="text"
										name="product_name" id="product_name" type="text"
										value="${product.product_name }"></td>
									<td><input class="w3-input" name="product_desc"
										id="product_desc" type="text" value="${product.product_desc }"></td>
									<td><input class="w3-input" name="product_uploadfile"
										id="product_image_path" type="file"> <label>현재
											파일 : </label><span>${product.product_image_path }</span></td>
									<td><button
											class="w3-button w3-light-blue w3-round-xlarge" type="submit">수
											정</button></td>
									<td><button
											class="w3-button w3-pale-red w3-round-xlarge remove_btn"
											type="button">삭 제</button></td>
									<td colspan="2"><input type="hidden" name="product_no"
										id="product_no" value="${product.product_no }"> <input
										type="hidden" name="booth_no" id="booth_no"
										value="${list[0].booth_no }"></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</form>
	</c:forEach>
	<button class="w3-button w3-green w3-round-xlarge" type="button"
		onclick="location.href='boothSelect.do?booth_no=${list[0].booth_no }'">부스보기</button>
	<button class="w3-button w3-red w3-round-xlarge" type="button" id="remove_booth" onclick="location.href='boothdelete.do?booth_no=${list[0].booth_no }'">
		부스 삭제</button>
	<div></div>
</body>