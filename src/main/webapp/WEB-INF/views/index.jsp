<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resurces/https://fonts.googleapis.com/css?family=Cookie"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/user.css"/>">
    <link rel="stylesheet" href="<c.url value="/resources/assets/css/Pretty-Footer.css"/>">
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">ZOOM KART</a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Categories <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                           <c:forEach items="${categoryList}" var="category">
                            <li role="presentation"><a href="product${category.id}">${category.categoryName}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li role="presentation" class="box"><a href="index">HOME </a></li>
                     <sec:authorize access="!isAuthenticated()"> 
                    <li role="presentation" class="box"><a href="login">LOGIN </a></li>
                    <li role="presentation" class="box"><a href="register">REGISTER </a></li>
                    </sec:authorize>
                     <sec:authorize access="isAuthenticated()">
                    <li role="presentation" class="box"><a href="cart">Cart </a></li>
                    <li class="box"> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                              </sec:authorize>
                </ul>
            </div>
        </div>
    </nav>
    <div class="jumbotron hero">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-push-7 phone-preview">
                    <div class="iphone-mockup"></div>
                </div>
                <div class="col-md-12">
                    <div class="carousel slide" data-ride="carousel" id="carousel-1">
                        <div class="carousel-inner" role="listbox">
                            <div class="item"><img src="<c:url value="/resources/assets/img/img1.jpg"/>" alt="Slide Image"></div>
                            <div class="item"><img src="<c:url value="/resources/assets/img/img2.jpg"/>" alt="Slide Image"></div>
                            <div class="item active"><img src="<c:url value="/resources/assets/img/img3.jpg"/>" alt="Slide Image"></div>
                        </div>
                        <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel-1" role="button"
                            data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a></div>
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-1" data-slide-to="0"></li>
                            <li data-target="#carousel-1" data-slide-to="1"></li>
                            <li data-target="#carousel-1" data-slide-to="2" class="active"></li>
                        </ol>
                    </div>
                </div>
                <div class="col-md-6 col-md-pull-3 get-it">
                    <p></p>
                </div>
            </div>
        </div>
    </div>
    <section class="testimonials">
        <h2 class="text-center">ZOOM KART!</h2>
        <div class="page-header">
            <h1><small> ZOOM KART Camera and Photographic Supply StoresEstablishments primarily engaged in the retail sale of cameras, film, and other photographic supplies and equipment. Establishments primarily engaged in the retail sale of video cameras are classified in Industry 5731 and those engaged in finishing films are classified in Services, Industry.Camera shops, photographic-retail Photographic supply </small></h1></div>
        <blockquote>
            <p> </p>
            <footer>PHOTOGRAPHY IS A FINE ART. MAKE IT BEAUTIFUL WITH ZOOM KART</footer>
        </blockquote>
    </section>
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail"><img src="assets/img/canon.jpg">
                        <div class="caption">
                            <h3>Canon EOS 1300D</h3>
                            <p><a href="http://www.amazon.in/Canon/b/ref=w_bl_hsx_s_ce_web_7002571031?ie=UTF8&amp;node=7002571031&amp;field-lbr_brands_browse-bin=Canon">Canon:</a>Canon EOS 1300D 18MP Digital SLR Camera (Black) with 18-55mm ISII Lens, 16GB
                                Card and Carry Case </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail"><img src="assets/img/nikon.jpg">
                        <div class="caption">
                            <h3>Nikon D3300 </h3>
                            <p>Nikon D3300 24.2MP Digital SLR (Black) + AF-P DX NIKKOR 18-55mm f/3.5-5.6G VR Lens + AF-P DX NIKKOR 70-300mm f/4.5-6.3G ED VR Lens + Memory Card + Camera Bag </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail"><img src="assets/img/sony1.jpg">
                        <div class="caption">
                            <h3>Sony Cybershot HX350</h3>
                            <p>Sony Cybershot DSC-HX350 20.4MP Compact Digital Camera with 50x Optical Zoom (Black).</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Fantastic Features</h2></div>
                <div class="col-md-6">
                    <div class="row icon-features">
                        <div class="col-xs-4 icon-feature"><i class="glyphicon glyphicon-cloud"></i>
                            <p>Cloud-ready </p>
                        </div>
                        <div class="col-xs-4 icon-feature"><i class="glyphicon glyphicon-piggy-bank"></i>
                            <p>Saves You Money</p>
                        </div>
                        <div class="col-xs-4 icon-feature"><i class="glyphicon glyphicon-fire"></i>
                            <p>Fire Proof</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="row">
                <div class="col-md-4 col-sm-6 footer-navigation">
                    <h3><a href="#">Company<span> </span></a></h3>
                    <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                    <p
                    class="company-name">Company Name © 2015 </p>
                </div>
                <div class="col-md-4 col-sm-6 footer-contacts">
                    <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                        <p><span class="new-line-span">21 Revolution Street</span> Hyerabad,India</p>
                    </div>
                    <div><i class="fa fa-phone footer-contacts-icon"></i>
                        <p class="footer-center-info email text-left"> +91- 8919812730</p>
                    </div>
                    <div><i class="fa fa-envelope footer-contacts-icon"></i>
                        <p> <a href="#" target="_blank">support@zoomcart.com</a></p>
                    </div>
                </div>
                <div class="clearfix visible-sm-block"></div>
                <div class="col-md-4 footer-about">
                    <h4>About the company</h4>
                    <p>ZOOM KART Camera and Photographic Supply StoresEstablishments primarily engaged in the retail sale of cameras, film, and other photographic supplies and equipment.. </p>
                    <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
                </div>
            </div>
        </footer>
    </section>
    <footer class="site-footer"></footer>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>