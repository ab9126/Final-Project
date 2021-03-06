<%@page import="java.util.List"%>
<%@page import="com.naver.dto.ProductDTO"%>
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

</head>
<body>
       <header>
           <!-- Start Mainmenu Area -->
           <div id="sticky-header-with-topbar" class="mainmenu__area sticky__header">
               <div class="container">
                   <div class="row">
                     <div class="col-md-1 col-lg-1 col-5">
                           <div class="logo">
                               <a href="/">
                                   <img src="/resources/images/logo/adminlogo.png" alt="logo">
                               </a>
                           </div>
                       </div>
                       <!-- Start MAinmenu Ares -->
                       <div class="col-md-8 col-lg-8 d-none d-md-block">
                           <nav class="mainmenu__nav  d-none d-lg-block">
                        <ul class="main__menu">
                                       <li class="drop"><a href="/">Home</a></li>
                                       
                                       <li class="drop"><a href="/member/list">회원</a>
                                          <ul class="dropdown">
                                               <li><a href="/member/insert">회원 가입</a></li>
                                               <li><a href="/member/list">회원 목록</a></li>
                                           </ul>
                                       </li>    
                                       
                                       <li class="drop"><a href="/product/list">상품</a>
                                           <ul class="dropdown">
                                               <li><a href="/product/insert">상품 등록</a></li>
                                               <li><a href="/product/list">상품 목록</a></li>
                                           </ul>
                                       </li>
                                       
                                       <li class="drop"><a href="/admin/allorderlist">전체주문목록</a>
                                           <ul class="dropdown">
                                               <li><a href="/admin/allorderlist">취소/교환/반품/환불</a></li>
                                           </ul>
                                       </li>
                                       
                                      <li class="drop"><a href="/qna/list">게시글 관리</a>
                                           <ul class="dropdown">
                                               <li><a href="/product/list">리뷰 관리</a></li>
                                               <li><a href="/qna/list">Q&A 관리</a></li>
                                           </ul>
                                       </li>
                                   </ul>
                           </nav>
                           
                           <div class="mobile-menu clearfix d-block d-lg-none">
                               <nav id="mobile_dropdown">
                                   <ul>
                                       <li><a href="/">Home</a></li>
                                       
                                       <li><a href="/member/insert">회원</a>
                                          <ul>
                                               <li><a href="/member/insert">회원 가입</a></li>
                                               <li><a href="/member/list">회원 목록</a></li>
                                           </ul>
                                       </li>    
                                       
                                       <li><a href="/product/insert">상품</a>
                                           <ul>
                                               <li><a href="/product/insert">상품 등록</a></li>
                                               <li><a href="/product/list">상품 목록</a></li>
                                           </ul>
                                       </li>
                                       
                                       <li><a href="/admin/allorderlist">전체주문목록</a>
                                           <ul>
                                               <li><a href="/admin/allorderlist">취소/교환/반품/환불</a></li>
                                           </ul>
                                       </li>
                                       
                                      <li><a href="">게시글 관리</a>
                                           <ul>
                                               <li><a href="/product/list">리뷰 관리</a></li>
                                               <li><a href="/qna/list">Q&A 관리</a></li>
                                           </ul>
                                       </li>
                                       
                                       <li><a href="#">pages</a>
                                           <ul>
                                               <li><a href="about.html">about</a></li>
                                               <li><a href="shop.html">shop</a></li>
                                               <li><a href="/product/list">product details</a></li>
                                               <li><a href="/cart/list/${login.m_id}">cart</a></li>
                                               <li><a href="wishlist.html">wishlist</a></li>
                                               <li><a href="checkout.html">checkout</a></li>
                                               <li><a href="team.html">team</a></li>
                                               <li><a href="login-register.html">login & register</a></li>
                                           </ul>
                                       </li>
                                       <li><a href=/qna/list>Q&A</a></li>
                                   </ul>
                               </nav>
                           </div>  
                       </div>
                       <!-- End MAinmenu Ares -->
                       <div class="col-md-2 col-lg-2 col-6">  
                           <ul class="menu-extra">
                               <li class="search search__open d-none d-sm-block"><span class="ti-search"></span></li>
                            <c:choose>
                              <c:when test="${login.m_id != null}">
                                 <li><a href="/member/read?m_id=${login.m_id}"><span
                                       class="ti-user"></span></a></li>
                              </c:when>
                              <c:otherwise>
                                 <li><a href="/member/login"><span
                                       class="ti-user"></span></a></li>
                              </c:otherwise>
                           </c:choose>
                               <li class="cart__menu"><a><span class="ti-shopping-cart"></span></a></li>
                               <li id="ti-menu" class="toggle__menu d-none d-md-block"><span class="ti-menu"></span></li>
                               <c:if test="${login.m_id != null}">
                              <li><a href="/member/logout"> <span
                                    class="fas fa-sign-out-alt"></span></a></li>
                           </c:if>
                           </ul>
                       </div>
                   </div>
                   <div class="mobile-menu-area"></div>
               </div>
           </div>
           <!-- End Mainmenu Area -->
       </header>
       <!-- End Header Style -->



<!-- Start Offset Wrapper -->
<div class="offset__wrapper">
   <!-- Start Search Popap -->
   <div class="search__area">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="search__inner">
                  <form id="searchform" method="get">
                     <input placeholder="Search here... " id="keyword" name="search" type="text">
                     <button class="searchbtn" type="submit"></button>
                  </form>
                  
                  <div class="search__close__btn">
                     <span class="search__close__btn_icon"><i
                        class="zmdi zmdi-close"></i></span>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- End Search Popap -->
   <!-- Start Offset MEnu -->
   <div class="offsetmenu">
      <div class="offsetmenu__inner">
         <div class="offsetmenu__close__btn">
            <a href="#"><i class="zmdi zmdi-close"></i></a>
         </div>
         <div class="off__contact">
            <div class="logo">
               <a href="index.html"> <img
                  src="/resources/images/logo/adminlogo.png" alt="logo">
               </a>
            </div>
               <c:if test="${empty login}">
                    <form action="/member/loginPost" method="post">
                            ID:<input name = "m_id" type="text" required="required">
                            PW:<input name ="m_password" type="password" required="required">
                            <input class="btn" type="submit" value="로그인"></input>
                         </form>
                      </c:if>
                      
                      <c:if test="${not empty login}">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <h2>${login.m_name} 님 환영 합니다. </h2>
                      <br>
                         <form action="/member/logout" method="get">
                            <input class="btn" type="submit" value="로그아웃">
                         </form>
                      </c:if>
         </div>
            <c:if test="${not empty login}">
               <b>인기 상품</b>
            </c:if>
         <ul class="sidebar__thumd">
            
            <c:forEach items="${hotlist}" begin="0" end="8" var="dto">
               <li>
                  <a href="/product/read/${dto.p_num}?curPage=1">
                     <img src="/display?filename=${dto.p_thumb}" alt="sidebar images" style="margin:5px; width: 100px; height: 100px;">
                  </a>
               </li>
            </c:forEach>
         </ul>

         <div class="offset__sosial__share">
            <h4 class="offset__title">Follow Us On Social</h4>
            <ul class="off__soaial__link">
               <li><a class="bg--twitter"
                  href="https://twitter.com/devitemsllc" target="_blank"
                  title="Twitter"><i class="zmdi zmdi-twitter"></i></a></li>

               <li><a class="bg--instagram"
                  href="https://www.instagram.com/devitems/" target="_blank"
                  title="Instagram"><i class="zmdi zmdi-instagram"></i></a></li>

               <li><a class="bg--facebook"
                  href="https://www.facebook.com/devitems/?ref=bookmarks"
                  target="_blank" title="Facebook"><i class="zmdi zmdi-facebook"></i></a></li>

               <li><a class="bg--googleplus" href="https://plus.google.com/"
                  target="_blank" title="Google Plus"><i
                     class="zmdi zmdi-google-plus"></i></a></li>

               <li><a class="bg--google" href="#" target="_blank"
                  title="Google"><i class="zmdi zmdi-google"></i></a></li>
            </ul>
         </div>
      </div>
   </div>
   <!-- End Offset MEnu -->
   <!-- Start Cart Panel -->
   <div class="shopping__cart">
      <div class="shopping__cart__inner">
         <div class="offsetmenu__close__btn">
            <a href="#"><i class="zmdi zmdi-close"></i></a>
         </div>
         <div class="shp__cart__wrap">
            <div class="shp__single__product">
               <div class="shp__pro__thumb">
                  <a href="#"> <img src="/resources/images/product/sm-img/1.jpg"
                     alt="product images">
                  </a>
               </div>
               <div class="shp__pro__details">
                  <h2>
                     <a href="/resources/product-details.html">BO&Play Wireless
                        Speaker</a>
                  </h2>
                  <span class="quantity">QTY: 1</span> <span class="shp__price">$105.00</span>
               </div>
               <div class="remove__btn">
                  <a href="#" title="Remove this item"><i
                     class="zmdi zmdi-close"></i></a>
               </div>
            </div>
            <div class="shp__single__product">
               <div class="shp__pro__thumb">
                  <a href="#"> <img src="/resources/images/product/sm-img/2.jpg"
                     alt="product images">
                  </a>
               </div>
               <div class="shp__pro__details">
                  <h2>
                     <a href="/resources/product-details.html">Brone Candle</a>
                  </h2>
                  <span class="quantity">QTY: 1</span> <span class="shp__price">$25.00</span>
               </div>
               <div class="remove__btn">
                  <a href="#" title="Remove this item"><i
                     class="zmdi zmdi-close"></i></a>
               </div>
            </div>
         </div>

         <ul class="shoping__total">
            <li class="subtotal">Subtotal:</li>
            <li class="total__price">$130.00</li>
         </ul>
         <ul class="shopping__btn">
            <li><a href="/cart/list/${login.m_id}">View Cart</a></li>
            <li class="shp__checkout"><a href="/resources/checkout.html">Checkout</a></li>
         </ul>
      </div>
   </div>
   <!-- End Cart Panel -->
</div>
<!-- End Offset Wrapper -->




<script type="text/javascript">
   $(document).ready(function(){
         $(".searchbtn").click(function(event){   
            event.preventDefault();
            var search = $("#keyword").val();
            if(search == "")
               alert("검색어를 입력하세요.");
            else
               location.href = "/product/search/"+search;
         });
         
               
         
   });
   
   
/*    <ul class="sidebar__thumd">
   <c:forEach items="${to.plist}" begin="0" end="8" var="dto">
      <li>
         <a href="#">
            <img src="/display?filename=${dto.p_thumb}" alt="sidebar images" style="margin:5px; width: 100px; height: 100px;">
         </a>
      </li>
   </c:forEach>
</ul>
 */
   
   
   
   </script>

</body>
</html>