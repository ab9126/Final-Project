<%@page import="com.naver.dto.PageTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cart || Uniqlo-Minimalist eCommerce Bootstrap 4 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Place favicon.ico in the root directory -->
<link rel="shortcut icon" type="/resources/image/x-icon"
   href="images/favicon.ico">
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
</head>

<body>
     	<c:choose>
		<c:when test="${login.m_admin==1}">
			<div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
		</c:when>
		<c:otherwise>
			<div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
		</c:otherwise>
	</c:choose>


   <!-- Start Bradcaump area -->
   <div class="ht__bradcaump__area"
      style="background: rgba(0, 0, 0, 0) url(/resources/images/bg/2.jpg) no-repeat scroll center center/cover;">
      <div class="ht__bradcaump__wrap">
         <div class="container">
            <div class="row">
               <div class="col-12">
                  <div class="bradcaump__inner text-center">
                     <h2 class="bradcaump-title">Cart</h2>
                     <nav class="bradcaump-inner">
                        <a class="breadcrumb-item" href="index.html">Home</a> <span
                           class="brd-separetor">/</span> <span
                           class="breadcrumb-item active">Cart</span>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- End Bradcaump area -->
   <!-- cart-main-area start -->
   <div class="cart-main-area ptb--120 bg__white">
      <div class="container">
         <div class="row">
            <div class="col-md-12 col-sm-12 col-12">
               <form action="#">
                  <div class="table-content table-responsive">
                     <table>
                        <thead>
                           <tr>
                              <th class="product-thumbnail">Image</th>
                              <th class="product-name">상품명</th>
                              <th class="product-price">Price</th>
                              <th class="product-quantity">수량</th>
                              <th class="product-subtotal">총금액</th>
                              <th class="product-remove">Remove</th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:forEach items="${to.clist}" var="cdto"> 
                           <tr>
                              <td class="product-thumbnail"><a href="#"><img
                                    src="/display?filename=${cdto.p_thumb}" alt="product img" /></a></td>
                              <td class="product-name">
                                 <a href="#">${cdto.p_title}<br>
                                 [ 옵션 : ${cdto.cart_color} / ${cdto.cart_size} ]</a>
                              </td>
                              <td class="product-price"><span class="amount">${cdto.p_price} Won</span></td>
                              <td class="product-quantity"><input type="number"
                                 value="${cdto.cart_cnt}"/></td>
                              <td class="product-subtotal cartnum"><span>${cdto.p_price * cdto.cart_cnt} Won</span></td>
                              <td class="product-remove" data-del="${cdto.cart_num}"><a class="cartdel" id="delbtn">X</a></td>
                           </tr>
                            </c:forEach>
                        </tbody>
                     </table>
                  </div>
                  <div class="row">
                     <div class="col-md-8 col-sm-12">
                        <div class="buttons-cart">
                           <a href="#">Continue Shopping</a>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-12 ">
                        <div class="cart_totals">
                           <h2>Cart Totals</h2>
                           <table>
                              <tbody>
                                 <tr class="cart-subtotal">
                                    <th>Subtotal</th>
                                    <td><span class="amount">£215.00</span></td>
                                 </tr>
                                 <tr class="shipping">
                                    <th>Shipping</th>
                                    <td>
                                       <ul id="shipping_method">
                                          <li><label> 잔여 포인트:
                                             <span id="m_point" class="amount"></span>
                                          </label></li>
                                          <li><input type="checkbox" /> <label>
                                               Use Point </label></li>
                                          <li></li>
                                       </ul>
                                       <p>
                                          <a class="shipping-calculator-button" href="#">Calculate
                                             Shipping</a>
                                       </p>
                                    </td>
                                 </tr>
                                 <tr class="order-total">
                                    <th>Total</th>
                                    <td><strong><span class="amount">£215.00</span></strong>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                           <div class="wc-proceed-to-checkout">
                              <a href="checkout.html">Proceed to Checkout</a>
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
   <!-- cart-main-area end -->
   <!-- Start Footer Area -->


   <jsp:include page="../public/footer.jsp"></jsp:include>
</body>


<script type="text/javascript">

   $(document).ready(function() {
      
         $(".cartdel").on("click", function() {
            var cart_num = $(this).attr("data-del");
            console.log(cart_num);
            alert(cart_num);
            $.ajax({
               type : "delete",
               url : '/cart/'+cart_num,
               headers : {
                  'Content-Type' : 'application/json',
                  'X-HTTP-Method-Override' : 'delete'
               },
               data : JSON.stringify({ 
               }),
               dataType : 'text',
               success : function(data) {
               }
            });
         });
//             <td class="product-quantity"><input type="number"
//                 value="${cdto.cart_cnt}"/></td>
//              <td class="product-subtotal cartnum" data-num="${cdto.cart_num}">£165.00</td>
   });

</script>

</html>