<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="50kb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="UTF-8">
	<title>Room</title>
	<style>
		*{
			margin:0;
			padding:0;
		}
		.container{
			width: 500px;
			margin: 0 auto;
			padding: 25px
		}
		.container h1{
			text-align: left;
			padding: 5px 5px 5px 15px;
			color: #FFBB00;
			border-left: 3px solid #FFBB00;
			margin-bottom: 20px;
		}
		.roomContainer{
			background-color: #F6F6F6;
			width: 500px;
			height: 500px;
			overflow: auto;
		}
		.roomList{
			border: none;
		}
		.roomList th{
			border: 1px solid #FFBB00;
			background-color: #fff;
			color: #FFBB00;
		}
		.roomList td{
			border: 1px solid #FFBB00;
			background-color: #fff;
			text-align: left;
			color: #FFBB00;
		}
		.roomList .num{
			width: 75px;  /* 75px */
			text-align: center;
		}
		.roomList .room{
			width: 350px;
		}
		.roomList .go{
			width: 71px;
			text-align: center;
		}		
		button{
			background-color: #FFBB00;
			font-size: 14px;
			color: #000;
			border: 1px solid #000;
			border-radius: 5px;
			padding: 3px;
			margin: 3px;
		}
		.inputTable th{
			padding: 3px;
		}
		.inputTable input{
			width: 250px; /* 330px */
			height: 25px;
		}		
		
	</style>
</head>

<script type="text/javascript">
	var ws;
	var b = "${not empty sessionScope.customer_id}";
	
	window.onload = function(){
		getRoom();
		createRoom();
	}

	function getRoom(){
		commonAjax('/core/getRoom', "", 'post', function(result){   // /getRoom
			createChatingRoom(result, 1);
		});
	}
	
	function createRoom(){  
		$("#createRoom").click(function(){
			var msg = {	roomName : ${param.booth_no} + ":" + $('#roomName').val(), booth_no: ${param.booth_no} }; //방이름 앞에 부스번호를 붙임 
			commonAjax('/core/createRoom', msg, 'post', function(result){   // /createRoom
				createChatingRoom(result, 2);
			});
			$("#roomName").val("");
		});
	}
	

	function goRoom(number, name){
		//alert("/moveChating?roomName="+name+"&"+"roomNumber="+number);
		//location.href="/core/moveChating?roomName="+name+"&"+"roomNumber="+number;  // /moveChating
		// "" 안에 모두 넣어 주어야 함, + 사용시 받는 쪽에서 변수로 봄
		location.href="/core/moveChating?booth_no="+${param.booth_no}+"&"+"roomName="+name+"&"+"roomNumber="+number;  // /moveChating
		//location.href="/core/moveChating?booth_no=${param.booth_no}&roomName=name&roomNumber=number";  // /moveChating
	}

	function createChatingRoom(res, a){
		//alert("res[1].status :" + res[1].status);
		//alert(a + "<== 1은 테이블 그냥 불러오는 경우, 2는 방만드는 경우");
		if(a == 1){  
			if(res != null){
				var tag = "<tr><th class='num'>순서</th><th class='room'>&nbsp;&nbsp;&nbsp;&nbsp;방 이름</th><th class='go'>입장</th></tr>";
				res.forEach(function(d, idx){
					var rn = d.roomName.trim();
					var roomNumber = d.roomNumber;
					var status = d.status;
					var b_no = ${param.booth_no};
						if(b_no == d.booth_no) {
							if(status == "yes") {
								tag += "<tr>"+
											"<td class='num'>"+(idx+1)+"</td>"+
											"<td class='room'>"+ rn +"</td>"+
											"<td class='go'><button type='button' class='btn btn-primary' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
										"</tr>";	
							}else {
								tag += "<tr>"+
								"<td class='num'>"+(idx+1)+"</td>"+
								"<td class='room'>"+ rn +"</td>"+
								"<td class='go'><button type='button' class='btn btn-dark' >불가</button></td>" +
							"</tr>";									
							}
						}		
					
				}); 
				$("#roomList").empty().append(tag);
			}
		}else {
			if(res != null){
				var tag = "<tr><th class='num'>순서</th><th class='room'>&nbsp;&nbsp;&nbsp;&nbsp;방 이름</th><th class='go'>입장</th></tr>";
				res.forEach(function(d, idx){
					var rn = d.roomName.trim();
					var roomNumber = d.roomNumber;
					tag += "<tr class='" + ${param.booth_no} +"'>"+
								"<td class='num'>"+(idx+1)+"</td>"+
								"<td class='room'>"+ rn +"</td>"+
								"<td class='go'><button type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
							"</tr>";	
				});
				$("#roomList").empty().append(tag);
			}
		}
	}

	function commonAjax(url, parameter, type, calbak, contentType){
		$.ajax({
			url: url,
			data: parameter,
			type: type,
			contentType : contentType!=null?contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success: function (res) {
				calbak(res);
			},
			error : function(err){
				console.log('error');
				calbak(err);
			}
		});
	}
</script>

<body>
	<div class="container">
	<br><p/>
	<br><p/>
		<h1>채팅방</h1>
		<h4>( Booth: ${param.booth_no })</h4>

		<c:choose>
			<c:when test="${not empty sessionScope.customer_id}">
				<h5>고객회원: [ ${sessionScope.customer_id} ]님 환영합니다.</h5>
				<a href="logout.do">&nbsp;&nbsp;*로그아웃 하기 &nbsp;&nbsp;</a>
			</c:when>
			<c:when test="${not empty sessionScope.company_user_id}">
				<h5>기업회원: [ ${sessionScope.company_user_id} ]님 환영합니다.</h5>
				<a href="logout.do">&nbsp;&nbsp;*로그아웃 하기 &nbsp;&nbsp;</a>
			</c:when>
			<c:otherwise>
				<h5>로그인이 필요한 서비스입니다.</h5>
				<a href="snslogin.do">&nbsp;&nbsp;*고객 로그인 &nbsp;&nbsp;</a>
				<a href="loginCom.do">&nbsp;&nbsp;*기업로그인 </a>
			</c:otherwise>
		</c:choose>

		<div id="roomContainer" class="roomContainer">
			<table id="roomList" class="roomList"></table>
		</div>
		<div>
			<table class="inputTable" width="500">
			
		<c:choose>
			<c:when test="${not empty sessionScope.customer_id}">
				<tr bgcolor="yellowgreen" colspan="3">
					<th width="500" align="center"><h5> - 채팅방에 입장하셔서 문의 바랍니다 - </h5></th>
				</tr>
			</c:when>
			<c:otherwise>
				<tr bgcolor="yellowgreen">
					<th width="100" align="center">&nbsp;&nbsp;&nbsp;&nbsp;방 제목</th>
					<th width="300"><input type="text" name="roomName" id="roomName" maxlength=10></th>
					<th width="100"><button id="createRoom">방 생성</button></th>
				</tr>
			</c:otherwise>
		</c:choose>
			
			</table>
		</div>
	</div>
</body>
</html>