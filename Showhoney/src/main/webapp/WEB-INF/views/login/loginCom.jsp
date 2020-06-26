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
	<title>기업 로그인</title>
	<script src="resources/jQuery/jquery-3.4.1.min.js"></script>
	
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

	<h1>기업로그인 페이지</h1>
	<br><p/>

		<c:choose>
			<c:when test="${empty sessionScope.company_user_id}">
			<!-- 로그인이 안되어 있으면 -->
				<form id="loginFrmCom" name="loginFrmCom" action="loginCheckCom.do">
					<table>
						<tr class="space" id="space">
							<td>아이디</td>
							<td><input type="text" name="company_user_id" id="company_user_id" placeholder="최대 10글자" maxlength="10"></td>
						</tr>
						<tr  class="space" id="space">
							<td>패스워드</td>
							<td><input type="password" name="company_user_pw" id="company_user_pw" maxlength="20"></td>
						</tr>
						<c:if test="${msgCom == '실패'}">
							<tr>
								<td colspan=2>
									아이디 또는 패스워드가 틀렸습니다.
								</td>
							</tr>
						</c:if>
						<tr height="30"></tr>
						<tr>
							<td colspan=2 align="center">
								<input type="button" id="loginCom" value="로그인" />
							</td>
						</tr>
					</table>
				</form>
			</c:when>
			<c:otherwise>
				<h3>${sessionScope.company_user_id}님 환영합니다.</h3>
				<a href="logout.do">로그아웃</a>
			</c:otherwise>
		</c:choose>
		
	</div>	
		
</body>
<script type="text/javascript">
	$(document).ready(function(e){
		$('#loginCom').click(function(){

			// 입력 값 체크
			if($.trim($('#company_user_id').val()) == ''){
				alert("아이디를 입력해 주세요.");
				$('#company_user_id').focus();
				return;
			}else if($.trim($('#company_user_pw').val()) == ''){
				alert("패스워드를 입력해 주세요.");
				$('#company_user_pw').focus();
				return;
			}
			
			//전송
			$('#loginFrmCom').submit();
		});
		
	});
</script>

</html>