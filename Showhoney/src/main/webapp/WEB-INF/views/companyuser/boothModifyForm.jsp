<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="asset/css/bootstrap.min.css">
    <link rel="stylesheet" href="asset/css/style.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Booth</title>
<style type="text/css">
lable {
	color: gray;
	font-color: gray;
}
</style>
</head>

<body>
<div class="container">
    <form id="frm" name="frm" action="boothModifyForm.do" method="post" enctype="multipart/form-data">
    <div class="container-fluid video-player">
        <div class="container">
              <div style="margin-top:5%">
                 <label for="video"> 홍보영상 주소를 입력해 주세요 </label>
                   <textarea class="w3-input w3-border w3-animate-input" rows="5" cols="50" id="video_path" name="video_path">${list[0].video_path }</textarea>
               </div>
            <hr>
            <div class="row vr-gallery">
                <div class="col-md-8 mb-4">
                    <div class="row">
                        <div class="col-md-12 col-lg-6 light-bg pr-0 pd-md">
                            <label for="company_logo">Logo사진 첨부</label>
                             <input class="w3-input w3-border w3-round-large" id="booth_profile" name="booth_uploadfile" type="file" >
                     		 <span>${list[0].booth_profile }</span>
                        </div>
                        <div class="col-md-12 col-lg-6 light-bg ">
                           <label for="comment">부스를 소개해주세요</label>
     						 <textarea class="form-control" rows="15" id="booth_introduction" name="booth_introduction" >${list[0].booth_introduction }</textarea>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 pl-4 mb-4">
                    <div class="row ">
                        <span class="material-icons"></span>
                    </div>
                      <div class="w3-container w3-card-4 w3-light-grey" style="margin-top:5%;">
					  <p><label>1:1 영상상담 주소 입력란</label>
						  <input class="w3-input w3-border" name="video_call_path" id="video_call_path" type="text"></p>
						
						  <p><label>고객상담 전화번호 입력란</label>
						  <input class="w3-input w3-border" name="company_tel" id="company_tel" type="text"></p>
						  
						  <p><label>브로슈어 파일 업로드</label>
						  <input class="w3-input w3-border" name="brochure_uploadfile" id="brochure_path" type="file"></p>
					</div>
                </div>

            </div>

        </div>
        	<div>
        		<button class="w3-button w3-blue w3-round-xlarge" type="submit"> 부스스정 완료 </button>
        	</div>
    </div>

<!-- 상품 -->
    <div class="container-fluid fh5co-recent-news mt-5 pb-5">
        <h2 class="text-uppercase text-center">PRODUCT</h2>
        <hr class="mx-auto" />
        <div class="play-list mt-5 pt-4">
            <div class="container">
            <div>
                 <label for="video"> 구매링크 입력란 </label>
                   <input class="w3-input w3-border w3-animate-input" type="text" id="product_mall" name="product_mall">
               </div>
				<div class="w3-container w3-card-4 w3-light-grey" style="margin-top:5%;">
				  <h2>상품 1 </h2>
				  <p>상품정보를 입력하세요</p>
				
				  <p><label>상품 이름</label>
				  <input class="w3-input w3-border" name="product_name" id="product_name"type="text"></p>
				
				  <p><label>상품 소개</label>
				  <input class="w3-input w3-border" name="product_desc" id="product_desc" type="text"></p>
				  
				  <p><label>상품 이미지</label>
				  <input class="w3-input w3-border" name="product_uploadfile" id="image_path" type="file"></p>
			</div>
		</div>
	</div>
	</div>
	 <div class="row">
		<div class="col-lg-6" >
 			<p><button class="w3-button w3-blue w3-round-xlarge" type="submit"> 상품수정 완료 </button></p>
 		</div>
    </div>
 </form>
 </div>

    <script src="asset/js/popper.min.js"></script>
    <script src="asset/js/jquery-1.12.0.min.js"></script>
    <script src="asset/js/bootstrap.min.js"></script>
    <script src="asset/js/owl.carousel.min.js"></script>
    <script src="asset/js/jquery.yu2fvl.js"></script>
    <script src="asset/js/main.js"></script>

</body>

</html>