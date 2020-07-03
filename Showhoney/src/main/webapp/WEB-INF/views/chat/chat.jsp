<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="50kb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
	<title>Chating</title>
	<style>
		*{
			margin:0;
			padding:0;
		}
		.container{
			width: 500px;
			margin: 0 auto;
			padding: 25px;
			height: 750px;  /*추가 */
		}
		.container h1{
			text-align: left;
			padding: 5px 5px 5px 15px;
			color: #FFBB00;
			border-left: 3px solid #FFBB00;
			margin-bottom: 20px;
		}
		.chating{
			background-color: #000;
			width: 500px;
			height: 450px;
			overflow: auto;
		}
		.chating .me{
			color: #F6F6F6;
			text-align: right;
		}
		.chating .others{
			color: #FFE400;
			text-align: left;
		}
		input{
			width: 250px; /* 330px */
			height: 35px; /* 25px */
		}
		#yourMsg{
			display: none;
		}
		.msgImg{
			width: 200px;
			height: 125px;
		}
		.clearBoth{
			clear: both;
		}
		.img{
			float: right;
		}
	</style>
</head>

<script type="text/javascript">
	var ws;
	
	function leaveChating(){  
			location.href="/core/leaveChating?booth_no=${param.booth_no}&roomName=${param.roomName}&roomNumber=${param.roomNumber}";  // /leaveChating
	}
	
	function wsOpen(){
		//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다. // 서버는 localhost (또는 192.168.0.93 기본포트 일경우)  -- client는 서버의 ip를 쳐야함
		var uri = "ws://" + location.host + "/core/chating/"+ $("#roomNumber").val();
		//alert(uri);
		ws = new WebSocket(uri);
//		ws = new WebSocket("ws://" + location.host + "/core/chating/"+$("#roomNumber").val());
//		ws = new WebSocket("ws://localhost:89/core/Chating?roomName=rrr&roomNumber=4");
		wsEvt();
	}
		
	function wsEvt() {
		ws.onopen = function(data){
			//소켓이 열리면 동작
		}
		
		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			if(msg != null && msg.type != ''){
				//파일 업로드가 아닌 경우 메시지를 뿌려준다.
				var d = JSON.parse(msg);
				if(d.type == "getId"){
					var si = d.sessionId != null ? d.sessionId : "";
					if(si != ''){
						$("#sessionId").val(si); 
					}
				}else if(d.type == "message"){
					if(d.sessionId == $("#sessionId").val()){
						$("#chating").append("<p class='me'>나 : " + d.msg + "</p>");	
					}else{
						$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
					}
						
				}else{
					console.warn("unknown type!")
				}
			}else{
				var url = URL.createObjectURL(new Blob([msg]));
				alert("파일 업로드한 경우 업로드한 파일을 채팅방에 뿌려준다." + url);
				$("#chating").append("<div class='img'><img class='msgImg' src="+url+"></div><div class='clearBoth'></div>");
			}
		}

		document.addEventListener("keypress", function(e){
			if(e.keyCode == 13){ //enter press
				send();
			}
		});
	}

	function chatName(){
		var userName = $("#userName").val();
		if(userName == null || userName.trim() == ""){
			alert("사용자 이름을 입력해주세요.");
			$("#userName").focus();
		}else{
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}

	function send() {
		var option ={
			type: "message",
			roomNumber: $("#roomNumber").val(),
			sessionId : $("#sessionId").val(),
			userName : $("#userName").val(),
			msg : $("#chatting").val()
		}
		ws.send(JSON.stringify(option))
		$('#chatting').val("");
	}

	function fileSend(){
		//alert("fileSend() 시작함...");
		var file = document.querySelector("#fileUpload").files[0];
		//alert(file);  // null 올라옴
		var fileReader = new FileReader();
		fileReader.onload = function() {
			var param = {
				type: "fileUpload",
				file: file,
//				file:"D:\_FinalProject_\이미지샘플\안드로이드.png",
				roomNumber: $("#roomNumber").val(),
				sessionId : $("#sessionId").val(),
				msg : $("#chatting").val(),  //원본
				userName : $("#userName").val()
			}
			alert(JSON.stringify(param));
			ws.send(JSON.stringify(param)); //파일 보내기전 메시지를 보내서 파일을 보냄을 명시한다.
		    arrayBuffer = this.result;
			ws.send(arrayBuffer); //파일 소켓 전송
			//alert("ws.send완료");
		};
		fileReader.readAsArrayBuffer(file);
	}
</script>
<body>
	<br><p/>
	<br><p/>
	<div id="container" class="container">
		<h1>${roomName}의 채팅방</h1>
		<h4>( Booth: ${param.booth_no } )</h4>
	
		<c:choose>
			<c:when test="${not empty sessionScope.customer_id}">
				<h5>고객회원: [ ${sessionScope.customer_id} ]님 환영합니다.</h5>
				<button type="button" onclick="leaveChating()" id="leaveChating">채팅방 나가기</button>
			</c:when>
			<c:when test="${not empty sessionScope.company_user_id}">
				<h5>기업회원: [ ${sessionScope.company_user_id} ]님 환영합니다.</h5>
				<a href="room?booth_no=${param.booth_no }">&nbsp;&nbsp;*채팅방 나가기 &nbsp;&nbsp;</a>
			</c:when>
			<c:otherwise>
				<h5>로그인이 필요한 서비스입니다.</h5>
			</c:otherwise>
		</c:choose>

		<input type="hidden" id="sessionId" value="">
		<input type="hidden" id="roomNumber" value="${roomNumber}">
		
		<div id="chating" class="chating">
		</div>
		
		<div id="yourName">
			<table class="inputTable" width="500">
				<tr bgcolor="yellowgreen">
					<th width="100" height="55" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;사용자명</th>
					<th width="300"><input type="text" name="userName" id="userName"></th>
					<th width="100"><button  type="button"  onclick="chatName()" id="startBtn">이름 등록</button></th>
				</tr>
			</table>
		</div>
		<div id="yourMsg">
			<table class="inputTable" width="500">
				<tr bgcolor="yellow">
					<th width="100">&nbsp;&nbsp;메시지</th>
					<th width="300" height="55" valign="middle"><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
					<th width="100"><button onclick="send()" id="sendBtn">보내기</button></th>
				</tr>
				<tr bgcolor="yellowgreen">
					<th>&nbsp;&nbsp;파일업로드</th>
					<th><input type="file" id="fileUpload"></th>
					<th height="55" valign="middle"><button onclick="fileSend()" id="sendFileBtn">파일올리기</button></th>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>