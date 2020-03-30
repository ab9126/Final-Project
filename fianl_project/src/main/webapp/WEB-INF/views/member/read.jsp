<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="copyright" content="Copyright(c) Simplex Internet Inc. All Rights Reserved." />
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/influencer/common.css" media="all" charset="utf-8" />
    <script type="text/javascript" src="/ind-script/i18n.php?lang=ko_KR&domain=admin&v=2003181117"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/jquery-1.4.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/influencer_suio.min.js" charset="utf-8"></script>
   <script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/influencer_ui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/admin/js/orders/order.js?vs=19.348.2.20200319.RLS"></script>
    <script type="text/javascript" src="/admin/js/orders/order.navercheckout.js?vs=19.348.2.20200319.RLS"></script>
    <script type="text/javascript" src="/admin/js/orders/order.list.ui.js?vs=19.348.2.20200319.RLS"></script>
    <script type="text/javascript" src="/admin/js/jslb_ajax.js"></script>
    <script type="text/javascript" src="/admin/js/HelpCode.js?v=19.348.2.20200319.RLS"></script>
    <script type="text/javascript" src="/admin/js/excelDownloadAuthLayer.js"></script>
    <script type="text/javascript" src="/admin/js/orders/order.payment.js?vs=19.348.2.20200319.RLS"></script><script type="text/javascript" src="/admin/js/orders/order.shipped.tab.js?vs=19.348.2.20200319.RLS"></script>
   <script type="text/javascript" src="/admin/js/navigation/menu_action.js?vs=19.348.2.20200319.RLS" charset="utf-8"></script>
   <script type="text/javascript" src="/admin/js/navigation/top.js?vs=19.348.2.20200319.RLS" charset="utf-8"></script>
   <script type="text/javascript" src="/admin/js/navigation/snb.js?vs=19.348.2.20200319.RLS" charset="utf-8"></script>
   <script type="text/javascript" src="/admin/js/navigation/fakescroll.js?vs=19.348.2.20200319.RLS" charset="utf-8"></script>
   <script type="text/javascript" src="/admin/js/navigation/menu_autocomplete.js?vs=19.348.2.20200319.RLS" charset="utf-8"></script>
   <script defer type="text/javascript" src="/admin/js/navigation/menu_smarthelper.js?vs=19.348.2.20200319.RLS" charset="utf-8"></script>
   <script type="text/javascript" src="/admin/js/orders/order.search.js?v=19.348.2.20200319.RLS" ></script>
   <script type="text/javascript" src="/admin/js/jquery.12r.calendar.js?v=19.348.2.20200319.RLS" ></script>
   <script type="text/javascript" src="//img.echosting.cafe24.com/js/calendar/dateUtil.js" charset="utf-8" ></script>
   <script type="text/javascript" src="//neomart.cafe24.com/ind-script/moment.php?convert=T"></script>
   <script type="text/javascript" src="/admin/js/Currency/shop_price.js"></script>
   <script type="text/javascript" src="/admin/js/Currency/shop_currency_format.js"></script>
   <script type="text/javascript" src="/admin/js/Currency/shop_price_format.js"></script>
   <script type="text/javascript" src="/admin/js/Currency/shop_price_util.js"></script>
   
<style style="text/css">
header {
   position: fixed;
   left: 0px;
   top: 0px;
   height: 60px;
   width: 100%;
}

header p {
   text-align: center; @import
   url('https://fonts.googleapis.com/css?family=Roboto+Condensed') ;
   .preserve-3d {
   transform-style: preserve-3d;
   -webkit-transform-style: preserve-3d;
}

body {
   padding: 0;
   margin: 0;
   border: 0;
   overflow-x: none;
   background-color: #ffffff;
   font-family: Roboto Condensed, sans-serif;
   font-size: 12px;
   font-smooth: always;
   -webkit-font-smoothing: antialiased;
}

.back {
   width: 33%;
   height: 200px;
   float: left;
   background-color: #eeeeee;
   border: 10px;
   border-color: #ffffff;
   border-style: solid;
   box-sizing: border-box;
   -webkit-box-sizing: border-box;
   -moz-box-sizing: border-box;
   counter-increment: bc;
   padding: 0px 5px 5px 5px;
}

.back:before {
   content: counter(bc) "_";
   position: absolute;
   padding: 10px;
}

@media screen and (max-width: 1260px) {
   .back {
      width: 50%;
   }
}

@media screen and (max-width: 840px) {
   .back {
      width: 100%;
   }
}

input {
   text-align: center;
}
span{
font-size: 30px;
}
</style>
   
   <style>
.button {
   position: relative;
   top: 20px;
   left: 500px;
}
.button a {
text-align:center;
padding: 15px;
position:relative;
top:20px;
  min-width: 200px;
  min-height: 90px;
  font-family: 'Roboto', sans-serif;
  font-size: 12px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  margin: 5px;
}
.button a:hover {
  background-color: #000000;
  box-shadow: 0px 0px 40px rgba(53, 59, 72,1.0);
  color: #fff;
  transform: translateY(-7px);
}
</style>

     <c:choose>
      <c:when test="${login.m_admin==1}">
         <div><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
      </c:when>
      <c:otherwise>
         <div><jsp:include page="../public/header.jsp"></jsp:include></div>
      </c:otherwise>
   </c:choose>
</head>
<body>
<br><br><br><br><hr>
   
      <h2 id="myinfo" style="text-align: center; margin-left: 50px;"><a href ="/member/detail">내 정보 보기</a></h2>
      <hr>
      <h2 style="text-align: center; margin-left: 50px;">나의 주문 확인</h2>
      <br><hr>
<!--     <div id="container"> class="snbHidden" -->
           
        <!-- content -->
        <div id="content">
      <div class="mTab typeOrder delivery gCellSmall">
          <ol class="tab">
             <!--  <li id="ship_tab_no_pay_cnt" class="selected">
                  <a href='' target="_top" id="no_pay_cnt">
                      <span class="thumb deposit"></span>
                      <strong class="title">입금전</strong>
                      <span class="count" id="no_pay_cnt_value">&nbsp;&nbsp;0</span>
                  </a>
              </li> -->
              
               <li id="ship_tab_is_shipped_f" class="">
                  <a href='' target="_top" id="is_shipped_f">
                      <span class="thumb ready"></span>
                      <strong class="title">배송준비중</strong>
                      <span class="count" id="is_shipped_f_value">&nbsp;&nbsp;1</span>
                  </a>
              </li>
              
              <li id="ship_tab_is_shipped_w" class="">
                  <a href="" target="_top" id="is_shipped_w">
                      <span class="thumb standby"></span>
                      <strong class="title">배송대기</strong>
                      <span class="count" id="is_shipped_w_value">&nbsp;&nbsp;0</span>
                  </a>
              </li>
              
              <li id="ship_tab_is_shipped_m" class="">
                  <a href="" target="_top" id="is_shipped_m">
                      <span class="thumb delivery"></span>
                      <strong class="title">배송중</strong>
                      <span  class="count" id="is_shipped_m_value">&nbsp;&nbsp;0</span>
                  </a>
              </li>
              
              <li id="ship_tab_is_shipped_t" class="">
                  <a href="" target="_top" id="is_shipped_t">
                      <span class="thumb complete"></span>
                      <strong class="title">배송완료</strong>
                      <span class="count" id="is_shipped_t_value">&nbsp;&nbsp;0</span>
                  </a>
              </li>
          </ol>
      </div>                                <!-- 공통 검색 뷰 -->
      			<!-- 인플루언서모드 -->
		<div class="mTab typeOrder cs">
		    <ul class="tab">
		        <!-- 취소관리 -->
		        <li id="order_tab_cancel_count_request">
		            <a href="/admin/php/shop1/s/order_cancel.php?realclick=T&tabclick=F&tabStatus=all&memberType=1&sSearchDetailView=F&sSearchDetailStretch=F&sIsOrderSearchNotAllowed=F&date_type=order_date&start_date=2020-02-24&year1=2020&month1=02&day1=24&end_date=2020-03-24&year2=2020&month2=03&day2=24&today=2020-03-24&searchPage=order_cancel&orderStatus[]=all" target="_top" id="cancel_count">
		                <span class="thumb cancel"></span>
		                <strong class="title">취소</strong>
		                <span class="count">0</span>
		            </a>
		        </li>
		
		        <!-- 교환관리 -->
		        <li id="order_tab_change_count_request">
		            <a href="/admin/php/shop1/s/order_change.php?realclick=T&tabclick=F&tabStatus=all&memberType=1&sSearchDetailView=F&sSearchDetailStretch=F&sIsOrderSearchNotAllowed=F&date_type=order_date&start_date=2020-02-24&year1=2020&month1=02&day1=24&end_date=2020-03-24&year2=2020&month2=03&day2=24&today=2020-03-24&searchPage=order_change&cs_type=exchange&orderStatus[]=all" target="_top" id="change_count">
		                <span class="thumb exchange"></span>
		                <strong class="title">교환</strong>
		                <span class="count">&nbsp;&nbsp;0</span>
		            </a>
		        </li>
		
		        <!-- 반품관리 -->
		        <li id="order_tab_return_count_request">
		            <a href="/admin/php/shop1/s_new/order_returns.php?realclick=T&tabclick=F&tabStatus=all&memberType=1&sSearchDetailView=F&sSearchDetailStretch=F&sIsOrderSearchNotAllowed=F&date_type=order_date&start_date=2020-02-24&year1=2020&month1=02&day1=24&end_date=2020-03-24&year2=2020&month2=03&day2=24&today=2020-03-24&cs_type=return&searchPage=order_returns&orderStatus[]=all&mode=return_post_req" target="_top" id="return_count">
		                <span class="thumb return"></span>
		                <strong class="title">반품</strong>
		                <span class="count">0</span>
		            </a>
		        </li>
		
		        <!-- 환불관리(환불전) -->
		        <li id="order_tab_refund_count_request">
		            <a href="/admin/php/shop1/s_new/order_cash_refund_f.php?realclick=T&tabclick=F&tabStatus=all&listName=orderCashRefundselectedAll&searchPage=order_cash_refund_f&&sSearchDetailView=F&sSearchDetailStretch=F&sIsOrderSearchNotAllowed=F&date_type=all_return_date&start_date=2020-02-24&year1=2020&month1=02&day1=24&end_date=2020-03-24&year2=2020&month2=03&day2=24&today=2020-03-24&orderStatus[]=all&RefundType=all&bank_info=0&RefundSubType=all&memberType=1" target="_top" id="before_refund">
		                <span class="thumb refund"></span>
		                <strong class="title">환불</strong>
		                <span class="count">0</span>
		            </a>
		        </li>
		    </ul>
		</div>    
      
      
      <div class="optionArea" id="QA_deposit1">
              <div class="mOption">
                  <table border="1" summary="">
                  <caption>주문 검색</caption>
                  <colgroup>
                      <col style="width:170px;" />
                      <col style="width:645px;;" />
                      <col style="width:170px;" />
                      <col style="width:auto;" />
                  </colgroup>
                  <tbody>
                     <tr  style="display: none;" >
                          <th scope="row">쇼핑몰</th>
                          <td colspan="3">
                              <select name="shop_no_order" id='shop_no_order' class="fSelect">
                                 <option value="1" selected='selected'>[기본]한국어 쇼핑몰(한국어)</option>
                                 <option value="2" >영문(영어)</option>
                              </select>
                          </td>
                     </tr>
                     <tr>
                          <th scope="row"> 검색어
                             <div class="cTip" code="OR.SM.DB.40"></div>
                          </th>
                          <td colspan="3">
                              <div id="mainSearch">
                                 <div >
                                  <select class="fSelect" name=MSK[] style="width:163px;">
                                       <option value="choice" >-검색항목선택-</option>
                                       <option value="order_id" selected>주문번호</option>
                                       <option value="ord_item_code" >품목별 주문번호</option>
                                       <option value="delivery_code" >배송번호</option>
                                       <option value="invoice_no" >운송장번호</option>
                                       <option value="s_order_info" >마켓주문번호</option>
                                       <option value="line1" >-----------------</option>
                                       <option value="o_name" >주문자명</option>
                                       <option value="member_id" >주문자 아이디</option>
                                       <option value="o_phone2" >주문자 휴대전화</option>
                                       <option value="o_phone1" >주문자 일반전화</option>
                                       <option value="client_ip" >주문자 IP</option>
                                       <option value="line2" >-----------------</option>
                                       <option value="c_p_name" >입금자명</option>
                                       <option value="r_name" >수령자명</option>
                                       <option value="r_phone2" >수령자 휴대전화</option>
                                       <option value="r_phone1" >수령자 일반전화</option>
                                       <option value="r_addr" >배송지 주소</option>
                                       <option value="ord_add_item" >주문서 추가항목</option>
                                       <option value="all_name" >주문자명, 입금자명, 수령자명</option>
                                       <option value="r_safe_phone" >0504 안심번호</option>
                                       <option value="line3" >-----------------</option>
                                       <option value="msg_writer_name" >메모 작성자명</option>
                                       <option value="msg_writer_id" >메모 작성자 아이디</option>
                                       <option value="msg" >메모 내용</option>
                                  </select>
                                  <input type="text" class="fText sBaseSearchBox" name=MSV[] id="sBaseSearchBox" style="width:400px;" />
                                      <a href="#none" class="btnIcon icoPlus"><span>추가</span></a>
                                 </div>
                              </div>
                          </td>
                     </tr>
                      <tr>
                      </tr>
                      <tr> <th scope="row"> 상품
                          </th>
                          <td colspan="3">
                              <select class="fSelect" id="eProductSearchType" name="product_search_type" style="width:110px;">
                                  <option value="product_name" selected="selected">상품명</option>
                                  <option value="product_code" >상품코드</option>
                                  <option value="item_code" >품목코드</option>
                                  <option value="product_tag" >상품태그</option>
                                  <option value="manufacturer_name" >제조사</option>
                                  <option value="supplier_name" >공급사</option>
                             </select>
                             
                              <input type="text" id="eOrderProductText" name="order_product_text" class="fText" style="width:490px;" value=""/>
                              <input type="hidden" name="order_product_no" id="eOrderProductNo" value="">
                              <input type="hidden" name="find_option" value="product_no">
                              <a href="#none" id="productSearchBtn" class="btnNormal"><span>상품찾기 <em class="icoLink"></em></span></a>
                              
                          </td>
                      </tr>
                      <!-- <tr>
                          <th scope="row">입금상태</th>
                          <td id="depositStatus" >
                             <label class="gLabel"><input type="radio" name="orderStatusPayment"  class="fChk" value="all"  /> 전체</label>
                             <label class="gLabel"><input type="radio" name="orderStatusPayment"  class="fChk" value="F" checked="checked" /> 입금전</label>
                             <label class="gLabel"><input type="radio" name="orderStatusPayment"  class="fChk" value="M"  /> 추가입금대기</label>
                             <label class="gLabel"><input type="radio" name="orderStatusPayment"  class="fChk" value="T"  /> 입금완료(수동)</label>
                             <label class="gLabel"><input type="radio" name="orderStatusPayment"  class="fChk" value="A"  /> 입금완료(자동)</label>
                          </td>
                          <td >
                          </td>
                      </tr> -->
      
                  </tbody>
                  </table>
              </div>
      </div>

           <div class="section" id="QA_deposit2">
               <div class="mTitle"  style="display: none;" >
                   <h2>검색 결과 
                      <div class="cTip" code="OR.SM.DB.110"></div>
                   </h2>
               </div>
               <div class="mTab typeTab eTab">
                   <ul>
                       <li class="selected"><a href="#none" id="eTabNumber">주문번호별</a></li>
                   </ul>
               </div>
               <div id="tabNumber" class="tabCont" style="display:block;">
                   <div class="mState">
                       <div class="gLeft">
                           <p class="total">검색결과 <strong>0</strong>건</p>
                       </div>
                       <!-- <div class="gRight">
                           <select name="searchSorting" class="fSelect">
                               <option value="pay_amount_asc">입금액순</option>
                               <option value="pay_amount_desc">입금액역순</option>
                           </select>
                           <select name="rows" class="fSelect">
                               <option value="10" >10개씩보기</option>
                               <option value="20"  selected >20개씩보기</option>
                               <option value="30" >30개씩보기</option>
                               <option value="50" >50개씩보기</option>
                           </select>
                       </div> -->
                   </div>
                   <div class="mCtrl typeHeader setting">
                      <!--  <div class="gLeft">
                           <a href="#none" id="ePaymentOkBtn" class="btnCtrl"><span>입금확인</span></a>
                           <a href="#none" id="ePaymentCancelBtn" class="btnCtrl"><span>주문취소</span></a>
                       </div>
   
                       <div class="gSetting">
                           <div class="mOpen">
                               <a href="#listSubject" class="btnSetting eOpenClick"><span>설정</span></a>
                               <div id="listSubject" class="open">
                                   <strong>목록표시</strong>
                                   <div class="wrap">
                                       <ul class="default">
                                           <li><label><input type="checkbox" id="iDisplayNo" class="fChk" value="16" /> No</label></li>
                                           <li><label><input type="checkbox" class="fChk" value="3" disabled="disabled"/> 주문번호</label></li>
                                           <li><label><input type="checkbox" class="fChk" value="4" /> 상품명</label></li>
                                           <li><label><input type="checkbox" class="fChk" value="5" /> 주문자</label></li>
                                           <li><label><input type="checkbox" id="ePrdTotalPrice" class="fChk" value="13" /> 총 상품구매금액</label></li>
                                           <li><label><input type="checkbox" id="eOrdTotalPrice" class="fChk" value="14"/> 총 주문금액</label></li>
                                           <li><label><input type="checkbox" class="fChk" value="9" /> 처리여부</label></li>
                                           <li><label><input type="checkbox" class="fChk" value="10" /> 추가입금</label></li>
                                           <li><label><input type="checkbox" class="fChk" value="11" /> 메모</label></li>
                                       </ul>
                                   </div>
                                   <div class="footer">
                                       <a href="#none" id="eListControlLayer" class="btnCtrl"><span>적용</span></a>
                                       <a href="#none" class="btnNormal eClose"><span>닫기</span></a>
                                   </div>
                               </div>
                           </div>
                       </div> -->
                   </div>
                   <div class="mBoard typeOrder gScroll gCellSingle typeList">
                       <table id="searchResultList" border="1" summary="" class="eChkTr">
                           <caption>입금전 관리 목록</caption>
                           <thead>
                              <tr>
                                 <th scope="col"  style="width: 10%">No</th>
                                 <th scope="col"  style="width: 10%">주문일</th>
                                 <th scope="col"  style="width: 10%">주문자 </th>
                                 <th scope="col"  style="width: 10%">상품명</th>
                                 <th scope="col"  style="width: 10%">총 주문금액</th>
                                 <th scope="col"  style="width: 10%">배송 현황</th>
                                 <th scope="col"  style="width: 10%">교환 및 반품</th>
                                 <th scope="col"  style="width: 70%">메모</th>
                              </tr>
                           </thead>
                              <tbody class="empty">
                              <c:forEach items="${to.oslist}" var="dto">
	                               <tr>
	                                <td class="product-name" style="width: 10%"><a href="#">${dto.o_num}</a></td>
	                                 <td class="product-name" style="width: 10%"><a href="#">${dto.o_regdate}</a></td>
	                                 <td class="product-name" style="width: 10%"><a href="#">${dto.m_name}</a></td>
	                                 <td class="product-name" style="width: 10%"><a href="#">${dto.p_title}</a></td>
	                                 <td class="product-name" style="width: 10%"><a href="#">300,000</a></td>
	                                 <td class="product-name" style="width: 10%"><a href="#">배송중</a></td>
	                                 <td class="product-name" style="width: 10%"><a href="#">x</a></td>
	                                 <td class="product-name" style="width: 70%"><a href="#">${dto.o_memo}</a></td>
	                               </tr>
                               </c:forEach>
                              </tbody>
                      </table>
                   </div>
               </div>
           </div>
        </div>
<!--     </div> -->
<!-- </div> -->
<!-- //content -->


<div id="footer">
   <jsp:include page="../public/footer.jsp"></jsp:include>
</div>
   

<script type="text/javascript">
   $(document).ready(function() {
      
   });





</script>




</body>
</html>