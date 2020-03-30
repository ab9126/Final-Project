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
	<c:choose>
		<c:when test="${login.m_admin==1}">
			<jsp:include page="../public/adminheader.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="../public/header.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>
</head>

<body>
<br><br><br><br><hr>  

	
<!-- 	<div class="container"> -->
<!-- 		<div class="page-header"> -->
<!-- 			<h1>상품정보리스트</h1> -->
<!-- 			<a href="/" class="btn btn-success btn-lg"> <span -->
<!-- 				class="glyphicon glyphicon-home"></span> Home -->
<!-- 			</a><br> -->
<!-- 			<a href="/product/list">All</a> -->
<!-- 			<a href="/product/list/Outer">Outer</a> -->
<!-- 			<a href="/product/list/Top">Top</a> -->
<!-- 			<a href="/product/list/Bottom">Bottom</a> -->
<!-- 		</div> -->
<!-- 		<div> -->
<!-- 		</div> -->
<!-- 		<table class="table table-hover"> -->
<!-- 			<thead> -->
<!-- 				<tr> -->
<!-- 					<th>번호</th> -->
<!-- 					<th>썸네일</th> -->
<!-- 					<th>제목</th> -->
<!-- 					<th>등록일</th> -->
<!-- 					<th>조회수</th> -->
<!-- 				</tr> -->
<!-- 			</thead> -->

<!-- 			<tbody> -->
<%-- 				<c:forEach items="${to.plist}" var="dto"> --%>
<!-- 					<tr> -->
<%-- 						<td>${dto.p_num}</td> --%>
<%-- 						<td><img alt="이미지파일 썸네일" src="/display?filename=${dto.p_thumb}"></td> --%>
<%-- 						<td><a href="/product/read/${dto.p_num}?curPage=${to.curPage}">${dto.p_title}</a></td> --%>
<%-- 						<td>${dto.p_regdate}</td> --%>
<%-- 						<td>${dto.p_readcnt}</td> --%>
<!-- 					</tr> -->
<%-- 				</c:forEach> --%>
<!-- 			</tbody> -->
<!-- 		</table> -->
<!-- 		<div class="page-footer" style="text-align: right;"> -->
<!-- 			<a href="/product/insert" class="btn btn-success btn-lg"> 상품등록 </a> -->
<!-- 		</div> -->
<%-- 		<jsp:include page="../page.jsp" /> --%>
<!-- 	</div> -->
	
	<!-- 			<form class="pull-right" id="searchform" action=""> -->
<!-- 				<input class="keyword" name="search" required>
					<input class="search" type="submit" value="검색"> -->
<!-- 			</form> -->
	
    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
        <!-- End Header Style -->
        
        <!-- Start Slider Area -->
        <div class="slider__container slider--one">
            <div class="slider__activation__wrap owl-carousel owl-theme">
                <!-- Start Single Slide -->
                <div class="slide slider__full--screen" style="background: rgba(0, 0, 0, 0) url(/resources/images/slider/bg/logo1.jpg) no-repeat scroll center center / cover ;">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-4 col-sm-12 col-xs-12">
                                <div class="slider__inner">
                                    <h1>New Product <span class="text--theme">Collection</span></h1>
                                    <div class="slider__btn">
                                        <a class="htc__btn" href="/cart/list">shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Slide -->
                <!-- Start Single Slide -->
                <div class="slide slider__full--screen" style="background: rgba(0, 0, 0, 0) url(/resources/images/slider/bg/logo2.jpg) no-repeat scroll center center / cover ;">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
                                <div class="slider__inner">
                                    <h1>New Product <span class="text--theme">Collection</span></h1>
                                    <div class="slider__btn">
                                        <a class="htc__btn" href="/cart/list">shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Slide -->
            </div>
        </div>
        <!-- Start Slider Area -->
        <!-- Start Our Product Area -->
        <section class="htc__product__area ptb--130 bg__white">
            <div class="container">
                <div class="htc__product__container">
                    <!-- Start Product MEnu -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product__menu">
<!--                             	<button id="hotitem" data-filter=".cat--hot" class="is-checked">신상</button> -->
<!--                                 <button data-filter="*">All</button> -->
<!--                                 <button data-filter=".cat--Outer">Outer</button> -->
<!--                                 <button data-filter=".cat--Top">Top</button> -->
<!--                                 <button data-filter=".cat--Bottom">Bottom</button> -->
                              	<b><a style="font-style:italic; font-size: 25px;  margin: 25px;" href="/product/list">All</a></b>
								<b><a style="font-style:italic; font-size: 25px;  margin: 25px;" href="/product/list/Outer">Outer</a></b>
								<b><a style="font-style:italic; font-size: 25px;  margin: 25px;" href="/product/list/Top">Top</a></b>
								<b><a style="font-style:italic; font-size: 25px;  margin: 25px;" href="/product/list/Bottom">Bottom</a></b>
                            </div>
                        </div>
                    </div>
                    <!-- End Product MEnu -->
                    <div class="row product__list">
                        
                        <!-- Start Single Product -->
                        <c:forEach items="${to.plist}" var="dto">
						<div class="col-md-3 single__pro col-lg-3 col-md-4 cat--${dto.p_catecode} col-sm-12">
	                            <div class="product foo">
	                                <div class="product__inner">
	                                    <div class="pro__thumb">
	                                        <a href="/product/read/${dto.p_num}?curPage=${to.curPage}">
	                                            <img alt="이미지파일 썸네일" src="/display?filename=${dto.p_thumb}">
	                                        </a>
	                                    </div>
<!-- 	                                    <div class="product__hover__info"> -->
<!-- 	                                        <ul class="product__action"> -->
<!-- 	                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li> -->
<!-- 	                                            <li><a title="Add TO Cart" href="/cart/list"><span class="ti-shopping-cart"></span></a></li> -->
<!-- 	                                        </ul> -->
<!-- 	                                    </div> -->
<!-- 	                                    <div class="add__to__wishlist"> -->
<!-- 	                                        <a data-toggle="tooltip" title="Add To Wishlist" class="add-to-cart" href="wishlist.html"><span class="ti-heart"></span></a> -->
<!-- 	                                    </div> -->
	                                </div>
	                                <div style="margin-left: 0px;" class="product__details">
	                                    <h2><a style="font-size: 20px;" href="/product/read/${dto.p_num}?curPage=${to.curPage}">${dto.p_title}</a></h2>
	                                    <ul  class="product__price">
	                                        <p style="color: orange; font-size: 15px;" class="new__price">${dto.p_price} ￦</p>
	                                    </ul>
	                                </div>
	                            </div>
                        </div>
                        </c:forEach>

                    </div>
                </div>
                <br>
                <div style="margin-left:400px; text-align: center;">
              		<jsp:include page="../page.jsp" />
              	</div>
            </div>
            
        </section>

        <!-- End Our Product Area -->
    </div>
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
        <!-- Modal -->
        <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal__container" role="document">
                <div class="modal-content">
                    <div class="modal-header modal__header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <!-- Start product images -->
                            <div class="product-images">
                                <div class="main-image images">
                                    <img alt="big images" src="/resources/images/product/big-img/1.jpg">
                                </div>
                            </div>
                            <!-- end product images -->
                            <div class="product-info">
                                <h1>Simple Fabric Bags</h1>
                                <div class="rating__and__review">
                                    <ul class="rating">
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                    </ul>
                                    <div class="review">
                                        <a href="#">4 customer reviews</a>
                                    </div>
                                </div>
                                <div class="price-box-3">
                                    <div class="s-price-box">
                                        <span class="new-price">$17.20</span>
                                        <span class="old-price">$45.00</span>
                                    </div>
                                </div>
                                <div class="quick-desc">
                                    Designed for simplicity and made from high quality materials. Its sleek geometry and material combinations creates a modern look.
                                </div>
                                <div class="select__color">
                                    <h2>Select color</h2>
                                    <ul class="color__list">
                                        <li class="red"><a title="Red" href="#">Red</a></li>
                                        <li class="gold"><a title="Gold" href="#">Gold</a></li>
                                        <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                        <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                    </ul>
                                </div>
                                <div class="select__size">
                                    <h2>Select size</h2>
                                    <ul class="color__list">
                                        <li class="l__size"><a title="L" href="#">L</a></li>
                                        <li class="m__size"><a title="M" href="#">M</a></li>
                                        <li class="s__size"><a title="S" href="#">S</a></li>
                                        <li class="xl__size"><a title="XL" href="#">XL</a></li>
                                        <li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
                                    </ul>
                                </div>
                                <div class="social-sharing">
                                    <div class="widget widget_socialsharing_widget">
                                        <h3 class="widget-title-modal">Share this product</h3>
                                        <ul class="social-icons">
                                            <li><a target="_blank" title="rss" href="#" class="rss social-icon"><i class="zmdi zmdi-rss"></i></a></li>
                                            <li><a target="_blank" title="Linkedin" href="#" class="linkedin social-icon"><i class="zmdi zmdi-linkedin"></i></a></li>
                                            <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                            <li><a target="_blank" title="Tumblr" href="#" class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
                                            <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="addtocart-btn">
                                    <a href="#">Add to cart</a>
                                </div>
                            </div><!-- .product-info -->
                        </div><!-- .modal-product -->
                    </div><!-- .modal-body -->
                </div><!-- .modal-content -->
            </div><!-- .modal-dialog -->
        </div>
        
        <!-- END Modal -->
        <jsp:include page="../public/footer.jsp"></jsp:include>
    </div>
    <!-- END QUICKVIEW PRODUCT -->
    <!-- Placed js at the end of the document so the pages load faster -->


<script type="text/javascript">
	$(document).ready(function(){
// 			$(".search").click(function(event){	
// 				event.preventDefault();
// 				var search = $(".keyword").val();
// 				if(search == "")
// 					alert("검색어를 입력하세요.");
// 				else
// 					location.href = "/product/search/"+search;
// 			});
			
            $("#hotitem").click(function() {
            	var hotitem = true;
               $.ajax({
                  type:'get',
                  url   : '/product/hotlist',      
                  data: {
                	  hotitem:hotitem
                  },
                  dataType:'text',
                  success: function(result){ 
                	  
                  }
         	   });
            });
	});
	</script>
	
	
</body>

</html>