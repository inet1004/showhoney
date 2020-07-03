<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<script type="text/javascript">

	function chatSangdam(){
		window.open('room?booth_no=${param.booth_no }', 'newWindow', 'width=800, height=900');
		//location.href="/core/room?booth_no=" + ${list[0].booth_no };  // 채팅방에 부스번호 넘김
	}
	
</script>


<script>
	function videoCallUpdate(booth_no){
		var boothno = booth_no;
		videocallpath = document.getElementById('video_call_path').value;

		$.ajax({
			type:"post",
			url:"videoCallUpdate.do",
			data : {'booth_no': boothno, 'video_call_path': videocallpath },  
			/* contentType: 'application/json', */ 
			success: function(data){
			 if(data>0){
				 
				 alert("수정 완료");
			 }else if(data==0){
				 alert("수정 실패");
			 }		
			},
			error: function(){
			  alert("에러뜸 ㅅㄱ");
			}
		})//end ajax
	}
</script>

<script>
	function enterkey() {
	    if (window.event.keyCode == 13) {
	
	         // 엔터키가 눌렸을 때 실행할 내용
	         videoCallUpdate(${list[0].booth_no});
	    }
}
</script>
	
<div class="container-fluid video-player">
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
					 <div class="col-md-12 col-lg-5 light-bg cus-pd cus-arrow-left">
                            <p><small></small></p>
                            <c:forEach var="companyuser" items="${companyuserlist }">
                            <h3>${companyuser.company_name }</h3>
                            </c:forEach>
                            <h4> ${list[0].booth_introduction } </h4>
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
						<div>
						<label><i class="fas fa-video fa-3x"></i></label>
						<button class="w3-btn w3-link w3-xlarge" id="btn" name="btn" onclick="window.open('https://192.168.0.109:9001/demos/one-to-one.html#${list[0].video_call_path }')">1:1 영상상담</button>
						<button class="w3-btn w3-link w3-medium" onclick="window.open('https://192.168.0.109:9001/demos/one-to-one.html')">방만들기</button>						
						<!-- <span onclick="window.open('https://192.168.0.109:9001/demos/one-to-one.html')"><i class="fas fa-sign-in-alt"></i></span> -->
						</div>
						<div>
						<label><i class="fas fa-map-marker-alt fa-3x"></i>&nbsp;&nbsp;방이름</label>
							<input type="text" value="${list[0].video_call_path }" name="video_call_path" id="video_call_path" onkeyup="enterkey();" placeholder="미사용시 비워주세요">
							<input type="hidden" value="${list[0].booth_no }" name="booth_no" id="booth_no">
							<i class="fas fa-pencil-alt" onclick="videoCallUpdate(${list[0].booth_no})"></i>
						</div>
							<!-- <button type="button" class="btn btn-primary add_btn" onclick="window.open('https://192.168.0.109:9001/demos/one-to-one.html')">방만들기</button> -->
							
						
							
					</div>
					<div>
						<!-- 전화 onclick="${list[0].company_tel }"-->
						<label><i class="fas fa-comments fa-3x"></i></label>
						<button class="w3-btn w3-link w3-xlarge" id="chatSangdam" onclick="chatSangdam();">채팅상담</button>
					</div>
					<!-- 브로슈어 -->
					<label><i class="fas fa-cloud-download-alt fa-3x"></i></label>
					<button class="w3-btn w3-link w3-xlarge" onclick="location.href='download.do?booth_no=${list[0].booth_no }'">브로슈어 download</button>
				
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
			<a href="${list[0].product_mall}" target="_blank">구매하러가기</a>
		</div>
		<div class="w3-row-padding w3-padding-16 w3-center" id="food" style="margin-top:5%">
			<c:forEach var="product" items="${productlist }" varStatus="i">
				<div class="w3-quarter" style="margin-left:5%">
					<img src="<spring:url value='/resources/FileUpload/product/${product.product_image_path }'/>"
						alt="상품" style="width:100%;">
					<h3>${product.product_name}</h3>
					<p>${product.product_desc}</p>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

<!-- 수정input -->
	<div align="center" style="margin-top:15%">
			<button class="w3-button w3-blue w3-round-xlarge" type="button" onclick="location.href='boothModifyForm.do?booth_no=${list[0].booth_no}'">수정하기</button>
		<button class="w3-button w3-green w3-round-xlarge" type="button" onclick="location.href='boothList.do'">부스목록가기</button>
	</div><%-- <button class="w3-button w3-blue w3-round-xlarge" type="button" onclick="location.href='boothModifyForm.do?booth_no=${list[0].booth_no}'">수정하기</button> --%>