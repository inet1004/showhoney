<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<script>
	var IMP=window.IMP;
	IMP.init("imp53970198");

	 function requestPay(exhibition_name, ticket_price, ticket_no) {
	      // IMP.request_pay(param, callback) 호출
	      IMP.request_pay({ // param
	          pg: "inicis",
	          pay_method: "card",
	          merchant_uid: "SHOW" + new Date().getTime(), //결제내역 DB에서 Primary Key 가져오기	       

	          name: exhibition_name,	//DB에서 결제내역과 티켓 테이블을 조인해서 가져오는 티켓이름(TICKET_NO)
	          amount: ticket_price,	//DB에서 결제내역의 PAYMENT_SUM 불러오기
	          buyer_name: "${sessionScope.customer_id }",
	          buyer_tel : ticket_no

	      }, 
	      function (rsp) {
	          if (rsp.success) {
	              jQuery.ajax({
	                  url: "PaymentResult.do", // 가맹점 서버
	                  method: "POST",
	                  dataType:"json",
	                  data: { payment_approval_number:rsp.merchant_uid, payment_type:rsp.pay_method, payment_sum:rsp.paid_amount, 
	                	  customer_id:rsp.buyer_name, ticket_no:rsp.buyer_tel	                		  
                  	}
	              }).done(function (data) {
	                // 가맹점 서버 결제 API 성공시 로직
	            	  var msg = '결제가 완료되었습니다.\n';
				        msg += '카드 승인번호 : ' + rsp.apply_num + '\n';
				        msg += '결제 티켓 : ' + rsp.name + '\n'; 
				        msg += '결제 방식 : ' + rsp.pay_method + '\n';
				        msg += '결제 금액 : ' + rsp.paid_amount + '\n';
				        msg += '주문자 성명 : ' + rsp.buyer_name + '\n';
				        //document.console.log(rsp.imp_uid);
				        alert(msg); 
				        location.href='<%=request.getContextPath()%>/success.do';
	              })
	            } else {
	            	 var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				    	alert(msg);
				    }
	          });
	 }
	 
	  </script>

<body>

	<h1 align="center">쿠폰내역 LIST</h1>
	<br>
	<div> 
	<c:forEach var="ticket" items="${tlist }">
		<div align="center" class="div1">
		<p/>
			<p align="center">NO.${ticket.ticket_no }</p>
			<h1 align="center">${ticket.exhibition_name }&nbsp;
			
			<button type="button" class="btn btn-info" data-toggle="" 
			onclick="requestPay('${ticket.exhibition_name }','${ticket.ticket_price }','${ticket.ticket_no }')">구매</button></h1>			
			
			<p align="center">${ticket.exhibition_start_date }~${ticket.exhibition_end_date }</p>
			<p align="center">${ticket.ticket_price }원</p>
		</div>
		</c:forEach>
		</div>

</body>
</html>