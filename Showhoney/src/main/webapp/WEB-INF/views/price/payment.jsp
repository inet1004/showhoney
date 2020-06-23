<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.2.4.min.js" type="application/javascript"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function goPayment(){
		BootPay.request({
			price: '1000', //실제 결제되는 가격
			application_id: '5ee04b8b2fa5c2001ebf2d50',
			name: '블링블링 마스카라', //결제창에서 보여질 이름
			pg: 'inicis',
			method: 'card', //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
			show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
			items: [
				{
					item_name: '나는 아이템', //상품명
					qty: 1, //수량
					unique: '123', //해당 상품을 구분짓는 primary key
					price: 1000, //상품 단가
					cat1: 'TOP', // 대표 상품의 카테고리 상, 50글자 이내
					cat2: '티셔츠', // 대표 상품의 카테고리 중, 50글자 이내
					cat3: '라운드 티', // 대표상품의 카테고리 하, 50글자 이내
				}
			],
			user_info: {
				username: 'hyunuk',
				email: 'pos3512@naver.com',
				addr: '대구광역시',
				phone: '010-1234-4567'
			},
			order_id: '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
			params: {callback1: '그대로 콜백받을 변수 1', callback2: '그대로 콜백받을 변수 2', customvar1234: '변수명도 마음대로'},
			account_expire_at: '2018-05-25', // 가상계좌 입금기간 제한 ( yyyy-mm-dd 포멧으로 입력해주세요. 가상계좌만 적용됩니다. )
			extra: {
			    start_at: '2019-05-10', // 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
				end_at: '2022-05-10', // 정기결제 만료일 -  기간 없음 - 무제한
		        vbank_result: 1, // 가상계좌 사용시 사용, 가상계좌 결과창을 볼지(1), 말지(0), 미설정시 봄(1)
		        quota: '0,2,3' // 결제금액이 5만원 이상시 할부개월 허용범위를 설정할 수 있음, [0(일시불), 2개월, 3개월] 허용, 미설정시 12개월까지 허용
			}
		}).error(function (data) {
			console.log(data);
		}).cancel(function (data) {
			console.log(data);
		}).ready(function (data) {
			console.log(data);
		}).confirm(function (data) {
			console.log(data);
			var enable = true; 
			if (enable) {
				BootPay.transactionConfirm(data); 
			} else {
				BootPay.removePaymentWindow(); 
			}
		}).close(function (data) {
		    console.log(data);
		}).done(function (data) {
			console.log(data);
		});
	}
</script>
<body>
	<h1 align="center">결제창 구현하기</h1>
	<button type="button" onclick="goPayment()" value="결제하기">결제하기</button>
</body>
</html>