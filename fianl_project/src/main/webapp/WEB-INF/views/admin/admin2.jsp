<%@page import="com.naver.dto.PageTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Admin</title>
<!-- Bootstrap Fremwork Main Css -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <!-- All Plugins css -->
    <link rel="stylesheet" href="/resources/css/plugins.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="/resources/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="/resources/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="/resources/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="/resources/css/custom.css">
	<link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/influencer/common.css" media="all" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

<jsp:include page="../public/header.jsp"></jsp:include>
</head>
<body>
<div id="wrap" class="">
 mid=? ${login.m_id} !?
		<c:if test="${login.m_admin == 1}">
		시이발
		</c:if>
		ㅅ
	<hr class="layout" />
	<div id="container">
<%-- 		<c:if test="${login.m_admin == 1}"> --%>
<%-- 			<jsp:include page="../public/adminheaderside.jsp"></jsp:include> --%>
<%-- 		</c:if> --%>
<!-- 		<hr class="layout" /> -->
		<div id="content">
			<div class="gridSet nowrap">
				<div class="grid">
					<div class="dashArea">
						<div class="mTitle">
							<h2>오늘 매출 현황</h2>
							<span class="desc">(현재날짜)</span>
							<span class="cManual eSmartMode"></span>
						</div>
						
						<div class="mDashSales">
							<a class="item order">
								<strong class="title">주문 
									<span id="orderCount" class="count">(**건)</span>
								</strong>
								
								 <span class="data">
								  	<strong id="orderPrice" class="value">**</strong>
								  	<span class="unit">원</span>
								</span>
							</a>
							
							 <a class="item payment">
								 <strong class="title">결제
								 	<span id="payedCount" class="count">(**건)</span>
								</strong> 
								<span class="data">
									<strong id="payedPrice" class="value">**</strong>
									<span class="unit">원</span>
								</span>
							</a> 
							
							<a class="item refund">
								<strong class="title">환불 
									<span id="refundCount" class="count">(**건)</span>
								</strong> 
								<span class="data">
									<strong id="refundPrice" class="value">**</strong>
									<span class="unit">원</span>
								</span>
							</a>
						</div>
						
						<div class="mTitle">
							<h2>주문현황</h2>
							<span class="desc">(최근 1개월 기준)</span>
						</div>
						
						<div class="gridSet">
							<div class="mDashStatus order">
								<a
									href="" id="no_pay_cnt" class="item"> <strong class="title">입금전</strong> <span
									class="count">**</span>
								</a>
							</div>
							<div class="mDashStatus order">
								<a href="" id="is_shipped_f" class="item">
									<strong class="title">배송준비중</strong>
									<span class="count">**</span>
								</a>
							</div>
							
							<div class="mDashStatus order">
								<a href="" id="is_shipped_w" class="item"> 
									<strong class="title">배송대기</strong>
									<span class="count">**</span>
								</a>
							</div>
							
							<div class="mDashStatus order">
								<a href="" id="is_shipped_m" class="item"> <strong class="title">배송중</strong>
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
								<a href="" id="cancel_count" class="item"> 
									<strong class="title">취소</strong> 
									<span class="count">**</span>
								</a>
							</div>
							
							<div class="mDashStatus cs">
								<a href="" id="change_count" class="item"> 
									<strong class="title">교환</strong> 
									<span class="count">**</span>
								</a>
							</div>
							
							<div class="mDashStatus cs">
								<a href="" id="return_count" class="item"> 
									<strong class="title">반품</strong> 
									<span class="count">**</span>
								</a>
							</div>
							
							<div class="mDashStatus cs">
								<a href="" id="before_refund" class="item"> 
									<strong class="title">환불</strong>
									<span class="count">**</span>
								</a>
							</div>
							
						</div>
						
						<div class="gridSet nowrap notify">
							<div class="grid notice">
								<div class="mDashNotice">
									<div class="tab eTab">
										<ul>
											<li class="eTab_notice selected"><a href="#tabContent1">공지사항</a></li>
											<li class="eTab_update"><a href="#tabContent2">업그레이드</a></li>
											<li class="eTeb_market"><a href="#tabContent3">오픈마켓 소식</a></li>
											<li class="eTab_faq"><a href="#tabContent4">자주묻는 질문</a></li>
										</ul>
									</div>
									
									<div class="tabContent" id="tabContent1">
										<div class="news">
										<ul class="list">
											<li> <a href="#none"
												data-url=""><strong>[안내]
											샐리 인스타 위젯 앱 서비스 종료 안내</strong></a> <span class="date">2020-03-12</span>
											</li>
											<li> <a href="#none"
												data-url=""><strong>[필독]
											정보통신서비스 제공자 등의 개인정보보호 손해배상 책임보험 가입 등 의무화 관련 안내</strong></a> <span class="date">2020-03-04</span>
											</li>
											<li> <a href="#none"
												data-url=""><strong>[안내]
											[플러스앱] 신규 앱 Google Play 스토어에서 조회 불가현상 관련 안내</strong></a> <span class="date">2019-10-08</span>
											</li>
											<li> <a href="#none"
												data-url="">[안내]
											3월 19일(목) 휴대폰 인증 서비스 개선 작업 안내</a> <span class="icoNoticeNew">New</span> <span
												class="date">2020-03-17</span>
											</li>
											<li> <a href="#none"
												data-url="">[안내]
											3월 20일(금) 페이팔 유지보수 작업 안내</a> <span class="icoNoticeNew">New</span> <span
												class="date">2020-03-17</span>
											</li>
										</ul>
										<a href="#none"
											data-url=""
											class="btnMore">더보기</a>
										</div>
									</div>
									<div class="tabContent" id="tabContent2" style="display: none;">
										<div class="news">
											<ul class="list">
												<li>
													<a href="#none" data-url="">[부가서비스] 엑심베이 바로 오픈 서비스 적용 안내</a>
													 <span class="icoNoticeNew">New</span> 
													 <span class="date">2020-03-19</span>
												</li>
												
												<li> <a href="#none" data-url="">[게시판관리] 재구매 상품 및 품목별 상품 후기 작성 관련 개선 안내</a> <span class="icoNoticeNew">New</span> 
													<span class="date">2020-03-18</span>
												</li>
												
												<li> <a href="#none" data-url="">[프로모션] 카카오싱크 서비스 신규 추가 안내</a> <span class="icoNoticeNew">New</span>
													<span class="date">2020-03-18</span>
												</li>
												<li> 
													<a href="#none" data-url="">[주문관리] [사전안내] 주문 CS처리(취소/교환/반품) 시 배송비 분할 기능 추가 사전안내</a> 
													<span class="date">2020-03-11</span>
												</li>
												<li> 
													<a href="#none" data-url="">[부가서비스] KCP PG사 정기배송(정기결제) 서비스 오픈</a> <span class="date">2020-03-11</span>
												</li>
											</ul>
											<a href="#none"
												data-url="" class="btnMore">더보기</a>
										</div>
									</div>
									
									<div class="tabContent" id="tabContent3" style="display: none;">
										<div class="news">
											<ul class="list">
												<li>
													<img src="" alt="11번가" />
													<a href="#none" data-url=" ?>">
													셀러애널리틱스 스토어쿠폰 효과분석 변경사항 안내 </a> <span class="date">2020-03-19</span>
												</li>
												
												<li> <img src="" alt="11번가" />
													<a href="#none" data-url=" ?>">
													월간 십일절 3월호 &#8211; 이달의 우수 스토어 발표 </a> <span class="date">2020-03-19</span>
												</li>
												<li> 
													<img src="" alt="11번가" />
													<a href="#none" data-url=" ?>">셀러애널리틱스 오늘의 결제/방문 현황 개선 안내 </a> 
													<span class="date">2020-03-19</span>
												</li>
												<li> <img src="" alt="11번가" />
													<a href="#none" data-url=" ?>"> 통신판매 농산물 판매시 원산지 표시 준수 관련 안내 </a> 
													<span class="date">2020-03-18</span>
												</li>
												<li> <img src="" alt="11번가" />
													<a href="#none" data-url=" ?>"> 한국기업데이터(KED), 중소상공인 대상 공공기관용 신용평가등급서 무료 발급 안내 </a> 
													<span class="date">2020-03-17</span>
												</li>
											</ul>
											<a href="#none" data-url="" class="btnMore">더보기</a>
										</div>
									</div>
									
									<div class="tabContent" id="tabContent4" style="display: none;">
										<div class="news"> </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- [ content ] -->
	</div>
	<jsp:include page="../public/footer.jsp"></jsp:include>
</div>

</body>
</html>
