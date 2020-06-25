<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	function test(){
		if(!document.frm.ask_title.value){
			alert("제목을 입력해주세요");
			document.frm.ask_title.focus();
			return false;
		}
		
		if(!document.frm.ask_contents.value){
			alert("내용을 입력해주세요");
			document.frm.ask_contents.focus();
			return false;
		}
		
		if(!document.frm.ask_name.value){
			alert("닉네임을 입력해주세요");
			document.frm.ask_name.focus();
			return false;
		}		
		
		alert("문의등록 완료 되었습니다.");
		return true;
	}
</script>
<h1 align="center">문 의 하 기</h1><br>
<form id="frm" name="frm" action="InsertAskWrite.do" method="post" onsubmit="return test()">
<div align="center">
<table border="1">		
	<tr height="50">
		<td width="100">제목</td>
		<td width="100"><input type="text" id="ask_title" name="ask_title" size="50"></td>
	</tr>
	
	<tr>
		<td>내용</td>
		<td><textarea name="ask_contents" id="ask_contents" rows="4" cols="50"></textarea></td>
	</tr>
	
	<tr height="50">
		<td>닉네임</td>
		<td><input type="text" id="ask_name" name="ask_name" size="50"></td>
	</tr>
</table><br>
	<input type="submit" value="등록하기" class="btn btn-primary"> 
	</div>
	</form>
</body>
</html>