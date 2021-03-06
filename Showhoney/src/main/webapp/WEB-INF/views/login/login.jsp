<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>고객 로그인</title>
	<script src="resources/jQuery/jquery-3.4.1.min.js"></script>
<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	
<style>	
tr.space {
  border-bottom: 10px solid #fff;
}
</style>
	
</head>
<body>

	<div align="center">
	
	<br><p/>
	<br><p/>
	<br><p/>

	<h1>고객로그인 페이지</h1>
	<br><p/>

		<c:choose>
			<c:when test="${empty sessionScope.customer_id}">
			<!-- 로그인이 안되어 있으면 -->
				<form id="loginFrm" name="loginFrm" action="loginCheck.do"  method="post" >
					<table>
						<tr class="space" id="space">
							<td>아이디</td>
							<td><input type="text" name="customer_id" id="customer_id" placeholder="최대 10글자" maxlength="10"></td>
						</tr>
						<tr  class="space" id="space">
							<td>패스워드</td>
							<td><input type="password" name="customer_pw" id="customer_pw" maxlength="20"></td>
						</tr>
						<c:if test="${param.msg == '실패'}">
							<tr>
								<td colspan=2>
									아이디 또는 패스워드가 틀렸습니다.
								</td>
							</tr>
						</c:if>
						<tr height="30"></tr>
						<tr>
							<td colspan=2 align="center">
								<input type="button" id="login" value="로그인" />
							</td>
						</tr>
					</table>
				</form>
			</c:when>
			<c:otherwise>
				<h3>${sessionScope.customer_id}님 환영합니다.</h3>
				<a href="logout.do">로그아웃</a>
			</c:otherwise>
		</c:choose>
		
	</div>	
		
</body>

<script type="text/javascript">
	$(document).ready(function(e){
		$('#login').click(function(){

			// 입력 값 체크
			if($.trim($('#customer_id').val()) == ''){
				alert("아이디를 입력해 주세요.");
				$('#customer_id').focus();
				return;
			}else if($.trim($('#customer_pw').val()) == ''){
				alert("패스워드를 입력해 주세요.");
				$('#customer_pw').focus();
				return;
			}
			
			//전송
			$('#loginFrm').submit();
		});
		
	});
</script>

	
<div align="center">
	<p><strong>항상 ShowHoney를 사랑해주셔서 감사합니다</strong></p>
	<br><p/>
	<a href="/core/" alt="홈으로"><i class="fas fa-landmark  fa-3x"></i></a>
	<br>
	홈으로 가기
	
</div>

</html>