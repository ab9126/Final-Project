
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
<!-- <script src="https://kit.fontawesome.com/84ab9164ab.js"></script> -->
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
<style type="text/css">
.fileDrop{
        width : 100%;
        height : 200px;
        border : 1px solid green;
        background-color: lightslategray;
        margin: auto;
}
.uploadedList {
   list-style: none;
   margin-top: 20px;
}

.imgList {
   list-style: none;
   margin-top: 20px;
 
}

.imgList li{
   width: 100%;
   text-align: center;
}

.imgList img{
   list-style: none;
   margin-top: 20px;
   width: 70%;
   height: auto;
}

</style>
<body>
   
   <br><br><br><br><hr> 

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">

        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/resources/images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Product Details</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.html">Home</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Product Details</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Product Details -->
        <section class="htc__product__details pt--120 pb--100 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-6 col-sm-12">
                        <div class="product__details__container">
                            <!-- Start Small images -->
                           <!--  <ul class="nav product__small__images" role="tablist">
                                <li role="presentation" class="pot-small-img active">
                                    <a href="#img-tab-1" role="tab" data-toggle="tab">
                                        <img src="/resources/images/product-details/small-img/1.jpg" alt="small-image">
                                    </a>
                                </li>
                                <li role="presentation" class="pot-small-img">
                                    <a href="#img-tab-2" role="tab" data-toggle="tab">
                                        <img src="/resources/images/product-details/small-img/2.jpg" alt="small-image">
                                    </a>
                                </li>
                                <li role="presentation" class="pot-small-img hidden-xs">
                                    <a href="#img-tab-3" role="tab" data-toggle="tab">
                                        <img src="/resources/images/product-details/small-img/3.jpg" alt="small-image">
                                    </a>
                                </li>
                                <li role="presentation" class="pot-small-img d-no">
                                    <a href="#img-tab-4" role="tab" data-toggle="tab">
                                        <img src="/resources/images/product-details/small-img/4.jpg" alt="small-image">
                                    </a>
                                </li>
                            </ul> -->
                            <!-- End Small images -->
                            <div class="product__big__images">
                                <div class="portfolio-full-image tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="img-tab-1">
                                        <img src="/display?filename=${p_dto.p_thumb}" alt="full-image" height="590" width="440">
                                    </div>
                                    <!-- <div role="tabpanel" class="tab-pane" id="img-tab-2">
                                        <img src="/resources/images/product-details/big-img/2.jpg" alt="full-image">
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="img-tab-3">
                                        <img src="/resources/images/product-details/big-img/3.jpg" alt="full-image">
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="img-tab-4">
                                        <img src="/resources/images/product-details/big-img/4.jpg" alt="full-image">
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6 col-sm-12 smt-30 xmt-30">
                        <div class="htc__product__details__inner">
                            <div class="pro__detl__title">
                                <h2>Black Clock</h2>
                            </div>
                            <div class="pro__dtl__rating">
                                <ul class="pro__rating">
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                    <li><span class="ti-star"></span></li>
                                </ul>
                                <span class="rat__qun">(Based on 0 Ratings)</span>
                            </div>
                            <div class="pro__details">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod temf incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nostr exercitation ullamco laboris nisi ut aliquip ex ea. </p>
                            </div>
                            <ul class="pro__dtl__prize">
                                <!-- <li class="old__prize">$15.21</li> -->
                                <li>${p_dto.p_price} won</li>
                            </ul>
                            <!-- <div class="pro__dtl__color">
                                <h2 class="title__5">Choose Colour</h2>
                                <ul class="pro__choose__color">
                                    <li class="red"><a href="#"><i class="zmdi zmdi-circle"></i></a></li>
                                    <li class="blue"><a href="#"><i class="zmdi zmdi-circle"></i></a></li>
                                    <li class="perpal"><a href="#"><i class="zmdi zmdi-circle"></i></a></li>
                                    <li class="yellow"><a href="#"><i class="zmdi zmdi-circle"></i></a></li>
                                </ul>
                            </div> -->
                     <form id="selectform">
                     	<input type="hidden" name="m_id" value="${login.m_id}">
                        <input type="hidden" name="p_num" value="${p_dto.p_num}">
                        <input type="hidden" name="p_thumb" value="${p_dto.p_thumb}">
                        <input type="hidden" name="p_title" value="${p_dto.p_title}">
                        <input type="hidden" name="p_price" value="${p_dto.p_price}">
                        <div class="single-checkout-box select-option">
                           <select id="selectcolor"
                              style="margin-bottom: 15px; margin-left: 0px">
                              <option value="">- [필수] 색상 선택 -</option>
                              <c:forEach items="${p_dto.colorArr}" var="color">
                                 <option value="${color}">${color}</option>
                              </c:forEach>
                           </select> <br> <select id="selectsize"
                              style="margin-bottom: 15px; margin-left: 0px">
                              <option value="">- [필수] 사이즈 선택 -</option>
                              <c:forEach items="${p_dto.sizeArr}" var="size">
                                 <option value="${size}">${size}</option>
                              </c:forEach>
                           </select>
                        </div>
                        <div class="product-action-wrap">
                           <table id="selectlist"
                              class="table table-content table-responsive">

                           </table>
                        </div>
                     </form>
                     <h2 class="title__5">총 상품 금액 : </h2>
                     <!-- <div class="pro__dtl__size">
                                <h2 class="title__5">Size</h2>
                                <ul class="pro__choose__size">
                                    <li><a href="#">xl</a></li>
                                    <li><a href="#">m</a></li>
                                    <li><a href="#">ml</a></li>
                                    <li><a href="#">lm</a></li>
                                    <li><a href="#">xxl</a></li>
                                </ul>
                            </div> -->

                     

                     <!--  <div class="product-action-wrap">
                                <div class="prodict-statas"><span>Quantity :</span></div>
                                <div class="product-quantity">
                                    <form id='myform' method='POST' action='#'>
                                        <div class="product-quantity">
                                            <div class="cart-plus-minus">
                                                <input class="cart-plus-minus-box" type="text" name="qtybutton" value="02">
                                               <div class="dec qtybutton">-</div>
                                               <div class="inc qtybutton">+</div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div> -->
                            
                               <ul class="pro__dtl__btn">
                                   <li class="buy__now__btn"><a id="buy">buy now</a></li>
                                   <li><a id="cart"><span class="ti-shopping-cart"></span></a></li>
                               </ul>

                            <div class="pro__social__share">
                                <h2>Share :</h2>
                                <ul class="pro__soaial__link">
                                    <li><a href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>
                                    <li><a href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>
                                    <li><a href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>
                                    <li><a href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product Details -->
        <!-- Start Product tab -->
        <section class="htc__product__details__tab bg__white pb--120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <ul class="nav product__deatils__tab mb--60" role="tablist">
                            <li role="presentation" class="active">
                                <a class="active" href="#description" role="tab" data-toggle="tab">Description</a>
                            </li>
                            <li role="presentation">
                                <a href="#sheet" role="tab" data-toggle="tab">Data sheet</a>
                            </li>
                            <li role="presentation">
                                <a href="#reviews" role="tab" data-toggle="tab">Reviews</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="product__details__tab__content">
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="description" class="product__tab__content active">
                                <div class="product__description__wrap">
                                    <div class="product__desc">
                                        <h2 class="title__6">info</h2>
                                        ${p_dto.p_info}
                                    </div>
                                    <div class="pro__feature">
                                       <ul class="imgList clearfix"> 
                                 </ul>
                                        <h2 class="title__6">Features</h2>
                                        <ul class="feature__list">
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Duis aute irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Sed do eiusmod tempor incididunt ut labore et </a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Nisi ut aliquip ex ea commodo consequat.</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="sheet" class="product__tab__content">
                                <div class="pro__feature">
                                        <h2 class="title__6">Data sheet</h2>
                                        <ul class="feature__list">
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Duis aute irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Irure dolor in reprehenderit in voluptate velit esse</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Sed do eiusmod tempor incididunt ut labore et </a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Sed do eiusmod tempor incididunt ut labore et </a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Nisi ut aliquip ex ea commodo consequat.</a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i>Nisi ut aliquip ex ea commodo consequat.</a></li>
                                        </ul>
                                    </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="reviews" class="product__tab__content">
                                <div class="review__address__inner">
                                    <!-- Start Single Review -->
                                    <div class="pro__review">
                                        <div class="review__thumb">
                                            <img src="/resources/images/review/1.jpg" alt="review images">
                                        </div>
                                        <div class="review__details">
                                            <div class="review__info">
                                                <h4><a href="#">Gerald Barnes</a></h4>
                                                <ul class="rating">
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                </ul>
                                                <div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="review__date">
                                                <span>27 Jun, 2016 at 2:30pm</span>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Review -->
                                    <!-- Start Single Review -->
                                    <div class="pro__review ans">
                                        <div class="review__thumb">
                                            <img src="/resources/images/review/2.jpg" alt="review images">
                                        </div>
                                        <div class="review__details">
                                            <div class="review__info">
                                                <h4><a href="#">Gerald Barnes</a></h4>
                                                <ul class="rating">
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                </ul>
                                                <div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="review__date">
                                                <span>27 Jun, 2016 at 2:30pm</span>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Review -->
                                </div>
                                <!-- Start RAting Area -->
                                <div class="rating__wrap">
                                    <h2 class="rating-title">Write  A review</h2>
                                    <h4 class="rating-title-2">Your Rating</h4>
                                    <div class="rating__list">
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                    </div>
                                </div>
                                <!-- End RAting Area -->
                                <div class="review__box">
                                    <form id="review-form">
                                        <div class="single-review-form">
                                            <div class="review-box name">
                                                <input type="text" placeholder="Type your name">
                                                <input type="email" placeholder="Type your email">
                                            </div>
                                        </div>
                                        <div class="single-review-form">
                                            <div class="review-box message">
                                                <textarea placeholder="Write your review"></textarea>
                                            </div>
                                        </div>
                                        <div class="review-btn">
                                            <a class="fv-btn" href="#">submit review</a>
                                        </div>
                                    </form>                                
                                </div>
                            </div>
                            <!-- End Single Content -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product tab -->

    </div>
    <!-- Body main wrapper end -->
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
        <!-- Modal -->
        <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal__container" role="document">
                <div class="modal-content">
                    <div class="modal-header">
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



<div class="container">
      <div class="row">
      
         <h1 class="jumbotron">상품 보기</h1>
         
         <form method="post">
         
            <div class="form-group">
               <label for="title">제목</label>
               <input name="p_title" id="title" class="form-control" value="${p_dto.p_title}" readonly>
            </div>
            
            <div class="form-group">
               <label for="price">가격</label>
               <input name="p_price" id="price" class="form-control" type="number" value="${p_dto.p_price}" readonly>
            </div>
            
            <div class="form-group">
               <label for="writer">작성자</label>
               <input name="p_fk_m_id" id="writer" class="form-control" value="${p_dto.p_fk_m_id}" readonly>
            </div>
            
            <div class="form-group">
               <label for="info">내용</label>
               <textarea rows="5" name="p_info" id="info" class="form-control" readonly>${p_dto.p_info}</textarea>
            </div>   
            
         <ul class="imgList clearfix"> 
         </ul>
         
         </form>
         <form id="" method="post">
            <input type="hidden" name="cart_fk_p_num" value="${p_dto.p_num}">
            <input name="cart_fk_m_id" value="${login.m_id}">
            <div class="form-group">
               <select >
                  <option value="">- [필수] 색상 선택 -</option>
                  <c:forEach items="${p_dto.colorArr}" var="color">
                     <option value="${color}">${color}</option>
                  </c:forEach>
               </select>
            </div>
         
            <div class="form-group">
               <select >
                  <option value="">- [필수] 사이즈 선택 -</option>
                  <c:forEach items="${p_dto.sizeArr}" var="size">
                     <option value="${size}">${size}</option>
                  </c:forEach>
               </select>
            </div>
            <div>
             <!--   <table id="selectlist" class="table">
                  
               </table> -->
            </div>
         </form>
            
            <div class="form-group">
               <button id="buy" class="btn btn-primary">구매</button>
             <!--   <button id="cart" class="btn btn-primary">장바구니</button> -->
            </div>
            
         <div class="form-group">
            <button id="review" class="btn btn-primary">리뷰</button>
            <button type="reset" class="btn btn-warning">목록</button>
            <button class="btn btn-success">수정</button>
            <button class="btn btn-danger">삭제</button>
         </div>
         
      </div>
      
            <!-- collapse:열렸다가 닫혔다가함(댓글버튼을 누르면 여기가 열렸다가 닫혔다가 하게하기) -->
      <div class="row">
         <div class="" id="myCollapsible">
            
            <form id="reviewForm">
            <input name="r_fk_p_num" value="${p_dto.p_num}" type="hidden">
               <div>
                  <label for="r_grade">평점</label>
                  <select name="r_grade" id="r_grade">
                     <option >- [필수] 평점 선택 -</option>
                     <option value="1">★☆☆☆☆</option>
                     <option value="2">★★☆☆☆</option>
                     <option value="3">★★★☆☆</option>
                     <option value="4">★★★★☆</option>
                     <option value="5">★★★★★</option>
                  </select>
               </div>
               <div class="form-group">
                  <label for="r_fk_m_id">작성자</label>
                  <input class="form-control" id="r_fk_m_id" name="r_fk_m_id">
               </div>
               <div class="form-group">
                  <label for="r_content">내용</label>
                  <textarea rows="5" class="form-control" id="r_content" name="r_content"></textarea>
               </div>
            </form>
            
            <!-- 이 버튼은 실제 누르면 DB로 댓글이 입력되는 버튼, 위에있는 댓글버튼은 열렸다가 닫혔다가 하게하는 버튼임 -->
            <div class="form-group">
               <button class="btn btn-warning" id="insertReview">댓글 등록</button>
               <button class="btn btn-default">댓글 취소</button>
            </div>
            
            <div class="form-group">
            <label>업로드할 파일을 드랍시키세요.</label>
            <div class="fileDrop">
            </div>
         </div>
   
         <ul class="uploadedList clearfix"> 
         
         </ul>
         </div>
      </div><!-- class = row -->
      
      <!-- 댓글 보여주는곳 -->
      <div class="row">
         <div id="reviews">
             
         </div>
      </div> <!-- class = row -->
      
   </div>
   
   
<script type="text/javascript">
   $(document).ready(function() {
      
      var arr = ${filenames};
      for(var i = 0; i<arr.length;i++) {
         iconAppend(arr[i], false, ".imgList");
      }
      
      $(".uploadedList").on("click", ".img_icon", function() {
         var filename = $(this).attr("data-url");
         if(checkImg(filename)) {
            filename = getImageName(filename);
         }
         location.assign("/display?filename="+filename);
      });
      
      $(".fileDrop").on("dragenter dragover", function(event) {
         event.preventDefault();
      });
      
      $(".fileDrop").on("drop", function(event) {
         event.preventDefault();
         
         var filenames = event.originalEvent.dataTransfer.files;
         
          for(var i = 0; i < filenames.length; i++) {
            var formData = new FormData();   
            formData.append("file", filenames[i]);

            $.ajax({
               type : "post",
               url : "/uploadajax",
               data : formData,
               dataType : "text",
               
               processData : false,
               contentType : false,
               success : function(data) {
                  iconAppend(data, true, ".uploadedList");             
               }   
            });
          } 
      });

      $(".uploadedList").on("click", ".delbtn", function(event) {
         event.preventDefault();
      
         var that = $(this); 
         var filename = that.attr("href");
         
         $.ajax({
            type : "post",
            url : "/deletefile",
            data : {
               filename : filename
            },
            dataType : "text",
            success : function(data) {
               that.parent("div").parent("li").remove();
            }
         });
      });
      
      $("button[type='reset']").click(function() {
         location.href = "/product/list?curPage=${curPage}";
      }); 
      
      $(".btn-danger").click(function() {
         location.href = "/product/delete/${p_dto.p_num}?curPage=${curPage}";
      });
      
      $(".btn-success").click(function(){
         location.href = "/product/update/${p_dto.p_num}?curPage=${curPage}";
      });
      
      //댓글버튼 클릭하면 댓글 입력창이 나타남
      $("#review").click(function() {
         $("#myCollapsible").collapse("toggle");
      });
      
      var p_num = ${p_dto.p_num};
      
      $("#insertReview").click(function() {
         var formData = new FormData(document.getElementById("reviewForm"));
         $(".delbtn").each(function() {
            var filename = $(this).attr("href");
            formData.append("filenames", filename);
         }); 
         
         var object = {};
         formData.forEach(function(value, key) {
             if (key != 'filenames') {
               object[key] = value;
               return;
             }
             if(!Array.isArray(object[key])){
                 object[key] = [];    
             }
             object[key].push(value);
           });

         $.ajax({
            type : 'post',
            url : '/review',
            headers : {
               'Content-Type' : 'application/json',
               'X-HTTP-Method-Override' : 'post'
            },
            data : JSON.stringify(object),
            dataType :'text',
            success : function(result) {
               $("#r_grade").find('option:first').attr('selected', 'selected');
               $("#r_fk_m_id").val('');
               $("#r_content").val('');
               $(".uploadedList").html('');
               getReviewList(p_num);
            }
         });
      });
      
       getReviewList(p_num); 
      
      function getReviewList(p_num) {
         $.getJSON("/review/"+p_num, function(data) {
            var str ="";
            for(var i=0; i<data.rlist.length; i++) {
               var obj = data.rlist[i];
               var r_grade = '';
               for(var j = 0; j< obj.r_grade; j++){
                  r_grade += '★';
               }
               for(var j = obj.r_grade; j< 5; j++){
                  r_grade += '☆';
               }
               var filestr = '<li class="col-xs-3">';
               obj.filenames.forEach(function(filename, idx){
                  filestr += '<a target="_blank" href="/display?filename='+getImageName(filename)+'"><img alt="이미지파일 썸네일" src="/display?filename='+filename+'" class="img_icon" data-url="'+filename+'"></a>';
               });
               filestr += '</li>';
               str +='<div class="panel panel-info">'
                     +'<div class="panel-heading">'
                        +'<span>'+r_grade+'</span><br>'
                        +'<span>작성자 :'+obj.r_fk_m_id+'</span>'
                        +'<span class="pull-right">'+obj.r_regdate+'</span>'
                     +'</div>'
                     +'<div class="panel-body" data-r_num="'+obj.r_num+'">'
                        +'<p>'+obj.r_content+'</p>'
                        +'<ul class="imgList clearfix">'
                        +filestr
                        +'</ul>'
                     /*    +'<button class="btn btn-link review-update pull-right">수정</button>' */
                        +'<button class="btn btn-link review-delete pull-right">삭제</button>'
                     +'</div>'
                  +'</div>';
                     
            }
            $("#reviews").html(str);
         });
      }
      
      $("#reviews").on("click", ".review-delete", function(){
         var r_num = $(this).parent().attr("data-r_num");
         var r_content = $(this).prev("p").text();
         $.ajax({
            type : 'delete',
            url : '/review/'+r_num,
            headers : {
               'Content-Type' : 'application/json',
               'X-HTTP-Method-Override' : 'delete'
            },
            dataType : 'text',
            success : function(result){
               getReviewList(p_num);
            }
         });
      });
      price = ${p_dto.p_price};
      $("select").change(function(){
         size = $("#selectsize option:selected").val();
         color = $("#selectcolor option:selected").val();
         if(size != "" && color != ""){
            msg = '<tr>'
               +'<input type="hidden" name="sizes" value="'+size+'">'
               +'<input type="hidden" name="colors" value="'+color+'">'
               +'<td><div>옵션 : '+color+' / '+size+'</div></td>'
               +'<td><div class="product-quantity">'
               +'<input class="cart-plus-minus-box" type="number" name="cnts" value="1">'
               +'<div></td>'
               +'<td><div>'+ price +' won</div></td>'
               +'<td><a style="cursor: pointer;" class="selectdel">X</a></td>'
            +'</tr>';
            $("#selectlist").append(msg).trigger("create");
            $("#selectcolor").find('option:first').attr('selected', 'selected');
            $("#selectsize").find('option:first').attr('selected', 'selected');
         }
      });
      $("#selectlist").on("change", "[name='cnts']", function(){
         var cnt = $(this).val();
         if(cnt < 1){
            $(this).val("1");
            cnt = $(this).val();
         }
         $(this).parent().parent().next().children().html(price*cnt+" won");
      });
      
      $("#selectlist").on("click", ".selectdel", function(){
         $(this).parent().parent().remove();
      });
      
      $("#cart").click(function(event){
         event.preventDefault();
         $("#selectform").attr("method", "post");
         $("#selectform").attr("action", "/cart/insert");
         $("#selectform").submit();
      });
      
      $("#buy").click(function(event){
          event.preventDefault();
          $("#selectform").attr("method", "post");
          $("#selectform").attr("action", "/order/insertui");
          $("#selectform").submit();
       });
         
   });

   
</script>


</body>
</html>