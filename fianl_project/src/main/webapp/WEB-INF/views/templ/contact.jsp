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

</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
           <jsp:include page="../public/header.jsp"></jsp:include>
        <div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <div class="offset__wrapper">
            <!-- Start Search Popap -->
            <div class="search__area">
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="#" method="get">
                                    <input placeholder="Search here... " type="text">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
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
                            <a href="index.html">
                                <img src="images/logo/uniqlo.png" alt="logo">
                            </a>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetu adipisicing elit sed do eiusmod tempor incididunt ut labore.</p>
                    </div>
                    <ul class="sidebar__thumd">
                        <li><a href="#"><img src="images/sidebar-img/1.jpg" alt="sidebar images"></a></li>
                        <li><a href="#"><img src="images/sidebar-img/2.jpg" alt="sidebar images"></a></li>
                        <li><a href="#"><img src="images/sidebar-img/3.jpg" alt="sidebar images"></a></li>
                        <li><a href="#"><img src="images/sidebar-img/4.jpg" alt="sidebar images"></a></li>
                        <li><a href="#"><img src="images/sidebar-img/5.jpg" alt="sidebar images"></a></li>
                        <li><a href="#"><img src="images/sidebar-img/6.jpg" alt="sidebar images"></a></li>
                        <li><a href="#"><img src="images/sidebar-img/7.jpg" alt="sidebar images"></a></li>
                        <li><a href="#"><img src="images/sidebar-img/8.jpg" alt="sidebar images"></a></li>
                    </ul>
                    <div class="offset__widget">
                        <div class="offset__single">
                            <h4 class="offset__title">Language</h4>
                            <ul>
                                <li><a href="#"> Engish </a></li>
                                <li><a href="#"> French </a></li>
                                <li><a href="#"> German </a></li>
                            </ul>
                        </div>
                        <div class="offset__single">
                            <h4 class="offset__title">Currencies</h4>
                            <ul>
                                <li><a href="#"> USD : Dollar </a></li>
                                <li><a href="#"> EUR : Euro </a></li>
                                <li><a href="#"> POU : Pound </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="offset__sosial__share">
                        <h4 class="offset__title">Follow Us On Social</h4>
                        <ul class="off__soaial__link">
                            <li><a class="bg--twitter" href="https://twitter.com/devitemsllc" target="_blank" title="Twitter"><i class="zmdi zmdi-twitter"></i></a></li>
                            
                            <li><a class="bg--instagram" href="https://www.instagram.com/devitems/" target="_blank" title="Instagram"><i class="zmdi zmdi-instagram"></i></a></li>

                            <li><a class="bg--facebook" href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank" title="Facebook"><i class="zmdi zmdi-facebook"></i></a></li>

                            <li><a class="bg--googleplus" href="https://plus.google.com/" target="_blank" title="Google Plus"><i class="zmdi zmdi-google-plus"></i></a></li>

                            <li><a class="bg--google" href="#" target="_blank" title="Google"><i class="zmdi zmdi-google"></i></a></li>
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
                                <a href="#">
                                    <img src="images/product/sm-img/1.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">BO&Play Wireless Speaker</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$105.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div>
                        <div class="shp__single__product">
                            <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="images/product/sm-img/2.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">Brone Candle</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$25.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div>
                    </div>
                    <ul class="shoping__total">
                        <li class="subtotal">Subtotal:</li>
                        <li class="total__price">$130.00</li>
                    </ul>
                    <ul class="shopping__btn">
                        <li><a href="cart.html">View Cart</a></li>
                        <li class="shp__checkout"><a href="checkout.html">Checkout</a></li>
                    </ul>
                </div>
            </div>
            <!-- End Cart Panel -->
        </div>
        <!-- End Offset Wrapper -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Contact US</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.html">Home</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Contact US</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Contact Area -->
        <section class="htc__contact__area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-6 col-sm-12">
                        <div class="htc__contact__container">
                            <div class="htc__contact__address">
                                <h2 class="contact__title">contact info</h2>
                                <div class="contact__address__inner">
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-location-pin"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p>Location : <br> 77, seventh avenue, Brat road USA.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Adress -->
                                </div>
                                <div class="contact__address__inner">
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-mobile"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p> Phone : <br><a href="#">+00 111 222 333 44</a></p>
                                        </div>
                                    </div>
                                    <!-- End Single Adress -->
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-email"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p> Mail :<br><a href="#">yourmail@gmail.com</a></p>
                                        </div>
                                    </div>
                                    <!-- End Single Adress -->
                                </div>
                            </div>
                            <div class="contact-form-wrap">
                                <div class="contact-title">
                                    <h2 class="contact__title">Get In Touch</h2>
                                </div>
                                <form id="contact-form" action="#" method="post">
                                    <div class="single-contact-form">
                                        <div class="contact-box name">
                                            <input type="text" name="name" placeholder="Your Nme*">
                                            <input type="email" name="email" placeholder="Mail*">
                                        </div>
                                    </div>
                                    <div class="single-contact-form">
                                        <div class="contact-box subject">
                                            <input type="text" name="subject" placeholder="Subject*">
                                        </div>
                                    </div>
                                    <div class="single-contact-form">
                                        <div class="contact-box message">
                                            <textarea name="message"  placeholder="Massage*"></textarea>
                                        </div>
                                    </div>
                                    <div class="contact-btn">
                                        <button type="submit" class="fv-btn">SEND</button>
                                    </div>
                                </form>
                            </div> 
                            <div class="form-output">
                                <p class="form-messege"></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6 col-sm-12 smt-30 xmt-30">
                        <div class="map-contacts">
                            <div id="googleMap"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Contact Area -->
	<jsp:include page="../public/footer.jsp"></jsp:include>
    </div>
    <!-- Body main wrapper end -->
    
    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="js/plugins.js"></script>

    <!-- Google Map js -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmGmeot5jcjdaJTvfCmQPfzeoG_pABeWo"></script>
    <script>
        // When the window has finished loading create our google map below
        google.maps.event.addDomListener(window, 'load', init);

        function init() {
            // Basic options for a simple Google Map
            // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
            var mapOptions = {
                // How zoomed in you want the map to start at (always required)
                zoom: 12,

                scrollwheel: false,

                // The latitude and longitude to center the map (always required)
                center: new google.maps.LatLng(23.7286, 90.3854), // New York

                // How you would like to style the map. 
                // This is where you would paste any style found on Snazzy Maps.
                 styles: [
  

    {
        "featureType": "administrative",
        "elementType": "all",
        "stylers": [
            {
                "hue": "#ff0000"
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#888888"
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "hue": "#ff0000"
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "labels.text",
        "stylers": [
            {
                "color": "#6e6e6e"
            },
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "administrative.country",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#6f6b6b"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "labels.text",
        "stylers": [
            {
                "color": "#c5c5c5"
            }
        ]
    },
    {
        "featureType": "landscape.natural",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#cfcfcf"
            }
        ]
    },
    {
        "featureType": "landscape.natural.landcover",
        "elementType": "all",
        "stylers": [
            {
                "hue": "#ff0000"
            }
        ]
    },
    {
        "featureType": "landscape.natural.landcover",
        "elementType": "geometry",
        "stylers": [
            {
                "hue": "#ff0000"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "labels.text",
        "stylers": [
            {
                "visibility": "off"
            },
            {
                "color": "#909090"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi.medical",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#e5e5e5"
            }
        ]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#e5e5e5"
            }
        ]
    },
    {
        "featureType": "poi.place_of_worship",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#ff0000"
            }
        ]
    },
    {
        "featureType": "poi.sports_complex",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#f7f7f7"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ffffff"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry.stroke",
        "stylers": [
            {
                "gamma": 7.18
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "road.local",
        "elementType": "labels.text",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "transit.line",
        "elementType": "geometry",
        "stylers": [
            {
                "gamma": 0.48
            }
        ]
    },
    {
        "featureType": "transit.station",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "all",
        "stylers": [
            {
                "color": "#bcbcbc"
            },
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ffffff"
            }
        ]
    }
]
            };

            // Get the HTML DOM element that will contain your map 
            // We are using a div with id="map" seen below in the <body>
            var mapElement = document.getElementById('googleMap');

            // Create the Google Map using our element and options defined above
            var map = new google.maps.Map(mapElement, mapOptions);

            // Let's also add a marker while we're at it
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(23.7286, 90.3854),
                map: map,
                title: 'Tasfiu!',
                icon: 'images/icons/map.png',
                animation:google.maps.Animation.BOUNCE

            });
        }
    </script>

    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="js/main.js"></script>

</body>

</html>