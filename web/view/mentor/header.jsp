<%-- 
    Document   : header.jsp
    Created on : Dec 10, 2024, 10:29:49 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Header START -->
<header class="navbar-light navbar-sticky">
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

            <!-- Nav Search START -->
            <div class="nav my-3 my-xl-0 px-4 flex-nowrap align-items-center">
                <div class="nav-item w-100">
                    <form class="position-relative">
                        <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
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
                            <img class="avatar-img rounded-circle shadow" src="assets/images/avatar/01.jpg" alt="avatar">
                        </div>
                        <div>
                            <a class="h6" href="#">Lori Ferguson</a>
                            <p class="small m-0">example@gmail.com</p>
                        </div>
                    </div>
                    <hr>
                </li>
                <!-- Links -->
                <li><a class="dropdown-item" href="#"><i class="bi bi-person fa-fw me-2"></i>Edit Profile</a></li>
                <li><a class="dropdown-item" href="#"><i class="bi bi-gear fa-fw me-2"></i>Account Settings</a></li>
                <li><a class="dropdown-item" href="#"><i class="bi bi-info-circle fa-fw me-2"></i>Help</a></li>
                <li><a class="dropdown-item bg-danger-soft-hover" href="#"><i class="bi bi-power fa-fw me-2"></i>Sign Out</a></li>
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
        <!-- Profile START -->
    </nav>
    <!-- Logo Nav END -->
</header>
<!-- Header END -->
