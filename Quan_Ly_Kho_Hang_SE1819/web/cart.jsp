<!<!-- thông qua session lấy danh sách các sản phẩm đã ấn 
  vào nút thêm vào giỏ hàng, sau đó lưu vào database
-->

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

        <style>
            /* Custom CSS to adjust the size of the bell icon */
            .bell-icon {
                font-size: 18px; /* Adjust the size as needed */
            }
            .banner-area {
                margin-top: 160px;
            }
        </style>

        <!--
                CSS
                ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css" />
        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/themify-icons.css" />
        <link rel="stylesheet" href="css/nice-select.css" />
        <link rel="stylesheet" href="css/nouislider.min.css" />
        <link rel="stylesheet" href="css/bootstrap.css" />
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

        <!-- Start Banner Area -->
        <section class="banner-area">
            <div class="container"></div>
        </section>
        <!-- End Banner Area -->

        <!--================Cart Area =================-->
        <section class="cart_area">
            <div class="container">
                <div class="cart_inner">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/cart.jpg" alt="" />
                                            </div>
                                            <div class="media-body">
                                                <p>Minimalistic shop for multipurpose use</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$360.00</h5>
                                    </td>
                                    <td>
                                        <div class="product_count">
                                            <input
                                                type="text"
                                                name="qty"
                                                id="sst"
                                                maxlength="12"
                                                value="1"
                                                title="Quantity:"
                                                class="input-text qty"
                                                />
                                            <button
                                                onclick="var result = document.getElementById('sst'); var sst = result.value; if (!isNaN(sst)) result.value++; return false;"
                                                class="increase items-count"
                                                type="button"
                                                >
                                                <i class="lnr lnr-chevron-up"></i>
                                            </button>
                                            <button
                                                onclick="var result = document.getElementById('sst'); var sst = result.value; if (!isNaN(sst) & amp; & amp; sst > 0) result.value--; return false;"
                                                class="reduced items-count"
                                                type="button"
                                                >
                                                <i class="lnr lnr-chevron-down"></i>
                                            </button>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$720.00</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/cart.jpg" alt="" />
                                            </div>
                                            <div class="media-body">
                                                <p>Minimalistic shop for multipurpose use</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$360.00</h5>
                                    </td>
                                    <td>
                                        <div class="product_count">
                                            <input
                                                type="text"
                                                name="qty"
                                                id="sst"
                                                maxlength="12"
                                                value="1"
                                                title="Quantity:"
                                                class="input-text qty"
                                                />
                                            <button
                                                onclick="var result = document.getElementById('sst'); var sst = result.value; if (!isNaN(sst)) result.value++; return false;"
                                                class="increase items-count"
                                                type="button"
                                                >
                                                <i class="lnr lnr-chevron-up"></i>
                                            </button>
                                            <button
                                                onclick="var result = document.getElementById('sst'); var sst = result.value; if (!isNaN(sst) & amp; & amp; sst > 0) result.value--; return false;"
                                                class="reduced items-count"
                                                type="button"
                                                >
                                                <i class="lnr lnr-chevron-down"></i>
                                            </button>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$720.00</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/cart.jpg" alt="" />
                                            </div>
                                            <div class="media-body">
                                                <p>Minimalistic shop for multipurpose use</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$360.00</h5>
                                    </td>
                                    <td>
                                        <div class="product_count">
                                            <input
                                                type="text"
                                                name="qty"
                                                id="sst"
                                                maxlength="12"
                                                value="1"
                                                title="Quantity:"
                                                class="input-text qty"
                                                />
                                            <button
                                                onclick="var result = document.getElementById('sst'); var sst = result.value; if (!isNaN(sst)) result.value++; return false;"
                                                class="increase items-count"
                                                type="button"
                                                >
                                                <i class="lnr lnr-chevron-up"></i>
                                            </button>
                                            <button
                                                onclick="var result = document.getElementById('sst'); var sst = result.value; if (!isNaN(sst) & amp; & amp; sst > 0) result.value--; return false;"
                                                class="reduced items-count"
                                                type="button"
                                                >
                                                <i class="lnr lnr-chevron-down"></i>
                                            </button>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$720.00</h5>
                                    </td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <h5>Subtotal</h5>
                                    </td>
                                    <td>
                                        <h5>$2160.00</h5>
                                    </td>
                                </tr>

                                <tr class="out_button_area">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <div class="checkout_btn_inner d-flex align-items-center">
                                            <a class="gray_btn" href="shop.html">Continue Shopping</a>
                                            <a class="primary-btn" href="confirmation.html">Proceed to checkout</a>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Cart Area =================-->

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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
