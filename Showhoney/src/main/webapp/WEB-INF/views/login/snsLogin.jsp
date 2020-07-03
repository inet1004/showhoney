<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<!------ Include the above in your HEAD tag ---------->
<link href="css/login.css" rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<title>Insert title here</title>

<script type="text/javascript">
	$(document).ready(function(e) {
		$('#login').click(function() {

			// 입력 값 체크
			if ($.trim($('#customer_id').val()) == '') {
				alert("아이디를 입력해 주세요.");
				$('#customer_id').focus();
				return;
			} else if ($.trim($('#customer_pw').val()) == '') {
				alert("패스워드를 입력해 주세요.");
				$('#customer_pw').focus();
				return;
			}

			//전송
			$('#loginFrm').submit();
		});

	});
</script>


</head>
<body>

<br><p/>
<br><p/>
<br><p/>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">고객 로그인</h3>
					</div>
					<div class="panel-body">

						<c:choose>
							<c:when test="${empty sessionScope.customer_id}">
								<!-- 로그인이 안되어 있으면 -->
								<form id="loginFrm" name="loginFrm" action="loginCheck.do"
									method="post">
									<div class="form-group">
										<input class="form-control" placeholder="your id" type="text"
											name="customer_id" id="customer_id" type="text">
									</div>
									<div class="form-group">
										<input class="form-control" placeholder="Password"
											type="password" name="customer_pw" id="customer_pw" value="">
									</div>
									<input class="btn btn-lg btn-success btn-block" type="submit"
										id="login" value="Login">
								</form>
							</c:when>
							<c:otherwise>
								<h3>${sessionScope.customer_id}님환영합니다.</h3>
								<a href="logout.do">로그아웃</a>
							</c:otherwise>
						</c:choose>
						<div class="checkbox">
							<c:choose>
								<c:when test="${param.msg == '실패'}">
										!! 아이디 또는 패스워드가 틀렸습니다. !!
									</c:when>
								<c:otherwise>
										<center> 아이디와 패스워드를 입력하세요. </center>
									</c:otherwise>
							</c:choose>
						</div>

						</fieldset>
						</form>
						<hr />

						<center>
							<h4>소셜 로그인</h4>
							<c:choose>
								<c:when test="${sessionId != null}">
									<h2>네이버 아이디 로그인 성공하셨습니다!!</h2>
									<h3>'${sessionId}' 님 환영합니다!</h3>
									<h3>
										<a href="logout.do">로그아웃</a>
									</h3>
								</c:when>
								<c:otherwise>

									<!-- 네이버 로그인 창으로 이동 -->
									<div id="naver_id_login" style="text-align: center">
										<a href="${url}"> <img width="223"
											src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
									</div>
									<br>
								</c:otherwise>
							</c:choose>
						</center>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div align="center">

		<br>
		<p>
			<strong>항상 ShowHoney를 사랑해주셔서 감사합니다</strong>
		</p>
		<br>
		<p />
		<a href="/core/" alt="홈으로"><i class="fas fa-landmark  fa-3x"></i></a>
		<br> 홈으로 가기

	</div>

</body>

</html>


