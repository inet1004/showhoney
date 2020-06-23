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
   <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <title>Booth</title>
</head>

<body>
<div class="container">
	<c:forEach var="booth" items="${list }">
      <div class="container-fluid video-player">
        <div class="container">
              <div style="margin-top:5%">
                  <div class="screen embed-responsive embed-responsive-16by9">
                 <span>#{booth.video_path }</span>
                
            </div>
               </div>
            <hr>
            <div class="row vr-gallery">
                <div class="col-md-8 mb-4">
                    <div class="row">
                        <div class="col-md-12 col-lg-6 light-bg pr-0 pd-md">
                             <img src="#{booth.booth_profile }">
                        </div>
                        <div class="col-md-12 col-lg-6 light-bg ">
                        	<p>#{booth.booth_introduction }</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 pl-4 mb-4">
                    <div class="row ">
                        <span class="material-icons"></span>
                    </div>
                      <div class="w3-container w3-card-4 w3-light-grey" style="margin-top:5%;">
					 	 <i class="fas fa-video fa-7x"></i>
					 	  <button type="button" class="btn btn-link" name="video_call_path" id="video_call_path" >1:1 영상상담</button> 						
						  
						  <i class="fas fa-phone-alt fa-7x"></i>
						  <button type="button" class="btn btn-link" name="company_tel" id="company_tel" >상담원전화번호</button>
			
						  <p><label>브로슈어 파일 업로드</label>
						  <input class="w3-input w3-border" name="brochure_path" id="brochure_path" type="file"></p>
					</div>
                </div>
			</div>
        </div>
    </div>
	 </c:forEach>
<!-- 상품 -->
    <div class="container-fluid fh5co-recent-news mt-5 pb-5">
        <h2 class="text-uppercase text-center">PRODUCT</h2>
        <hr class="mx-auto" />
    <div class="play-list mt-5 pt-4">
           
                <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
      <img src="asset/images/news6.png" alt="Sandwich" style="width:100%">
      <h3>The Perfect Sandwich, A Real NYC Classic</h3>
      <p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="asset/images/news2.png" alt="Steak" style="width:100%">
      <h3>Let Me Tell You About This Steak</h3>
      <p>Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="asset/images/news3.png" alt="Cherries" style="width:100%">
      <h3>Cherries, interrupted</h3>
      <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
      <p>What else?</p>
    </div>
    <div class="w3-quarter">
      <img src="asset/images/news4.png" alt="Pasta and Wine" style="width:100%">
      <h3>Once Again, Robust Wine and Vegetable Pasta</h3>
      <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
  </div>

        </div>
	</div>
	
	<!-- 수정input -->
	 <div class="row">
	 	<div class="col-lg-6" align="right">
 	 		<p><button class="w3-button w3-red w3-round-xlarge" type="reset">재작성</button></p>
		</div>
		<div class="col-lg-6" >
 			<p><button class="w3-button w3-blue w3-round-xlarge" type="submit"> 등 록 </button></p>
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