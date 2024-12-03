<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <%@page import="Dao.*" %>
    <%@page import="Model.*" %>
    <%@page import="java.util.*" %>
    
    <head>
        <title>Eduport - LMS, Education and Course Theme</title>

        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="Webestica.com">
        <meta name="description" content="Eduport- LMS, Education and Course Theme">

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Google Font -->
        <link rel="preconnect" href="https://fonts.googleapis.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&amp;family=Roboto:wght@400;500;700&amp;display=swap">

        <!-- Plugins CSS -->
        <link rel="stylesheet" type="text/css" href="assets/vendor/font-awesome/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/tiny-slider/tiny-slider.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/glightbox/css/glightbox.css">

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">

    </head>
    <body>
          <header class="navbar-light navbar-sticky header-static">
            <!-- Logo Nav START -->
            <nav class="navbar navbar-expand-xl">
                <div class="container">
                    <!-- Logo START -->
                    <a class="navbar-brand" href="index-2.html">
                        <img class="light-mode-item navbar-brand-item" src="assets/images/logo.svg" alt="logo">
                        <img class="dark-mode-item navbar-brand-item" src="assets/images/logo-light.svg" alt="logo">
                    </a>
                    <!-- Logo END -->

                    <!-- Responsive navbar toggler -->
                    <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-animation">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </button>

                    <!-- Main navbar START -->
                    <div class="navbar-collapse w-100 collapse" id="navbarCollapse">

                        <!-- Nav Main menu START -->
                        <ul class="navbar-nav navbar-nav-scroll mx-auto">
                            <!-- Nav item 1 Demos -->


                            <!-- Nav item 2 Pages -->


                            <!-- Nav item 3 Account -->

                        </ul>
                        <!-- Nav Main menu END -->

                        <!-- Nav Search START -->

                        <!-- Nav Search END -->
                    </div>
                    <!-- Main navbar END -->

                    <!-- Profile START -->
                    <div class="col-md-2">
                        <div class="row">
                            <div class="col">
                                <div class="user-status">
                                    <div class="user-logo">
                                        <i class='bx bx-user'></i>
                                    </div>
                                    <span class="user-title">Profile</span>
                                    <div class="user-box_access">
                                        <div class="user-box-header">
                                            <!-- access -->
                                            <%if(User != null) {%>
                                            <div class="user-access">
                                                <%if(User.getAvatar() != null) {%>
                                                <a href="profile" class="d-block">
                                                    <img src="./images/<%=User.getAvatar()%>" alt="">
                                                </a>
                                                <%} else {%>
                                                <a href="profile" class="d-block">
                                                    <img src="./images/avata.jpg" alt="">
                                                </a>
                                                <%}%>

                                                <div class="user-access-info">
                                                    <span><%=User.getName()%></span>
                                                    <p><%=User.getAddress()%></p>
                                                </div>
                                                <a href="logout" class="logout-link">
                                                    <div class="logout-button">
                                                        Logout
                                                    </div>
                                                </a>
                                            </div>
                                            <%} else {%>
                                            <!-- not access -->
                                            <div class="user-not-access">
                                                <span class="not-access-title">Welcome</span>
                                                <p>To access account and manage orders</p>
                                                <a href="login" class="login-link">
                                                    <div class="login-button">
                                                        Login / Signup
                                                    </div>
                                                </a>
                                            </div>
                                            <%}%>
                                        </div>


                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <!-- Profile START -->
                </div>
            </nav>
            <!-- Logo Nav END -->
        </header>
    </body>
</html>
