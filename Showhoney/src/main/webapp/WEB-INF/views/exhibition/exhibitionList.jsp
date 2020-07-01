<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Lumia - v2.0.0
  * Template URL: https://bootstrapmade.com/lumia-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->	

<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
	<script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <title>Lumia Bootstrap Template - Index</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
<style>
body {
	font-size: 1.3rem;
}
</style>
	<!-- ======= Portfolio Section ======= -->
   	<section id="portfolio" class="portfolio">
      <div class="container">

        <div class="section-title">
          <h2>박람회 목록</h2>
          <p>Show honey에서만 볼 수 있는 다양한 박람회</p>
        </div>

        <div class="row portfolio-container">
		<c:forEach var="exhibition" items="${list }">
          <div class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp">
            <div class="portfolio-wrap">
              <figure>
                <img src="assets/img/portfolio/exhibition2.jpg" class="img-fluid" alt="">                
                <a href="ticketList.do" class="link-details" title="티켓 구매하러 가기"><i class="fa fa-ticket-alt" style='font-size:24px'></i></a>
                
              </figure>

              <div class="portfolio-info">
                <h4>${exhibition.exhibition_no}.${exhibition.exhibition_name }</h4>
                <p>${exhibition.exhibition_start_date } ~ ${exhibition.exhibition_end_date }</p>
                <p><button type="button" class="btn btn-primary" data-toggle="" 
      onclick="location.href='customerBoothList.do?exhibition_no=${exhibition.exhibition_no}'">박람회입장</button>
                	</div>
            </div>
          </div>
		</c:forEach>
          <!-- <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.1s">
            <div class="portfolio-wrap">
              <figure>
                <img src="assets/img/portfolio/exhibition2.jpg" class="img-fluid" alt="">
                <a href="portfolio-details.html" class="link-details" title="티켓 구매하러 가기"><i class="bx bx-link"></i></a>
              </figure>

              <div class="portfolio-info">
                <h4>꽃 박람회</h4>
                <p>2020/05/05~2020/05/06</p>
                <p><button type="button" onclick="location.href='adminExhibitionManage.do'" class="btn btn-primary">부스입장</button>
                	<button type="button" onclick="location.href='adminExhibitionManage.do'" class="btn btn-primary">발표회입장</button></p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp" data-wow-delay="0.2s">
            <div class="portfolio-wrap">
              <figure>
                <img src="assets/img/portfolio/exhibition2.jpg" class="img-fluid" alt="">
                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bx bx-link"></i></a>
              </figure>

              <div class="portfolio-info">
                <h4>타이어 박람회</h4>
                <p>2020/05/10~2020/05/11</p>
                <p><button type="button" onclick="location.href='adminExhibitionManage.do'" class="btn btn-primary">부스입장</button>
                	<button type="button" onclick="location.href='adminExhibitionManage.do'" class="btn btn-primary">발표회입장</button></p>
              </div>
            </div>
          </div> -->
	
          

        </div>

      </div>
    </section>
 
    

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

