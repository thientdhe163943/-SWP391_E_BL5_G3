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
            <span class="user-title">Profile</span>
            <div class="user-box_access">
                <div class="user-box-header">
                    <!-- access -->
                    <% if (user != null) { %>
                        <div class="user-access">
                            <% if (user.getAvatar() != null) { %>
                                <a href="profile" class="d-block">
                                    <img src="./images/<%= user.getAvatar() %>" alt="">
                                </a>
                            <% } else { %>
                                <a href="profile" class="d-block">
                                    <img src="./images/accountImg.png" alt="">
                                </a>
                            <% } %>

                            <div class="user-access-info">
                                <span><%= user.getName() %></span>
                                <p><%= user.getAddress() %></p>
                            </div>
                            <a href="logout" class="logout-link">
                                <div class="logout-button">
                                    Logout
                                </div>
                            </a>
                        </div>
                    <% } else { %>
                        <!-- N?u user là null -->
                        <div class="guest-access">
                            <p>Please log in to access your profile.</p>
                        </div>
                    <% } %>
                </div>
            </div>
            <!-- Profile END -->
        </div>
    </nav>
    <!-- Logo Nav END -->
</header>
<!-- Header END -->

</body>
</html>
