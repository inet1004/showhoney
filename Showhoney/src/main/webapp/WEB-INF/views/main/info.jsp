<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>info</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body, h1 {
	font-family: "Raleway", sans-serif;
}

a {
	font-size: 20px;
	font-color: black;
}

.container {
	max-width: 90%;
}
</style>
</head>
<body id="page-top">

	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">SHOWHONEY</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">


				<c:choose>
					<c:when test="${not empty sessionScope.customer_id}">

						<ul class="navbar-nav ml-auto my-2 my-lg-0">
							<!--  <li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="doing.do">공사중</a></li>-->
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="ask.do">문의사항</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="logout.do">로그아웃</a></li>
						</ul>

					</c:when>
					<c:when test="${not empty sessionScope.company_user_id}">

						<ul class="navbar-nav ml-auto my-2 my-lg-0">
							<!--<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="doing.do">공사중</a></li>-->
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="ask.do">문의사항</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="logout.do">로그아웃</a></li>
						</ul>

					</c:when>
					<c:otherwise>

						<ul class="navbar-nav ml-auto my-2 my-lg-0">
							<!-- <li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="doing.do">공사중</a></li> -->
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="ask.do">문의사항</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="loginType.do">로그인</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="joinType.do">회원가입</a></li>
						</ul>

					</c:otherwise>
				</c:choose>

			</div>
		</div>
	</nav>


	<!-- Header -->
	<header class="masthead d-flex">
		<div class="container text-center my-auto">
			<img src="img/info/logo.png" style="width: 30%;">
		</div>
		<div class="overlay"></div>
	</header>


	<!-- Bootstrap core JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>


</body>
</html>
