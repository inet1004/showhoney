<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Racks - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,700,800" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style2.css">
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
  </head>
  
 <body>

<section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
        <c:choose>
        <c:when test="${companyAuth = 'y' }">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <!-- <span class="subheading">부스</span> -->
            <h2>부스 목록</h2>
              <button type="button" class="btn btn-warning btn-lg btn-block" style="width: 20%; margin: auto;" onclick="location.href='boothForm.do'">부스 만들기</button>
          </div>
          </c:when>
          <c:otherwise>
          <div>
		<h2><strong>관리자 승인 후 부스생성이 가능합니다 :)</strong></h2>
		<br/><br/>
		</div>
		</c:otherwise>
		</c:choose>
        </div>
        
        <div class="row">
			<c:forEach var="booth" items="${list }">
	          <div class="col-md-4 ftco-animate">
	            <div class="blog-entry">
	              <a href="#" class="block-20" style="background-image: url('resources/FileUpload/boothProfile/${booth.booth_profile}');">
	              </a>
	              <div class="text p-4 d-block">
	                <div class="meta mb-3">
	                  <div><a href="boothSelect.do?booth_no=${booth.booth_no }">${booth.company_name }</a></div>&nbsp;
	                  <div><a href="#"><i class="far fa-heart"></i></a></div>
	                </div>
	                <h3 class="heading"><a href="boothSelect.do?booth_no=${booth.booth_no }">${booth.booth_introduction }</a></h3>
	              </div>
	            </div>
	          </div>
			</c:forEach>
        
          
          <!--원래 2번째부스자리 정보 <div class="col-md-4 ftco-animate">
            <div class="blog-entry" data-aos-delay="100">
              <a href="#" class="block-20" style="background-image: url('img/dog.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta mb-3">
                  <div><a href="#">강아지부스</a></div>&nbsp;
                  <div><a href="#"><i class="far fa-heart"></i></a></div>
                </div>
                <h3 class="heading"><a href="#">강아지부스소개부스소개부스소개부스소개부스소개부스소개부스소개부스소개부스소개부스소개</a></h3>
              </div>
            </div>
          </div> -->
         
         
         
         
         <!--원래 3번째부스자리 정보  <div class="col-md-4 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta mb-3">
                  <div><a href="#">July 12, 2018</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div> -->
        
        
        </div>
      </div>
    </section>

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  
  </body>
</html>