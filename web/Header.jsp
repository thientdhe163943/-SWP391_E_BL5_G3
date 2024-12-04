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
        <%
            // Ki?m tra ki?u c?a ??i t??ng trong session
            Object userObject = session.getAttribute("user");
            User user = null;
    
            if (userObject instanceof User) {
                user = (User) userObject;
            } else {
                // Có th? userObject là ki?u khác, x? lý l?i ho?c thông báo ng??i dùng ch?a ??ng nh?p
            }
        %>


        <!-- Header START -->
        <header class="navbar-light navbar-sticky header-static">
            <!-- Logo Nav START -->
            <nav class="navbar navbar-expand-xl">
                <div class="container">
                    <!-- Logo START -->
                    <a class="navbar-brand" href="home">
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
                        <!-- Nav Search START -->
                        <div class="nav my-3 my-xl-0 px-4 flex-nowrap align-items-center">
                            <div class="nav-item w-100">
                                <form class="position-relative">
                                    <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                    <button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6"></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Nav Search END -->
                    </div>
                    <!-- Main navbar END -->

                  
                    <!-- Profile START -->
                    <div class="dropdown ms-1 ms-lg-0">
                        <a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
                            <img class="avatar-img rounded-circle" src="assets/images/avatar/01.jpg" alt="avatar">
                        </a>
                        <ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
                            <!-- Profile info -->
                            <li class="px-3">
                                <div class="d-flex align-items-center">
                                    <!-- Avatar -->
                                    <div class="avatar me-3">
                                        <img class="avatar-img rounded-circle shadow" src="assets/images/avatar/<%=user.getAvatar()%>" alt="avatar">
                                    </div>
                                    <div>
                                        <a class="h6" href="#"><%=user.getName()%></a>
                                        <p class="small m-0"><%=user.getEmail()%></p>
                                    </div>
                                </div>
                                <hr>
                            </li>
                            <!-- Links -->
                            <li><a class="dropdown-item" href="#"><i class="bi bi-person fa-fw me-2"></i>Edit Profile</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-gear fa-fw me-2"></i>Account Settings</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-info-circle fa-fw me-2"></i>Help</a></li>
                            <li><a class="dropdown-item bg-danger-soft-hover" href="logout"><i class="bi bi-power fa-fw me-2"></i>Sign Out</a></li>
                            <li> <hr class="dropdown-divider"></li>
                            <!-- Dark mode switch START -->
                            <li>
                                <div class="modeswitch-wrap" id="darkModeSwitch">
                                    <div class="modeswitch-item">
                                        <div class="modeswitch-icon"></div>
                                    </div>
                                    <span>Dark mode</span>
                                </div>
                            </li> 
                            <!-- Dark mode switch END -->
                        </ul>
                    </div>
                    
                </div>
            </nav>
            
            <!-- Logo Nav END -->
        </header>
        
        <!-- Header END -->

    </body>
</html>
