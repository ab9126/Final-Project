<%@page import="com.naver.dto.PageTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    
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

    <!-- Modernizr JS -->
    <script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
	<script src="/resources/imgjs/board2.js?ver=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
  	
  	<c:choose>
		<c:when test="${login.m_admin==1}">
			<div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
		</c:when>
		<c:otherwise>
			<div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
		</c:otherwise>
	</c:choose>

<style type="text/css">
.login{
 	max-width: 300px;
 }
    
td {
	border: 1px solid #000000;
	border-collapse: collapse;
}

form {
	position: relative;
	top: 50px;
}

.text-center button {
	position: relative;
	top: 20px;
	width: 120px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
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
	"
}

.text-center button:hover {
	background-color: #000000;
	box-shadow: 0px 0px 40px rgba(53, 59, 72, 1.0);
	color: #fff;
	transform: translateY(-7px);
}
input[type=text] {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: none;
   border-bottom: 2px solid black;
}

input[type=password] {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: none;
   border-bottom: 2px solid black;
}

input[type=tel] {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: none;
   border-bottom: 2px solid black;
}

input[type=email] {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: none;
   border-bottom: 2px solid black;
}
</style>
</head>
<body>

<br><br><br><br><hr>

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/resources/images/bg/cart.png) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Order</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="/product/list">Home</a>
<!--                                   <span class="brd-separetor">/</span> -->
<!--                                   <span class="breadcrumb-item active">Cart</span> -->
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        
        <!-- cart-main-area start -->
        <div class="cart-main-area ptb--40 bg__white" style="padding: 0px; padding-top: 50px; margin-bottom: -50px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-12">
<!--                         <form action="#">                -->
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Image</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="sum" value="0"/>
                                    <c:forEach items="${clist}" var="dto">
                                        	<tr class="tr">
                                            <td class="product-thumbnail"><img src="/display?filename=${dto.p_thumb}" alt="product img" style="width: 120px;height: 120px;"/></td>
                                            <td class="product-name">${dto.p_title}<br>
                                            [ 옵션 : ${dto.cart_size} / ${dto.cart_color}]
                                            </td>
                                            <td class="product-price"><span class="amount">${dto.p_price}</span></td>
                                            <td class="product-quantity"><input data-price="${dto.p_price}" type="number" readonly value="${dto.cart_cnt}" /></td>
                                            <td class="product-subtotal totalsub">${dto.p_price * dto.cart_cnt}</td>
                                            <c:set var="sum" value="${sum + dto.p_price * dto.cart_cnt}"/>
                                    </c:forEach>
	                                        <tr>
		                                        <td colspan="7" style="text-align: right;"> 
		                                        	 합계 : 
		                                        	 <strong class="txtEm gIndent10">
		                                        	 	<span id="domestic_ship_fee_sum" class="txt18">${sum}</span>원
		                                        	 </strong>
		                                        	 <span class="displaynone">
		                                        	 </span>
												</td>
											</tr>
	
                                    </tbody>
                                </table>   
                            </div>
                            
<!--                         </form>  -->
                    </div>
                </div>
            </div>
        </div>
        <br>
        <!-- cart-main-area end -->
		<article class="container">
<!-- 			<div class="page-header"> -->
<!-- 				<div class="col-md-6 col-md-offset-3"></div> -->
<!-- 			</div> -->
				<div class="col-sm-12">
	
						<div class="form-group">
							<label>받으시는 분</label> <input type="text"
								class="form-control" name="m_name" value="${login.m_name}" readonly>
							<div class="eheck_font" id="name_check"></div>
						</div>
						
						
						<div class="form-group">
							<label>주소</label> <input type="text"
								class="form-control" name="m_oaddress" value="${login.m_oaddress}" readonly>
								<input type="text"
								class="form-control" name="m_address" value="${login.m_address}" readonly>
								<input type="text"
								class="form-control" name="m_detailaddress" value="${login.m_detailaddress}" readonly>
						</div>
						
						<div class="form-group">
							<label>휴대폰 번호</label> <input
								type="tel" class="form-control" name="m_ph"
								value="${login.m_ph}" readonly>
						</div>
						
						<div class="form-group">
							<label>이메일 주소</label> <input type="email"
								class="form-control" name="m_email"
								value="${login.m_email}" readonly>
						</div>
					<form id="orderform" method="post">
						<div class="form-group">
							<label>배송 메세지</label> <input class="form-control" name="order_memo" value="">
						</div>
						<input type="hidden" name="o_fk_m_id" value="${login.m_id}">
						<c:forEach items="${clist}" var="dto">
							<input type="hidden" name="p_nums" value="${dto.p_num}">
							<input type="hidden" name="sizes" value="${dto.cart_size}">
							<input type="hidden" name="colors" value="${dto.cart_color}">
							<input type="hidden" name="cnts" value="${dto.cart_cnt}">
						</c:forEach>
					</form>
					
					 <div class="cart_totals">
					 <br><br><br>
			            <h2>Cart Totals</h2>
			            <br>
			            <table>
			                <tbody>
			                    <tr class="order-total">
			                        <th>Total</th>
			                        <td>
			                            <strong><span class="total amount">${sum} won</span></strong>
			                        </td>
			                    </tr>                                           
			                </tbody>
			            </table>
			            <br><br>
			            <div class="wc-proceed-to-checkout">
			                <a id="ordersubmit">Proceed to Checkout</a>
			            </div>
			        </div>
				</div>
		</article>
	      <div class="col-md-4 col-sm-12 ">
	     </div>
    </div>
    

    	   
    
    
    
    <jsp:include page="../public/footer.jsp"></jsp:include>
    <!-- Body main wrapper end -->
    
    
<script type="text/javascript">
	$("#ordersubmit").click(function(event){
		event.preventDefault();
		$("#orderform").attr("action", "/order/insert");
		$("#orderform").submit();
	});

</script>
    
</body>
</html>


