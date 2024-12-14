<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Dao.*" %>
<%@ page import="Model.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Eduport - LMS, Education and Course Theme</title>

        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="Webestica.com">
        <meta name="description" content="Eduport- LMS, Education and Course Theme">

        <!-- Favicon -->
        <link rel="shortcut icon" href="./assets/images/favicon.ico">

        <!-- Google Font -->
        <link rel="preconnect" href="https://fonts.googleapis.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&amp;family=Roboto:wght@400;500;700&amp;display=swap">

        <!-- Plugins CSS -->
        <link rel="stylesheet" type="text/css" href="./assets/vendor/font-awesome/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/tiny-slider/tiny-slider.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/glightbox/css/glightbox.css">

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="./assets/css/style.css">
    </head>

    <body>
        <%
            // Ki?m tra ki?u c?a ??i t??ng ng??i dùng trong session
            Object userObject = session.getAttribute("user");
            User user = null;

            if (userObject instanceof User) {
                user = (User) userObject;
            }
        %>

        <!-- Header START -->
        <header class="navbar-light navbar-sticky header-static">
            <nav class="navbar navbar-expand-xl">
                <div class="container">
                    <a class="navbar-brand" href="home">
                        <img class="light-mode-item navbar-brand-item" src="./assets/images/logo.svg" alt="logo">
                        <img class="dark-mode-item navbar-brand-item" src="./assets/images/logo-light.svg" alt="logo">
                    </a>

                    <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-animation">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </button>

                    <div class="navbar-collapse w-100 collapse" id="navbarCollapse">
                        <div class="nav my-3 my-xl-0 px-4 flex-nowrap align-items-center">
                            <div class="nav-item w-100">
                                <form action="SearchMentor" method="post" class="position-relative">
                                    <input name="txt" class="form-control pe-5 bg-transparent" type="search" placeholder="Search Mentor" aria-label="Search">
                                    <button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="navbar-collapse w-100 align-items-center" id="navbarCollapse">
                        <!-- Nav Main menu START -->
                        <ul class="navbar-nav navbar-nav-scroll w-100">
                            <!-- Nav item 5 link-->
                            <li class="nav-item"><a class="nav-link" href="mentee-home">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="mentee-dashboard">Dashboard</a></li>
                            <li class="nav-item"><a class="nav-link" href="mentee-request-list">Request List</a></li>
                        </ul>
                        <!-- Nav Main menu END -->
                        <!-- Nav Search END -->
                    </div>

                    <div class="dropdown ms-1 ms-lg-0">
                        <a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
                            <img class="avatar-img rounded-circle" src="./assets/images/avatar/01.jpg" alt="avatar">
                        </a>
                        <ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
                            <% if (user != null) { %>
                            <li class="px-3">
                                <div class="d-flex align-items-center">
                                    <!-- Avatar -->
                                    <div class="avatar me-3">
                                        <img class="avatar-img rounded-circle shadow" src="<%= (user.getAvatar() != null ? user.getAvatar() : "./assets/images/avatar/default-avatar.png") %>" alt="avatar">
                                    </div>
                                    <div>
                                        <a class="h6" href="#">
                                            <%= (user.getName() != null ? user.getName() : "Unknown User") %>
                                        </a>
                                        <p class="small m-0">
                                            <%= (user.getEmail() != null ? user.getEmail() : "No email available") %>
                                        </p>
                                    </div>
                                </div>
                                <hr>
                            </li>
                            <!-- Links for logged-in users -->
                            <li><a class="dropdown-item" href="Profile.jsp"><i class="bi bi-person fa-fw me-2"></i>Edit Profile</a></li>
                            <li><a class="dropdown-item" href="changePasswordwithOldPass.jsp"><i class="bi bi-gear fa-fw me-2"></i>Change Password</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-info-circle fa-fw me-2"></i>Help</a></li>
                            <li><a class="dropdown-item bg-danger-soft-hover" href="logout"><i class="bi bi-power fa-fw me-2"></i>Sign Out</a></li>
                            <li><hr class="dropdown-divider"></li>
                                <% } else { %>
                            <li class="px-3">
                                <div class="d-flex align-items-center">
                                    <div class="avatar me-3">
                                        <img class="avatar-img rounded-circle" src="./assets/images/avatar/default-avatar.png" alt="avatar">
                                    </div>
                                    <div>
                                        <a class="h6" href="#">Guest</a>
                                        <p class="small m-0">No email available</p>
                                    </div>
                                </div>
                                <hr>
                            </li>
                            <!-- Link for not logged-in users -->
                            <li><a class="dropdown-item bg-success-soft-hover" href="Login.jsp"><i class="bi bi-box-arrow-in-right fa-fw me-2"></i>Log In</a></li>
                            <li><hr class="dropdown-divider"></li>
                                <% } %>
                        </ul>
                    </div>

                </div>
            </nav>
        </header>
        <!-- Header END -->

    </body>
</html>
