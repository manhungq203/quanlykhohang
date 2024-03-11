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
            .banner-area {
                margin-top: 160px;
            }

            .prd-bottom {
                display: flex;
                margin-left: 5px;
            }
            /* Custom CSS to adjust the size of the bell icon */
            .bell-icon {
                font-size: 18px; /* Adjust the size as needed */
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
        <link rel="stylesheet" href="styleimage.css" />
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

    <body id="category">
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
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-4 col-md-5">
                    <div class="sidebar-categories">
                        <div class="head">Browse Categories</div>
                        <ul class="main-categories">

                            <!--===============================================================================================================================-->            

                            <c:forEach items="${requestScope.data}" var="categories">
                                <c:if test="${categories.father_categories_id == 0}">
                                    <li class="main-nav-list">
                                        <a
                                            data-toggle="collapse"
                                            href="#fruitsVegetable"
                                            aria-expanded="false"
                                            aria-controls="fruitsVegetable"
                                            ><span class="lnr lnr-arrow-right"></span>${categories.name}<span class="number">(53)</span></a
                                        >
                                        <ul
                                            class="collapse"
                                            id="fruitsVegetable"
                                            data-toggle="collapse"
                                            aria-expanded="false"
                                            aria-controls="fruitsVegetable"
                                            >
                                            <c:forEach items="${requestScope.data}" var="child">
                                                <c:if test="${child.father_categories_id == categories.category_id}">
                                                    <li class="main-nav-list child">
                                                        <a href="search?id=${child.category_id}">${child.name}<span class="number">(13)</span></a>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                </c:if>

                            </c:forEach>

                            <!--===============================================================================================================================-->            

                        </ul>
                    </div>

                </div>
                <div class="col-xl-9 col-lg-8 col-md-7">
                    <!-- Start Filter Bar -->
                    <div class="filter-bar d-flex flex-wrap align-items-center">
                        <div class="sorting">
                            <select>
                                <option value="1">Default sorting</option>
                                <option value="1">Default sorting</option>
                                <option value="1">Default sorting</option>
                            </select>
                        </div>
                        <div class="sorting mr-auto">
                            <select>
                                <option value="1">Show 12</option>
                                <option value="1">Show 12</option>
                                <option value="1">Show 12</option>
                            </select>
                        </div>
                        <div class="pagination">
                            <a href="#" class="prev-arrow"
                               ><i class="fa fa-long-arrow-left" aria-hidden="true"></i
                                ></a>
                            <a href="#" class="active">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#" class="dot-dot"
                               ><i class="fa fa-ellipsis-h" aria-hidden="true"></i
                                ></a>
                            <a href="#">6</a>
                            <a href="#" class="next-arrow"
                               ><i class="fa fa-long-arrow-right" aria-hidden="true"></i
                                ></a>
                        </div>
                    </div>
                    <!-- End Filter Bar -->
                    <!-- Start Best Seller -->

                    <!-- =========================phần hiển thị dữ liệu ở đây=========================== -->          

                    <section class="lattest-product-area pb-40 category-list">
                        <div class="row">
                            <!-- single product -->
                            <c:forEach items="${requestScope.pdata}" var="pro">




                                <div class="col-lg-4 col-md-6">
                                    <div class="single-product">
                                        <img class="img-fluid" src="img/image/${pro.image}" alt="" />
                                        <div class="product-details">
                                            <h6>${pro.name}</h6>
                                            <div class="price">
                                                <h6>${pro.price_cur}</h6>
                                            </div>
                                            <div class="prd-bottom">
                                                <a href="#">
                                                    <button class="button-5 c1" role="button">
                                                        ADD TO BAG
                                                    </button>
                                                </a>
                                                <a href="detail?id=${pro.product_id}">
                                                    <button class="button-5 c2" role="button">
                                                        VIEW DETAILS
                                                    </button>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </section>

                    <!--=================================================================================  -->


                    <!-- End Best Seller -->
                    <!-- Start Filter Bar -->

                    <!-- End Filter Bar -->
                </div>
            </div>
        </div>

        <!-- Start related-product Area -->

        <!-- End related-product Area -->

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

        <!-- Modal Quick Product View -->
        <div
            class="modal fade"
            id="exampleModal"
            tabindex="-1"
            role="dialog"
            aria-hidden="true"
            >
            <div class="modal-dialog" role="document">
                <div class="container relative">
                    <button
                        type="button"
                        class="close"
                        data-dismiss="modal"
                        aria-label="Close"
                        >
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="product-quick-view">
                        <div class="row align-items-center">
                            <div class="col-lg-6">
                                <div class="quick-view-carousel">
                                    <div
                                        class="item"
                                        style="background: url(img/organic-food/q1.jpg)"
                                        ></div>
                                    <div
                                        class="item"
                                        style="background: url(img/organic-food/q1.jpg)"
                                        ></div>
                                    <div
                                        class="item"
                                        style="background: url(img/organic-food/q1.jpg)"
                                        ></div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="quick-view-content">
                                    <div class="top">
                                        <h3 class="head">Mill Oil 1000W Heater, White</h3>
                                        <div class="price d-flex align-items-center">
                                            <span class="lnr lnr-tag"></span>
                                            <span class="ml-10">$149.99</span>
                                        </div>
                                        <div class="category">Category: <span>Household</span></div>
                                        <div class="available">
                                            Availibility: <span>In Stock</span>
                                        </div>
                                    </div>
                                    <div class="middle">
                                        <p class="content">
                                            Mill Oil is an innovative oil filled radiator with the
                                            most modern technology. If you are looking for something
                                            that can make your interior look awesome, and at the same
                                            time give you the pleasant warm feeling during the winter.
                                        </p>
                                        <a href="#" class="view-full"
                                           >View full Details
                                            <span class="lnr lnr-arrow-right"></span
                                            ></a>
                                    </div>
                                    <div class="bottom">
                                        <div class="color-picker d-flex align-items-center">
                                            Color:
                                            <span class="single-pick"></span>
                                            <span class="single-pick"></span>
                                            <span class="single-pick"></span>
                                            <span class="single-pick"></span>
                                            <span class="single-pick"></span>
                                        </div>
                                        <div
                                            class="quantity-container d-flex align-items-center mt-15"
                                            >
                                            Quantity:
                                            <input
                                                type="text"
                                                class="quantity-amount ml-15"
                                                value="1"
                                                />
                                            <div class="arrow-btn d-inline-flex flex-column">
                                                <button
                                                    class="increase arrow"
                                                    type="button"
                                                    title="Increase Quantity"
                                                    >
                                                    <span class="lnr lnr-chevron-up"></span>
                                                </button>
                                                <button
                                                    class="decrease arrow"
                                                    type="button"
                                                    title="Decrease Quantity"
                                                    >
                                                    <span class="lnr lnr-chevron-down"></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="d-flex mt-20">
                                            <a href="#" class="view-btn color-2"
                                               ><span>Add to Cart</span></a
                                            >
                                            <a href="#" class="like-btn"
                                               ><span class="lnr lnr-layers"></span
                                                ></a>
                                            <a href="#" class="like-btn"
                                               ><span class="lnr lnr-heart"></span
                                                ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
