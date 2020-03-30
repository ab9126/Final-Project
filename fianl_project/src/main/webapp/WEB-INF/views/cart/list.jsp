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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Place favicon.ico in the root directory -->
<link rel="shortcut icon" type="image/x-icon"
   href="/resources/images/favicon.ico">
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

<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Modernizr JS -->
<script src="https://kit.fontawesome.com/84ab9164ab.js"></script>
<script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
<!-- jquery latest version -->
<script src="/resources/js/vendor/jquery-1.12.4.min.js"></script>
<!-- Bootstrap Framework js -->
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<!-- All js plugins included in this file. -->
<script src="/resources/js/plugins.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="/resources/js/main.js"></script>
<script src="/resources/imgjs/board2.js?ver=<%=System.currentTimeMillis() %>" type="text/javascript"></script>

    <c:choose>
      <c:when test="${login.m_admin==1}">
         <div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
      </c:when>
      <c:otherwise>
         <div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
      </c:otherwise>
   </c:choose>
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
                                <h2 class="bradcaump-title">Cart</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.html">Home</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Cart</span>
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
                                            <th class="product-remove">Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="sum" value="0"/>
                                    <c:forEach items="${to.clist}" var="dto">
                                        <tr class="tr">
                                            <td class="product-thumbnail"><a href="#"><img src="/display?filename=${dto.p_thumb}" alt="product img" style="width: 120px;height: 120px;"/></a></td>
                                            <td class="product-name"><a href="/product/read/${dto.p_num}/?curPage=1">${dto.p_title}<br>
                                            [ 옵션 : ${dto.cart_color} / ${dto.cart_size} ]
                                            </a></td>
                                            <td class="product-price"><span class="amount">${dto.p_price}</span></td>
                                            <td class="product-quantity"><input data-price="${dto.p_price}" data-num="${dto.cart_num}" type="number" value="${dto.cart_cnt}" /></td>
                                            <td class="product-subtotal totalsub">${dto.p_price * dto.cart_cnt}</td>
                                            <td class="product-remove"><a style="cursor: pointer;" class="cartdel" data-del="${dto.cart_num}">X</a></td>
                                        </tr>
                                        <c:set var="sum" value="${sum + (dto.p_price * dto.cart_cnt) }"/>
                                    </c:forEach>    
                                    </tbody>
                                </table>   
                            </div>
                            <div class="row">
                                <div class="col-md-8 col-sm-12">
                                    <div class="buttons-cart">
                                       <!-- <a id="cartupdate" style="color: white; cursor: pointer;">Update Cart</a> -->
                                        <a href="/product/list">Continue Shopping</a>
                                    </div>
                                    <!-- <div class="coupon">
                                        <h3>Coupon</h3>
                                        <p>Enter your coupon code if you have one.</p>
                                        <input type="text" placeholder="Coupon code" />
                                        <input type="submit" value="Apply Coupon" />
                                    </div> -->
                                </div>
                                <div class="col-md-4 col-sm-12 ">
                                    <div class="cart_totals">
                                        <h2>Cart Totals</h2>
                                        <table>
                                            <tbody>
                                                <!-- <tr class="cart-subtotal">
                                                    <th>Subtotal</th>
                                                    <td><span class="amount">Â£215.00</span></td>
                                                </tr> -->
                                                <!-- <tr class="shipping">
                                                    <th>Shipping</th>
                                                    <td>
                                                        <ul id="shipping_method">
                                                            <li>
                                                                <input type="radio" /> 
                                                                <label>
                                                                    Flat Rate: <span class="amount">Â£7.00</span>
                                                                </label>
                                                            </li>
                                                            <li>
                                                                <input type="radio" /> 
                                                                <label>
                                                                    Free Shipping
                                                                </label>
                                                            </li>
                                                            <li></li>
                                                        </ul>
                                                        <p><a class="shipping-calculator-button" href="#">Calculate Shipping</a></p>
                                                    </td>
                                                </tr> -->
                                                <tr class="order-total">
                                                    <th>Total</th>
                                                    <td>
                                                        <strong><span class="total amount">${sum} won</span></strong>
                                                    </td>
                                                </tr>                                           
                                            </tbody>
                                        </table>
                                        <div class="wc-proceed-to-checkout">
                                            <a href="/order/list">Proceed to Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!--                         </form>  -->
                    </div>
                </div>
            </div>
        </div>
        <!-- cart-main-area end -->
         
    </div>
    <jsp:include page="../public/footer.jsp"></jsp:include>
    <!-- Body main wrapper end -->
    <!-- Placed js at the end of the document so the pages load faster -->
</body>

<script type="text/javascript">
   $(document).ready(function() {
	   
	   
	   
	   
	   $(".wc-proceed-to-checkout").on("click", function(event) {
		   
	   });
	   
	   
	   
	   	total();
      
         $(".cartdel").on("click", function(event) {
           event.preventDefault();
           var that = $(this);
            var cart_num = $(this).attr("data-del");
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
                  that.parent().parent().remove();
                  total();
               }
            });
         });
         
         
         $("#cartupdate").click(function(){
            $("[data-num]").each(function(){
               var cart_cnt = $(this).val();
               var cart_num = $(this).attr("data-num");
            });
         });
         
         
         $(document).on("change", "input[type='number']", function(){
            var cart_cnt = $(this).val();
            if(cart_cnt < 1){
               $(this).val(1);
               cart_cnt = $(this).val();
            }
            var cart_num = $(this).attr("data-num");
            var price = $(this).attr("data-price");
            var target = $(this).parent().next();
            $.ajax({
              type : "put",
              url : "/cart",
              headers : {
                    'Content-Type' : 'application/json',
                    'X-HTTP-Method-Override' : 'PUT'
                 },
                 data : JSON.stringify({
                    cart_cnt : cart_cnt,
                    cart_num : cart_num
                 }),
                 dataType : 'text',
                 success : function(data){
                    target.html(price * cart_cnt);
                    total();
                 }
            });
         });

         function total() {
	         var sum = 0;
	         $(".tr").each(function(i){
	            var price = $(this).children(".product-price").children().html();
	            var cnt = $(this).children(".product-quantity").children().val();
	            sum += price * cnt;
	         });
	         console.log("sum");
	         sum = addComma(sum);
	         console.log(sum);
         	$(".total").html(sum + " won");
      }
     }); 

</script>

</html>