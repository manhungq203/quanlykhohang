

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
    <head>
        <!-- Mobile Specific Meta -->
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <style>
            /* Custom CSS to adjust the size of the bell icon */
            .bell-icon {
                font-size: 18px; /* Adjust the size as needed */
            }
        </style>
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/logo/logomain.png" />
        <!-- Author Meta -->
        <meta name="author" content="CodePixar" />
        <!-- Meta Description -->
        <meta name="description" content="" />
        <!-- Meta Keyword -->
        <meta name="keywords" content="" />
        <!-- meta character set -->
        <meta charset="UTF-8" />
        <!-- Site Title -->
        <title>Harmony WareHourse</title>
        <!--
                    CSS
                    ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/themify-icons.css" />
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/nice-select.css" />
        <link rel="stylesheet" href="css/nouislider.min.css" />
        <link rel="stylesheet" href="css/ion.rangeSlider.css" />
        <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
        <link rel="stylesheet" href="css/magnific-popup.css" />
        <link rel="stylesheet" href="css/main.css" />
        <link
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
            rel="stylesheet"
            />
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
            rel="stylesheet"
            />
    </head>

    <body>
        <!-- Start Header Area -->
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="index.jsp"
                           ><img style="width: 50px" src="img/logo/logomain.png" alt=""
                              /></a>
                        <a
                            style="
                            color: rgba(10, 0, 83, 0.416);
                            font-weight: bold;
                            font-size: larger;
                            "
                            href="index.jsp"
                            >
                            Harmony <br />
                            WareHourse</a
                        >
                        <button
                            class="navbar-toggler"
                            type="button"
                            data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent"
                            aria-expanded="false"
                            aria-label="Toggle navigation"
                            >
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div
                            class="collapse navbar-collapse offset"
                            id="navbarSupportedContent"
                            >
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item">
                                    <!-- shop.jsp -->
                                    <a class="nav-link" href="shop">Shop</a>
                                </li>

                                <c:set var="person" value="${sessionScope.account}"></c:set>
                                <c:choose>
                                    <c:when test="${person != null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="updateperson">${person.name}</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="nav-item">
                                            <a class="nav-link" href="login.jsp">Login</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>



                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item">
                                    <div style="margin-top: 21px">
                                        <a class="nav-link" href="notion.jsp">
                                            <i class="fas fa-bell bell-icon"></i>
                                            <!-- Font Awesome bell icon -->
                                        </a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a href="cart.jsp" class="cart"
                                       ><span class="ti-bag"></span
                                        ></a>
                                </li>
                                <li class="nav-item">
                                    <button class="search">
                                        <span class="lnr lnr-magnifier" id="search"></span>
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="search_input" id="search_input_box">
                <div class="container">
                    <form class="d-flex justify-content-between">
                        <input
                            type="text"
                            class="form-control"
                            id="search_input"
                            placeholder="Search Here"
                            />
                        <button type="submit" class="btn"></button>
                        <span
                            class="lnr lnr-cross"
                            id="close_search"
                            title="Close Search"
                            ></span>
                    </form>
                </div>
            </div>
        </header>
        <!-- End Header Area -->

        <!-- start banner Area -->
        <section class="banner-area"></section>
        <div class="banner-img">
            <img src="img/banner/WareHourse.png" />
        </div>

        <!-- End banner Area -->

        <!-- start features Area -->
        <section class="features-area section_gap">
            <div class="container">
                <div class="row features-inner">
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="img/features/f-icon1.png" alt="" />
                            </div>
                            <h6>Free Delivery</h6>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="img/features/f-icon2.png" alt="" />
                            </div>
                            <h6>Return Policy</h6>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="img/features/f-icon3.png" alt="" />
                            </div>
                            <h6>24/7 Support</h6>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="img/features/f-icon4.png" alt="" />
                            </div>
                            <h6>Secure Payment</h6>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end features Area -->

        <!-- start footer Area -->
        <footer class="footer-area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="single-footer-widget">
                            <h6>About Us</h6>
                            <p style="color: aliceblue">
                                Our warehouse management project is dedicated to optimizing
                                storage and logistics solutions for businesses of all sizes.
                                With a focus on efficiency and accuracy, we leverage
                                cutting-edge technology to streamline inventory management.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="single-footer-widget mail-chimp">
                            <h6 class="mb-20">Privacy & Policies</h6>
                            <p style="color: aliceblue">Privacy</p>
                            <p style="color: aliceblue">Payment</p>
                            <p style="color: aliceblue">Term and conditions</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-footer-widget">
                            <h6>Contact Us</h6>
                            <link rel="stylesheet" href="css/bootstrap.css" />
                            <link rel="stylesheet" href="css/bootstrap.css" />
                            <link rel="stylesheet" href="css/bootstrap.css" />
                            <link rel="stylesheet" href="css/bootstrap.css" />
                            <p style="color: aliceblue">Phone: 0333076666</p>
                            <p style="color: aliceblue">Email: harmony@gmail.com</p>
                            <p style="color: aliceblue">
                                Address: 21 Cat Linh, Dong Da, Ha Noi
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End footer Area -->

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
            crossorigin="anonymous"
        ></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <!--gmaps Js-->
        <script src="js/main.js"></script>
    </body>
</html>

