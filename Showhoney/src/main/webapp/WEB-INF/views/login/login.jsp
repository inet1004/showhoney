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
	<title>로그인</title>
	<script src="resources/jQuery/jquery-3.4.1.min.js"></script>
</head>
<body>
	<h1>로그인 페이지</h1>
	<hr />
		<c:choose>
			<c:when test="${empty sessionScope.userId}">
			<!-- 로그인이 안되어 있으면 -->
				<form id="loginFrm" name="loginFrm" action="loginCheck.do">
					<table>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="customer_id" id="customer_id" placeholder="10글자" maxlength="10"></td>
						</tr>
						<tr>
							<td>패스워드</td>
							<td><input type="password" name="customer_pw" id="customer_pw" maxlength="20"></td>
						</tr>
						<c:if test="${msg == '실패'}">
							<tr>
								<td colspan=2>
									아이디 또는 패스워드가 틀렸습니다.
								</td>
							</tr>
						</c:if>
						<tr>
							<td colspan=2>
								<input type="button" id="login" value="로그인" />
							</td>
						</tr>
					</table>
				</form>
			</c:when>
			<c:otherwise>
				<h3>${sessionScope.userId}님 환영합니다.</h3>
				<a href="logout.do">로그아웃</a>
			</c:otherwise>
		</c:choose>
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
</html>