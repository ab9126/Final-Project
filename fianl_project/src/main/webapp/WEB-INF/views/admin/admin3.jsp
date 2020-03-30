<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title> Admin</title>


</head>

<body>
	<div id="wrap" class="">
		<div id="header">
		</div>
		<!-- //header -->
		<hr class="layout" />
		<div id="container">
<%-- 			<jsp:include page="../public/adminheaderside.jsp"></jsp:include> --%>
			<hr class="layout" />
			<!-- Content Start -->
			<!-- [ content ] -->
			<div id="content">
				<div class="gridSet nowrap">
					<div class="grid">
						<div class="dashArea">
							<div class="mTitle">
								<h2>오늘 매출 현황</h2>
								<span class="desc">(03월 20일 22:10 기준)</span> <span
									class="cManual eSmartMode" code="MN"></span>
							</div>
							<div class="mDashSales">
								<a
									href="/admin/php/shop1/s_new/order_list.php?initSearchFlag=T&year1=2020&month1=03&day1=20&year2=2020&month2=03&day2=20&start_date=2020-03-20&end_date=2020-03-20&start_time=00:00&end_time=23:59&rows=20&searchSorting=order_desc&btnDate=9999&date_type=order_date&searchSorting=order_desc&memberType=1&shop_no_order=1&orderStatusPayment=all&orderStatusNotPayCancel=N&orderStatusCancel=N&orderSearchCancelStatus=all&orderStatusExchange=N&orderSearchExchangeStatus=all&orderStatusReturn=N&orderStatusRefund=N&orderSearchRefundStatus=all&orderSearchShipStatus=all&orderStatus[]=all&orderStatus[]=N10&orderStatus[]=N20&orderStatus[]=N22&orderStatus[]=N21&orderStatus[]=N30&orderStatus[]=N40&incoming=T&realclick=T"
									class="item order"> <strong class="title">주문 <span
										id="orderCount" class="count">(**건)</span></strong> <span class="data">
										<strong id="orderPrice" class="value">**</strong> <span
										class="unit">원</span>
								</span>
								</a> <a
									href="/disp/admin/shop1/report/DailyList?sStartDate=2020-03-20&sEndDate=2020-03-20&searchDateRange=0&&inflow=dashboard"
									class="item payment"> <strong class="title">결제 <span
										id="payedCount" class="count">(**건)</span></strong> <span class="data">
										<strong id="payedPrice" class="value">**</strong> <span
										class="unit">원</span>
								</span>
								</a> <a
									href="/disp/admin/shop1/report/DailyList?sStartDate=2020-03-20&sEndDate=2020-03-20&searchDateRange=0&&inflow=dashboard"
									class="item refund"> <strong class="title">환불 <span
										id="refundCount" class="count">(**건)</span></strong> <span class="data">
										<strong id="refundPrice" class="value">**</strong> <span
										class="unit">원</span>
								</span>
								</a>
							</div>

							<div class="mTitle">
								<h2>주문현황</h2>
							</div>
							
							<div class="gridSet">
								<div class="mDashStatus order">
									<a
										href="/admin/php/shop1/s/payment_list.php?rows=20&btnDate=9999&searchSorting=order_desc&date_type=order_date&payed[]=1&payed_sql_version=1&bank_info=0&memberType=1&shop_no_order=1&incoming=T&realclick=T&year1=2020&month1=02&day1=20&year2=2020&month2=03&day2=20&start_date=2020-02-20&end_date=2020-03-20&start_time=00:00&end_time=23:59"
										id="no_pay_cnt" class="item"> <strong class="title">입금전</strong>
										<span class="count">**</span>
									</a>
								</div>
								<div class="mDashStatus order">
									<a
										href="/admin/php/shop1/s_new/shipped_begin_list.php?rows=20&btnDate=9999&searchSorting=pay_date_asc&date_type=order_date&memberType=1&shop_no_order=1&incoming=T&realclick=T&year1=2020&month1=02&day1=20&year2=2020&month2=03&day2=20&start_date=2020-02-20&end_date=2020-03-20&start_time=00:00&end_time=23:59"
										id="is_shipped_f" class="item"> <strong class="title">배송준비중</strong>
										<span class="count">**</span>
									</a>
								</div>
								<div class="mDashStatus order">
									<a
										href="/admin/php/shop1/s_new/shipped_standby_list_ord_num.php?rows=20&btnDate=9999&searchSorting=order_desc&MSK[]=order_id&MSV[]=&order_id=Array&date_type=order_date&find_option=product_code&order_product_name=&order_product_code=&payed=&payed_sql_version=&bank_info=&memberType=1&group_no=&isMemAuth=&shipment_type=all&bunch=&shipmentMessage=&paystandard=choice&product_total_price1=&product_total_price2=&item_count=all&mkSaleType=M&mkSaleTypeChg=&paymentMethod=&is_eguarantee=&discountMethod=&shop_no_order=1&delvReady=&delvCancel=&orderStatusPayment=&orderStatusNotPayCancel=&orderStatusCancel=&orderSearchCancelStatus=&orderStatusExchange=&orderSearchExchangeStatus=&orderStatusReturn=&orderStatusRefund=&orderSearchRefundStatus=&orderSearchShipStatus=&orderStatus=&RefundType=&incoming=T&realclick=T&year1=2020&month1=02&day1=20&year2=2020&month2=03&day2=20&start_date=2020-02-20&end_date=2020-03-20&start_time=00:00&end_time=23:59"
										id="is_shipped_w" class="item"> <strong class="title">배송대기</strong>
										<span class="count">**</span>
									</a>
								</div>
								<div class="mDashStatus order">
									<a
										href="/admin/php/shop1/s/shipped_end_list.php?rows=20&btnDate=9999&searchSorting=order_desc&MSK[]=order_id&MSV[]=&order_id=Array&date_type=shipbegin_date&find_option=product_code&order_product_name=&order_product_code=&payed=&payed_sql_version=&bank_info=&memberType=1&group_no=&isMemAuth=&shipment_type=all&bunch=&shipmentMessage=&paystandard=choice&product_total_price1=&product_total_price2=&item_count=all&mkSaleType=M&mkSaleTypeChg=&paymentMethod=&is_eguarantee=&discountMethod=&shop_no_order=1&delvReady=&delvCancel=&orderStatusPayment=&orderStatusNotPayCancel=&orderStatusCancel=&orderSearchCancelStatus=&orderStatusExchange=&orderSearchExchangeStatus=&orderStatusReturn=&orderStatusRefund=&orderSearchRefundStatus=&orderSearchShipStatus=&orderStatus=&RefundType=&incoming=T&realclick=T&year1=2020&month1=02&day1=20&year2=2020&month2=03&day2=20&start_date=2020-02-20&end_date=2020-03-20&start_time=00:00&end_time=23:59"
										id="is_shipped_m" class="item"> <strong class="title">배송중</strong>
										<span class="count">**</span>
									</a>
								</div>
							</div>

							<div class="mTitle">
								<h2>취소 / 교환 / 반품 / 환불현황</h2>
								<span class="desc">(최근 1개월 기준)</span>
							</div>
							<div class="gridSet">
								<div class="mDashStatus cs">
									<a
										href="/admin/php/shop1/s/order_cancel.php?realclick=T&tabclick=F&tabStatus=all&memberType=1&sSearchDetailView=F&sIsOrderSearchNotAllowed=F&date_type=order_date&start_date=2020-02-20&year1=2020&month1=02&day1=20&end_date=2020-03-20&year2=2020&month2=03&day2=20&today=2020-03-20&searchPage=order_cancel&orderStatus[]=all"
										id="cancel_count" class="item"> <strong class="title">취소</strong>
										<span class="count">**</span>
									</a>
								</div>
								<div class="mDashStatus cs">
									<a
										href="/admin/php/shop1/s/order_change.php?realclick=T&tabclick=F&tabStatus=all&memberType=1&sSearchDetailView=F&sIsOrderSearchNotAllowed=F&date_type=order_date&start_date=2020-02-20&year1=2020&month1=02&day1=20&end_date=2020-03-20&year2=2020&month2=03&day2=20&today=2020-03-20&searchPage=order_change&cs_type=exchange&orderStatus[]=all"
										id="change_count" class="item"> <strong class="title">교환</strong>
										<span class="count">**</span>
									</a>
								</div>
								<div class="mDashStatus cs">
									<a
										href="/admin/php/shop1/s_new/order_returns.php?realclick=T&tabclick=F&tabStatus=all&memberType=1&sSearchDetailView=F&sIsOrderSearchNotAllowed=F&date_type=order_date&start_date=2020-02-20&year1=2020&month1=02&day1=20&end_date=2020-03-20&year2=2020&month2=03&day2=20&today=2020-03-20&cs_type=return&searchPage=order_returns&orderStatus[]=all&mode=return_post_req"
										id="return_count" class="item"> <strong class="title">반품</strong>
										<span class="count">**</span>
									</a>
								</div>
								<div class="mDashStatus cs">
									<a
										href="/admin/php/shop1/s_new/order_cash_refund_f.php?realclick=T&tabclick=F&tabStatus=all&listName=orderCashRefundselectedAll&searchPage=order_cash_refund_f&&sSearchDetailView=F&sIsOrderSearchNotAllowed=F&date_type=all_return_date&start_date=2020-02-20&year1=2020&month1=02&day1=20&end_date=2020-03-20&year2=2020&month2=03&day2=20&today=2020-03-20&orderStatus[]=all&RefundType=all&bank_info=0&RefundSubType=all&memberType=1"
										id="before_refund" class="item"> <strong class="title">환불</strong>
										<span class="count">**</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- [ content ] -->
			<span id="admngDebug"></span><span id="admngSide_2"></span>
		</div>
	</div>
</body>
</html>
















