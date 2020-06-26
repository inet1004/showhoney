<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
$(document).ready(function(){
	
	$('.remove_btn').click(function(){
		$(this).parent($('.append:last').remove())
		extcnt--;
	})
	

})
</script>

    <form id="boothfrm" name="boothfrm" action="boothUpdate.do" method="post" enctype="multipart/form-data">
    <div class="container-fluid video-player">
        <div class="container">
              <div style="margin-top:10%">
                 <input type="hidden" name="booth_no" id="booth_no" value="${list[0].booth_no }">  
                 <label for="video"> 홍보영상 주소를 입력해 주세요 </label>
                   <textarea class="w3-input w3-border w3-animate-input" rows="5" cols="50" id="video_path" name="video_path">${list[0].video_path }</textarea>
               </div>
            <hr>
            <div class="row vr-gallery">
                <div class="col-md-8 mb-4">
                    <div class="row">
                        <div class="col-md-12 col-lg-6 light-bg pr-0 pd-md">
                            <label for="company_logo">Logo사진 첨부</label>
                              <input class="w3-input w3-border w3-round-large" id="booth_profile" name="booth_uploadfile" type="file">
                        	  <span>${list[0].booth_profile }</span>
                        </div>
                        <div class="col-md-12 col-lg-6 light-bg ">
                           <label for="comment">부스를 소개해주세요</label>
     						 <textarea class="form-control" rows="15" id="booth_introduction" name="booth_introduction">${list[0].booth_introduction }</textarea>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 pl-4 mb-4">
                    <div class="row ">
                        <span class="material-icons"></span>
                    </div>
                      <div class="w3-container w3-card-4 w3-light-grey" style="margin-top:5%;">
					  <p><label>1:1 영상상담 주소 입력란</label>
						  <textarea class="w3-input w3-border" name="video_call_path" id="video_call_path" rows="5" cols="50">${list[0].video_call_path }</textarea>
						
						  <p><label>고객상담 전화번호 입력란</label>
						  <input class="w3-input w3-border" name="company_tel" id="company_tel" type="text" value="${list[0].company_tel }"></p>
						  
						  <p><label>브로슈어 파일 업로드</label>
						  <input class="w3-input w3-border" name="brochure_uploadfile" id="brochure_path" type="file"></p>
						  <span>${list[0].brochure_path }</span>
					</div>
                </div>

            </div>

        </div> 
        <div style="margin-top:5%;" align="center">
			<button class="w3-button w3-blue w3-round-xlarge" type="submit"> 부스수정 완료</button>
		</div>  
    </div>
 </form>
 

<!-- 상품 -->
 <c:forEach var="product" items="${productlist }" varStatus="i">
	<form id="productfrm" name="productfrm" action="productUpdate.do" method="post" enctype="multipart/form-data">
    <div class="container-fluid fh5co-recent-news mt-5 pb-5" style="margin-top:10%">
    	<input type="hidden" name="product_no" id="product_no" value="${product.product_no }">
         <input type="hidden" name="booth_no" id="booth_no" value="${list[0].booth_no }">  
        <h2 class="text-uppercase text-center">PRODUCT</h2>
        <hr class="mx-auto" />
        <div class="play-list mt-5 pt-4">
            <div class="container" id="productlist">
            <div>
                 <label for="video"> 구매링크 입력란 </label>
                   <input class="w3-input w3-border w3-animate-input" type="text" id="product_mall" name="product_mall" value="${product.product_mall }">
               </div>
               <div style="margin-top:5%; align:right;">
               <button type="button" class="btn btn-primary add_btn">상품추가</button>
               <button type="button" class="btn btn-danger remove_btn">삭 제</button>
               <span style="color: red;"> 총 4개만 등록가능합니다. </span>
               </div>
				<div class="w3-container w3-card-4 w3-light-grey append" >
				  <h2>상품 1 </h2>
				  <p>상품정보를 입력하세요</p>
				
				  <p><label>상품 이름</label>
				  <input class="w3-input w3-border" name="product_name" id="product_name"type="text" value="${product.product_name }"></p>
				
				  <p><label>상품 소개</label>
				  <input class="w3-input w3-border" name="product_desc" id="product_desc" type="text" value="${product.product_desc }"></p>
				  
				  <p><label>상품 이미지</label>
				  <input class="w3-input w3-border" name="product_uploadfile" id="product_image_path" type="file"></p>
				  <span>${product.product_image_path }</span>
			</div>
		</div>
	 <div style="margin-top:5%;" align="center">
	 	<button class="w3-button w3-blue w3-round-xlarge" type="submit" > 상품수정 완료</button>
    </div>
	</div>
	</div>
 </form>
 <div>
 
 </div>
</c:forEach>