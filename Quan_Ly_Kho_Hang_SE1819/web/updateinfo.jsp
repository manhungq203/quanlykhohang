<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
        <link rel="stylesheet" href="css/registration.css" />
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
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a
                            style="margin-left: 49%"
                            class="navbar-brand logo_h"
                            href="index.jsp"
                            ><img style="width: 50px" src="img/logo/logomain.png" alt=""
                              /></a>
                    </div>
                </nav>
            </div>
        </header>
        <!-- End Header Area -->

        <!-- Start Banner Area -->
        <section class="banner-area">
            <div class="container"></div>
        </section>

        <div class="wrapper">
            <div class="form">
                <center><h1 class="title">INFORMATION</h1></center>
                <c:set var="person" value="${sessionScope.account}"></c:set>
                <form action="register" class="myform">
                    <div class="control-from">
                        <label for="firstname">Full Name </label>
                        <input type="text" name="name" id="fullname" value="${person.name}" required />
                    </div>

                    <div class="control-from">
                        <label for="lastname">Date Of Birth </label>
                        <input type="date" name="dob" id="dob" value="${person.dob}" required />
                    </div>

                    <div class="control-from">
                        <label for="emailaddress">Email </label>
                        <input type="text" name="email" id="emailaddress" value="${person.email}" required />
                    </div>

                    <div class="control-from">
                        <label for="phonenumber">Phone Number </label>
                        <input type="phone" name="phone" id="phonenumber" value="${person.phone_number}" required />
                    </div>

                    <div class="full-width">
                        <label for="companyname">Address</label>
                        <input type="text" name="address" id="address" value="${person.address}" required />
                    </div>

                    <div class="control-from">
                        <label for="businesscategory">Username</label>
                        <input type="text" name="username" id="username" value="${person.username}" required />
                    </div>

                    <div class="control-from">
                        <label for="location">Password </label>
                        <input type="password" name="password" id="password" value="${person.password}" required />
                    </div>

                    


                    <div class="button">
                        <button id="register">Save</button>
                    </div>
                </form>
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
    </body>
</html>
