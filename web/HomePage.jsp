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
        <style>
            .fixed-size {
    width: 100%; /* ??m b?o h�nh ?nh chi?m to�n b? chi?u r?ng c?a khung ch?a */
    height: 500px; /* Chi?u cao c? ??nh */
    object-fit: cover; /* ?i?u ch?nh c�ch h�nh ?nh hi?n th? trong khung */
    border-radius: 8px; /* T�y ch?n ?? t?o g�c bo tr�n */
}

        </style>
    </head>
    

    <body>
        


        <!-- Header START -->
        <%@include file="./Header.jsp" %>   
        <!-- Header END -->

        <!-- **************** MAIN CONTENT START **************** -->
        <main>

            <!-- =======================
            Main Banner START -->
            <section class="position-relative overflow-hidden pb-0 pb-sm-5">

                <!-- SVG decoration -->
                <figure class="ms-5 position-absolute top-0 start-0">
                    <svg width="29px" height="29px">
                    <path class="fill-orange opacity-4" d="M29.004,14.502 C29.004,22.512 22.511,29.004 14.502,29.004 C6.492,29.004 -0.001,22.512 -0.001,14.502 C-0.001,6.492 6.492,-0.001 14.502,-0.001 C22.511,-0.001 29.004,6.492 29.004,14.502 Z"></path>
                    </svg>
                </figure>

                <!-- Content START -->
                <div class="container">
                    <div class="row align-items-center justify-content-xl-between g-4 g-md-5">
                        <!-- Left content START -->
                        <div class="col-lg-7 col-xl-5 position-relative z-index-1 text-center text-lg-start mb-2 mb-md-9 mb-xl-0">
                            <!-- Badge -->
                            <h6 class="mb-3 font-base bg-primary bg-opacity-10 text-primary py-2 px-4 rounded-2 d-inline-block">Get started with Eduport</h6>
                            <!-- Title -->
                            <h1 class="mb-4 display-5">Develop the skillset & your
                                <span class="position-relative d-inline-block">Bright Future
                                    <!-- SVG decoration -->
                                    <span class="position-absolute top-50 start-50 translate-middle z-index-n1 d-none d-sm-block">
                                        <svg width="387.7px" height="119.7px">
                                        <path class="fill-warning" d="M382.7,51.4c-0.2-1-0.4-2-0.7-3c-0.2-0.6-0.5-1.2-0.9-1.7c-0.6-0.9-1.5-1.7-2.9-2.2l0.1-0.1l-0.1,0.1 c0.2-0.9-0.4-1.2-1.2-1.3c-0.1,0-0.2,0-0.4-0.1c-0.2-0.2-0.5-0.5-0.7-0.7c0-0.7-0.1-1.3-0.6-1.7c-0.3-0.2-0.7-0.4-1.3-0.5 c0-0.7-0.2-1.1-0.6-1.4c-0.3-0.2-0.7-0.4-1.2-0.5c-0.2,0-0.3-0.1-0.5-0.1c-1.1-0.9-2.2-1.8-3.4-2.7c0-0.1,0-0.2-0.1-0.3 c-0.1-0.2-0.3-0.4-0.7-0.4c-2.1-1.2-4.2-2.3-6.2-3.5c-14.1-8.5-31.1-10.2-46.8-14.7c-9.6-2.7-19.8-3.4-29.8-4.7 c-13.3-1.8-26.7-1.5-40-2.5c-5.4-0.4-10.8-0.7-16.1-0.7c-2.8,0-5.7-0.6-8.3-0.2c-5.8,0.9-11.6,1.5-17.4,1.8c-2,0.1-3.9,0.2-5.9,0.2 c-0.2,0-0.3,0-0.5,0.1c-0.2,0-0.3,0-0.5,0.1c-2.1,0-4.3,0.1-6.4,0.2c-2.1,0.1-4.3,0.1-6.4-0.1c-13-0.8-25.3,1.7-37.8,3.5 c-6,0.9-11.9,2.2-17.9,3.5c-6.5,1.4-13.3,1.7-19.8,3.3c-9.6,2.3-19.3,4.4-29.1,6c-9.5,1.6-18.9,3.9-28.2,6.4 c-8.5,2.3-16.2,5.9-23.8,9.7c-4.4,2.2-9,4.1-12.4,7.6c-4.1,4.3-6.6,9.4-10,14.1C1.9,68,2.5,70.8,4.6,74c4.7,7.3,12.9,10.3,21.3,13.4 c4.1,1.5,8.6,2.4,12.5,4.3c5.5,2.6,10.9,5.4,16.7,7.6c12.3,4.6,25.1,8,38.1,10.5c7.1,1.4,14.5,2.1,21.8,2.6 c11.2,0.8,22.5,2.5,33.8,1.9c0.8,0.7,1.5,0.7,2.1-0.1c1.6-0.7,3.4,0.2,5.1-0.1c8.8-1.5,17.8-0.8,26.8-0.6c5,0.1,10.1,0.8,15.1,0.6 c9.4-0.4,18.8-1,28.2-1.9c12.9-1.2,25.7-2.4,38.2-5.3c0.3,0.4,0.5,0.3,0.6-0.1c1.1-0.2,2.3-0.4,3.4-0.6c0.3,0.3,0.5,0.2,0.7-0.1 c1.2-0.3,2.4-0.6,3.7-0.8c7.9-0.8,15.8-1.4,23.6-2.4c4.9-0.6,9.7-1.8,14.5-2.8c0.4,0.2,0.8,0.3,1.1,0.2c0.2,0,0.3-0.1,0.4-0.2 c0.1-0.1,0.1-0.1,0.2-0.2s0.1-0.2,0.2-0.2c0.5-0.1,1-0.3,1.5-0.4c0.1,0,0.2,0.1,0.3,0.1c0.3,0,0.5-0.1,0.6-0.4c0,0,0,0,0,0l0,0 c0,0,0,0,0,0c0.4-0.1,0.8-0.2,1.3-0.3c0,0,0,0,0.1,0c0.2,0,0.3,0,0.5,0c0.4,0,0.7-0.2,0.8-0.7c1.1-0.4,2.2-0.8,3.3-1.3 c0.2,0.1,0.4,0.1,0.6,0c0.1,0,0.2-0.1,0.2-0.1c0.1-0.1,0.1-0.1,0.2-0.2c0-0.1,0.1-0.1,0.2-0.1c0.1,0,0.1,0,0.2,0 c0.6,0.2,1,0.2,1.4,0c0.2-0.1,0.3-0.2,0.5-0.4c0.1-0.2,0.2-0.4,0.3-0.6c1.2-0.5,2.4-1,3.7-1.6c3.7-1.6,7.3-3.3,11.1-4.4 c11.2-3.4,21.5-7.9,30.2-14.9c1.8-0.4,2.9-1.2,3.7-2.4c0.5-0.7,0.8-1.4,1.1-2.2c1.1-0.1,1.7-0.6,2.1-1.1c0.4-0.6,0.6-1.3,0.7-2 c0-0.1,0.1-0.2,0.2-0.3c1.1,0.1,1.4-0.7,1.8-1.3C382.2,61.1,383.8,56.5,382.7,51.4z M9.5,72.3c-0.4-0.9-0.8-2-0.2-2.9 c4.3-6.9,8-14.3,15.9-19c6.6-3.9,13.9-6.9,21.1-10c10.1-4.3,21.1-6,32-8.1c0,0.2,0,0.4,0.1,0.6l0,0c-2.5,0.9-5.1,1.7-7.7,2.6 c-7.7,2.5-15.4,5-22.9,7.9c-10,3.9-18.1,9.9-23.8,17.8c-1.2,1.6-2.5,3.1-3.7,4.6c-5.1,6.3-2.3,11,2.9,16.4c0.3,0.3,0.7,0.7,0.9,1.1 C17.6,81.2,12,78.2,9.5,72.3z M372.5,60.6c-4,6.6-9.6,11.9-16.6,16.1c-4.8,2.9-10.5,5-16.2,6.8c-7.8,2.5-15.1,5.6-22.5,8.6 c-9.3,3.8-19,5.9-29.3,6.8c-14.1,1.2-27.8,3.6-41.6,5.9c-11.4,2-23.2,2.4-34.8,3.6c-13.2,1.4-26.4,0.4-39.6,0.2 c-7.4-0.1-14.8,0.8-22.1,1.2c-6.1,0.4-12.2,0.3-18.3-0.2c-9.2-0.7-18.5-1.3-27.7-2.2c-6.5-0.6-13.1-1.7-19.4-3.4 c-7.5-2-14.9-4-22.4-6c-1.2-0.3-2.3-0.6-3.2-1.3c-0.5-0.2-0.9-0.4-1.5-0.6c0.1,0,0.2-0.1,0.3-0.1c0.7-0.2,1.2,0,1.8,0.2c0,0,0,0,0,0 c8.1,1.1,16.2,2.8,24.4,3.2c1.2,0.1,2.4,0.1,3.5,0.1c1.1,0,3,0.5,3.1-0.6c0.1-1.4-1.8-2-3.3-2c-5,0-9.9-0.5-14.8-1.2 c-10.8-1.6-21.5-3.4-31.6-7.2c-6.9-2.5-12.7-6.4-16.2-12.3c-1.1-1.9-1.2-3.7-0.2-5.7c7.6-14.6,21.3-23.3,38.6-28.9 c15.7-5.1,31.3-10.6,47.6-14.2c11.7-2.6,23.7-4.3,35.3-6.9c20-4.5,40.6-5.7,61.3-6.4c8.5-0.3,16.8-2,25.4-1.3 c19.7,1.6,39.4,2.8,59.1,5.5c10.6,1.5,21.4,2.9,32.1,4c8.4,0.8,16.8,3.3,24.8,6.5c7.4,3,14.1,6.8,20,11.7 C374.7,46.2,376.4,54.2,372.5,60.6z"/>
                                        </svg>
                                    </span>
                                </span>
                            </h1>
                            <!-- Content -->
                            <p class="mb-3">The most reliable online courses and certifications in marketing, information technology, programming, and data science.
                            </p>
                            <!-- Search bar -->


                            <!-- Counter START -->
                            <div class="row g-3 mb-3 mb-lg-0">
                                <!-- Item -->

                                <!-- Item -->
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <!-- Icon -->
                                        <div class="icon-lg fs-4 text-info bg-info bg-opacity-10 rounded"> <i class="fas fa-university"></i> </div>
                                        <!-- Info -->
                                        <div class="ms-3">
                                            <div class="d-flex">
                                                <h4 class="purecounter fw-bold mb-0" data-purecounter-start="0" data-purecounter-end="400" data-purecounter-delay="100">0</h4>
                                                <span class="h4 mb-0">+</span>
                                            </div>
                                            <div>Universities</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Counter END -->
                        </div>
                        <!-- Left content END -->

                        <!-- Right content START -->
                        <div class="col-lg-5 col-xl-6 text-center position-relative">
                            <!-- SVG decoration -->
                            <figure class="position-absolute top-100 start-0 translate-middle mt-n6 ms-5 ps-5 d-none d-md-block">
                                <svg width="297.5px" height="295.9px">
                                <path stroke="#F99D2B" fill="none" stroke-width="13" d="M286.2,165.5c-9.8,74.9-78.8,128.9-153.9,120.4c-76-8.6-131.4-78.2-122.8-154.2C18.2,55.8,87.8,0.3,163.7,9"></path>
                                </svg>
                            </figure>

                            <!-- Bell icon -->
                            <div class="icon-lg bg-primary text-white rounded-4 shadow position-absolute top-0 start-100 translate-middle z-index-9 ms-n4 d-none d-md-block">
                                <i class="fas fa-bell"></i>
                            </div>

                            <!-- Live class -->
                           

                            <!-- Student review -->
                            <div class="position-absolute top-100 start-100 translate-middle z-index-1 ms-n6 mt-n5 d-none d-xxl-block">
                                <div class="card card-body shadow p-4 rounded-3 d-inline-block position-relative z-index-1">
                                    <!-- Icon -->
                                    <div class="icon-lg bg-success rounded-circle position-absolute top-100 start-100 translate-middle">
                                        <i class="bi bi-chat-left-text text-white"></i>
                                    </div>
                                    <!-- Avatar list -->
                                    <ul class="avatar-group mb-2">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="assets/images/avatar/01.jpg" alt="avatar">
                                        </li>
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="assets/images/avatar/02.jpg" alt="avatar">
                                        </li>
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="assets/images/avatar/03.jpg" alt="avatar">
                                        </li>
                                        <li class="avatar avatar-sm">
                                            <div class="avatar-img rounded-circle bg-primary">
                                                <span class="text-white position-absolute top-50 start-50 translate-middle">+</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <!-- Title -->
                                    <h6 class="mb-1 text-start">15K+ Students</h6>
                                    <!-- Review -->
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item me-1 h6 mb-0">4.5</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>

                            <div class=" position-relative">
                                <!-- Yellow background -->
                                <div class="bg-warning rounded-4 border border-white border-5 h-200px h-sm-300px shadow"></div>
                                <!-- Image -->
                                <img src="assets/images/element/06.png" class="position-absolute bottom-0 start-50 translate-middle-x"  alt="">
                            </div>

                        </div>
                        <!-- Right content END -->
                    </div>
                </div>
                <!-- Content END -->
            </section>

            <section>
                <div class="container">
                    <!-- Title -->
                    <div class="row mb-4">
                        <div class="col-12">
                            <h2 class="fs-1 fw-bold">
                                <span class="position-relative z-index-9"></span>
                                <span class="position-relative z-index-1">Mentor
                                    <!-- SVG START -->
                                    <span class="position-absolute top-50 start-50 translate-middle z-index-n1">
                                        <svg width="205.3px" height="63.3px">
                                        <path class="fill-warning" d="M204,26.9c-0.1-0.5-0.2-1.1-0.4-1.6c-0.1-0.3-0.3-0.6-0.5-0.9c-0.3-0.5-0.8-0.9-1.6-1.2l0.1-0.1l-0.1,0.1 c0.1-0.5-0.2-0.6-0.6-0.7c-0.1,0-0.1,0-0.2,0c-0.1-0.1-0.3-0.2-0.4-0.4c0-0.4,0-0.7-0.3-0.9c-0.1-0.1-0.4-0.2-0.7-0.2 c0-0.3-0.1-0.6-0.3-0.7c-0.2-0.1-0.4-0.2-0.6-0.2c-0.1,0-0.2,0-0.3,0c-0.6-0.5-1.2-1-1.8-1.4c0-0.1,0-0.1,0-0.1 c-0.1-0.1-0.2-0.2-0.4-0.2c-1.1-0.6-2.2-1.2-3.3-1.9c-7.6-4.5-16.6-5.5-25-7.9c-5.1-1.5-10.6-1.8-15.9-2.5 c-7.1-0.9-14.3-0.8-21.4-1.3c-2.9-0.2-5.8-0.4-8.6-0.4c-1.5,0-3-0.3-4.5-0.1c-3.1,0.5-6.2,0.8-9.3,0.9c-1,0.1-2.1,0.1-3.1,0.1 c-0.1,0-0.2,0-0.3,0c-0.1,0-0.2,0-0.3,0c-1.1,0-2.3,0.1-3.4,0.1c-1.1,0-2.3,0-3.4,0c-6.9-0.4-13.6,0.9-20.2,1.9 c-3.2,0.5-6.4,1.2-9.6,1.9c-3.5,0.8-7.1,0.9-10.6,1.7c-5.1,1.2-10.3,2.3-15.6,3.2c-5.1,0.9-10.1,2.1-15.1,3.4 c-4.6,1.2-8.7,3.2-12.7,5.2c-2.4,1.2-4.8,2.2-6.6,4.1c-2.2,2.3-3.5,5-5.4,7.5c-1.2,1.7-0.9,3.2,0.2,4.9c2.5,3.9,6.9,5.5,11.4,7.2 c2.2,0.8,4.6,1.3,6.7,2.3c2.9,1.4,5.8,2.9,8.9,4.1c6.6,2.5,13.4,4.3,20.4,5.6c3.8,0.7,7.8,1.1,11.7,1.4c6,0.4,12,1.3,18.1,1 c0.4,0.4,0.8,0.4,1.1-0.1c0.9-0.4,1.8,0.1,2.7-0.1c4.7-0.8,9.5-0.4,14.3-0.3c2.7,0,5.4,0.4,8.1,0.3c5-0.2,10.1-0.6,15.1-1 c6.9-0.6,13.8-1.3,20.4-2.8c0.2,0.2,0.3,0.1,0.3-0.1c0.6-0.1,1.2-0.2,1.8-0.3c0.1,0.2,0.3,0.1,0.3,0c0.7-0.1,1.3-0.3,2-0.4 c4.2-0.4,8.4-0.7,12.6-1.3c2.6-0.3,5.2-1,7.8-1.5c0.2,0.1,0.4,0.2,0.6,0.1c0.1,0,0.2-0.1,0.2-0.1c0,0,0.1-0.1,0.1-0.1 c0,0,0.1-0.1,0.1-0.1c0.3-0.1,0.5-0.2,0.8-0.2c0.1,0,0.1,0,0.2,0c0.2,0,0.3-0.1,0.3-0.2c0,0,0,0,0,0l0,0c0,0,0,0,0,0 c0.2,0,0.5-0.1,0.7-0.1c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0c0.2,0,0.4-0.1,0.4-0.4c0.6-0.2,1.2-0.4,1.7-0.7c0.1,0,0.2,0,0.3,0 c0,0,0.1,0,0.1-0.1c0,0,0.1-0.1,0.1-0.1c0,0,0.1,0,0.1-0.1c0,0,0.1,0,0.1,0c0.3,0.1,0.6,0.1,0.7,0c0.1,0,0.2-0.1,0.2-0.2 c0.1-0.1,0.1-0.2,0.2-0.3c0.7-0.3,1.3-0.6,2-0.8c2-0.9,3.9-1.7,6-2.4c6-1.8,11.5-4.2,16.1-8c1-0.2,1.6-0.7,2-1.3 c0.3-0.4,0.4-0.8,0.6-1.2c0.6-0.1,0.9-0.3,1.1-0.6c0.2-0.3,0.3-0.7,0.4-1.1c0-0.1,0-0.1,0.1-0.2c0.6,0,0.7-0.4,1-0.7 C203.7,32.1,204.6,29.6,204,26.9z M4.4,38.1C4.2,37.6,4,37,4.3,36.5c2.3-3.7,4.3-7.6,8.5-10.2c3.5-2.1,7.4-3.7,11.3-5.3 c5.4-2.3,11.3-3.2,17.1-4.4c0,0.1,0,0.2,0,0.3l0,0c-1.4,0.5-2.7,0.9-4.1,1.4c-4.1,1.4-8.2,2.7-12.2,4.2c-5.4,2.1-9.7,5.3-12.8,9.5 c-0.6,0.8-1.3,1.7-2,2.5c-2.7,3.4-1.2,5.9,1.5,8.8c0.2,0.2,0.4,0.4,0.5,0.6C8.7,42.8,5.7,41.2,4.4,38.1z M198.5,31.8 c-2.1,3.5-5.2,6.4-8.9,8.6c-2.6,1.6-5.6,2.7-8.7,3.7c-4.1,1.3-8.1,3-12,4.6c-5,2-10.2,3.2-15.7,3.6c-7.5,0.6-14.9,1.9-22.2,3.2 c-6.1,1.1-12.4,1.3-18.6,1.9c-7,0.7-14.1,0.2-21.2,0.1c-4-0.1-7.9,0.4-11.8,0.6c-3.3,0.2-6.5,0.2-9.8-0.1c-4.9-0.4-9.9-0.7-14.8-1.2 c-3.5-0.3-7-0.9-10.4-1.8c-4-1.1-8-2.1-12-3.2c-0.6-0.2-1.2-0.3-1.7-0.7c-0.2-0.1-0.5-0.2-0.8-0.3c0.1,0,0.1,0,0.2-0.1 c0.3-0.1,0.6,0,0.9,0.1c0,0,0,0,0,0c4.3,0.6,8.7,1.5,13.1,1.7c0.6,0,1.3,0,1.9,0c0.6,0,1.6,0.3,1.6-0.3c0-0.7-0.9-1.1-1.8-1.1 c-2.7,0-5.3-0.3-7.9-0.7c-5.8-0.9-11.5-1.8-16.9-3.8c-3.7-1.4-6.8-3.4-8.7-6.6c-0.6-1-0.6-2-0.1-3c4-7.8,11.4-12.4,20.6-15.4 c8.4-2.7,16.7-5.6,25.5-7.6c6.3-1.4,12.7-2.3,18.9-3.7C88,8.1,99,7.5,110.1,7.1c4.5-0.2,9-1.1,13.6-0.7c10.5,0.8,21.1,1.5,31.6,3 c5.7,0.8,11.4,1.5,17.2,2.1c4.5,0.5,9,1.8,13.2,3.5c4,1.6,7.5,3.6,10.7,6.3C199.7,24.1,200.6,28.4,198.5,31.8z"/>
                                        </svg>
                                    </span>
                                    <!-- SVG END -->
                                </span>
                            </h2>
                            <p class="mb-0">Boost up your knowledge with industries experts</p>
                        </div>
                    </div>

                    <div class="row">
                        <!-- Slider START -->
                        <div class="tiny-slider arrow-round arrow-creative arrow-blur">
                            <div class="tiny-slider-inner" data-autoplay="true" data-arrow="true" data-dots="false" data-items="4" data-items-lg="3" data-items-md="2" data-items-xs="1">
                                <c:forEach items="${listMentor}" var="o">
                                    <div class="card bg-transparent">
                                        <div class="position-relative">
                                            <img src="${o.avatar}" class="card-img fixed-size" alt="course image">
                                            <div class="card-img-overlay d-flex flex-column p-3">
                                                <div class="w-100 mt-auto text-end">
                                                    <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>25</a>
                                                    <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>15</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body text-center">
                                            <h5 class="card-title"><a href="#">${o.name}</a></h5>
                                            <p class="mb-2">Computer Teacher</p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <!-- =======================
            Instructor END -->
 <section>
                <div class="container">
                    <!-- Title -->
                    <div class="row mb-4">
                        <div class="col-12">
                            <h2 class="fs-1 fw-bold">
                                <span class="position-relative z-index-9"></span>
                                <span class="position-relative z-index-1">BLOG
                                    <!-- SVG START -->
                                    <span class="position-absolute top-50 start-50 translate-middle z-index-n1">
                                        <svg width="205.3px" height="63.3px">
                                        <path class="fill-warning" d="M204,26.9c-0.1-0.5-0.2-1.1-0.4-1.6c-0.1-0.3-0.3-0.6-0.5-0.9c-0.3-0.5-0.8-0.9-1.6-1.2l0.1-0.1l-0.1,0.1 c0.1-0.5-0.2-0.6-0.6-0.7c-0.1,0-0.1,0-0.2,0c-0.1-0.1-0.3-0.2-0.4-0.4c0-0.4,0-0.7-0.3-0.9c-0.1-0.1-0.4-0.2-0.7-0.2 c0-0.3-0.1-0.6-0.3-0.7c-0.2-0.1-0.4-0.2-0.6-0.2c-0.1,0-0.2,0-0.3,0c-0.6-0.5-1.2-1-1.8-1.4c0-0.1,0-0.1,0-0.1 c-0.1-0.1-0.2-0.2-0.4-0.2c-1.1-0.6-2.2-1.2-3.3-1.9c-7.6-4.5-16.6-5.5-25-7.9c-5.1-1.5-10.6-1.8-15.9-2.5 c-7.1-0.9-14.3-0.8-21.4-1.3c-2.9-0.2-5.8-0.4-8.6-0.4c-1.5,0-3-0.3-4.5-0.1c-3.1,0.5-6.2,0.8-9.3,0.9c-1,0.1-2.1,0.1-3.1,0.1 c-0.1,0-0.2,0-0.3,0c-0.1,0-0.2,0-0.3,0c-1.1,0-2.3,0.1-3.4,0.1c-1.1,0-2.3,0-3.4,0c-6.9-0.4-13.6,0.9-20.2,1.9 c-3.2,0.5-6.4,1.2-9.6,1.9c-3.5,0.8-7.1,0.9-10.6,1.7c-5.1,1.2-10.3,2.3-15.6,3.2c-5.1,0.9-10.1,2.1-15.1,3.4 c-4.6,1.2-8.7,3.2-12.7,5.2c-2.4,1.2-4.8,2.2-6.6,4.1c-2.2,2.3-3.5,5-5.4,7.5c-1.2,1.7-0.9,3.2,0.2,4.9c2.5,3.9,6.9,5.5,11.4,7.2 c2.2,0.8,4.6,1.3,6.7,2.3c2.9,1.4,5.8,2.9,8.9,4.1c6.6,2.5,13.4,4.3,20.4,5.6c3.8,0.7,7.8,1.1,11.7,1.4c6,0.4,12,1.3,18.1,1 c0.4,0.4,0.8,0.4,1.1-0.1c0.9-0.4,1.8,0.1,2.7-0.1c4.7-0.8,9.5-0.4,14.3-0.3c2.7,0,5.4,0.4,8.1,0.3c5-0.2,10.1-0.6,15.1-1 c6.9-0.6,13.8-1.3,20.4-2.8c0.2,0.2,0.3,0.1,0.3-0.1c0.6-0.1,1.2-0.2,1.8-0.3c0.1,0.2,0.3,0.1,0.3,0c0.7-0.1,1.3-0.3,2-0.4 c4.2-0.4,8.4-0.7,12.6-1.3c2.6-0.3,5.2-1,7.8-1.5c0.2,0.1,0.4,0.2,0.6,0.1c0.1,0,0.2-0.1,0.2-0.1c0,0,0.1-0.1,0.1-0.1 c0,0,0.1-0.1,0.1-0.1c0.3-0.1,0.5-0.2,0.8-0.2c0.1,0,0.1,0,0.2,0c0.2,0,0.3-0.1,0.3-0.2c0,0,0,0,0,0l0,0c0,0,0,0,0,0 c0.2,0,0.5-0.1,0.7-0.1c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0c0.2,0,0.4-0.1,0.4-0.4c0.6-0.2,1.2-0.4,1.7-0.7c0.1,0,0.2,0,0.3,0 c0,0,0.1,0,0.1-0.1c0,0,0.1-0.1,0.1-0.1c0,0,0.1,0,0.1-0.1c0,0,0.1,0,0.1,0c0.3,0.1,0.6,0.1,0.7,0c0.1,0,0.2-0.1,0.2-0.2 c0.1-0.1,0.1-0.2,0.2-0.3c0.7-0.3,1.3-0.6,2-0.8c2-0.9,3.9-1.7,6-2.4c6-1.8,11.5-4.2,16.1-8c1-0.2,1.6-0.7,2-1.3 c0.3-0.4,0.4-0.8,0.6-1.2c0.6-0.1,0.9-0.3,1.1-0.6c0.2-0.3,0.3-0.7,0.4-1.1c0-0.1,0-0.1,0.1-0.2c0.6,0,0.7-0.4,1-0.7 C203.7,32.1,204.6,29.6,204,26.9z M4.4,38.1C4.2,37.6,4,37,4.3,36.5c2.3-3.7,4.3-7.6,8.5-10.2c3.5-2.1,7.4-3.7,11.3-5.3 c5.4-2.3,11.3-3.2,17.1-4.4c0,0.1,0,0.2,0,0.3l0,0c-1.4,0.5-2.7,0.9-4.1,1.4c-4.1,1.4-8.2,2.7-12.2,4.2c-5.4,2.1-9.7,5.3-12.8,9.5 c-0.6,0.8-1.3,1.7-2,2.5c-2.7,3.4-1.2,5.9,1.5,8.8c0.2,0.2,0.4,0.4,0.5,0.6C8.7,42.8,5.7,41.2,4.4,38.1z M198.5,31.8 c-2.1,3.5-5.2,6.4-8.9,8.6c-2.6,1.6-5.6,2.7-8.7,3.7c-4.1,1.3-8.1,3-12,4.6c-5,2-10.2,3.2-15.7,3.6c-7.5,0.6-14.9,1.9-22.2,3.2 c-6.1,1.1-12.4,1.3-18.6,1.9c-7,0.7-14.1,0.2-21.2,0.1c-4-0.1-7.9,0.4-11.8,0.6c-3.3,0.2-6.5,0.2-9.8-0.1c-4.9-0.4-9.9-0.7-14.8-1.2 c-3.5-0.3-7-0.9-10.4-1.8c-4-1.1-8-2.1-12-3.2c-0.6-0.2-1.2-0.3-1.7-0.7c-0.2-0.1-0.5-0.2-0.8-0.3c0.1,0,0.1,0,0.2-0.1 c0.3-0.1,0.6,0,0.9,0.1c0,0,0,0,0,0c4.3,0.6,8.7,1.5,13.1,1.7c0.6,0,1.3,0,1.9,0c0.6,0,1.6,0.3,1.6-0.3c0-0.7-0.9-1.1-1.8-1.1 c-2.7,0-5.3-0.3-7.9-0.7c-5.8-0.9-11.5-1.8-16.9-3.8c-3.7-1.4-6.8-3.4-8.7-6.6c-0.6-1-0.6-2-0.1-3c4-7.8,11.4-12.4,20.6-15.4 c8.4-2.7,16.7-5.6,25.5-7.6c6.3-1.4,12.7-2.3,18.9-3.7C88,8.1,99,7.5,110.1,7.1c4.5-0.2,9-1.1,13.6-0.7c10.5,0.8,21.1,1.5,31.6,3 c5.7,0.8,11.4,1.5,17.2,2.1c4.5,0.5,9,1.8,13.2,3.5c4,1.6,7.5,3.6,10.7,6.3C199.7,24.1,200.6,28.4,198.5,31.8z"/>
                                        </svg>
                                    </span>
                                    <!-- SVG END -->
                                </span>
                            </h2>
                            <p class="mb-0">Boost up your knowledge with industries experts</p>
                        </div>
                    </div>

                    <div class="row">
                        <!-- Slider START -->
                        <div class="tiny-slider arrow-round arrow-creative arrow-blur">
                            <div class="tiny-slider-inner" data-autoplay="true" data-arrow="true" data-dots="false" data-items="4" data-items-lg="3" data-items-md="2" data-items-xs="1">
                                <c:forEach items="${listBlog}" var="o">
                                    <div class="card bg-transparent">
                                        <div class="position-relative">
                                            <img src="${o.image}" class="card-img fixed-size" alt="course image">
                                            <div class="card-img-overlay d-flex flex-column p-3">
                                                <div class="w-100 mt-auto text-end">
                                                    <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>25</a>
                                                    <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>15</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body text-center">
                                            <h5 class="card-title"><a href="#">${o.content}</a></h5>
                                            <p class="mb-2">${o.full_content}</p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <!-- =======================
            Action box START -->
            <section class="py-0 pt-lg-5">
                <div class="container">
                    <div class="row">
                        <div class="col-12 position-relative z-index-1">
                            <!-- Image -->
                            <div class="d-none d-lg-block position-absolute bottom-0 start-0 ms-3 ms-xl-5">
                                <img src="assets/images/element/01.png" alt="">
                            </div>
                            <!-- Pencil and cap SVG -->
                            <div class="position-absolute top-0 end-0 mt-n4 me-5">
                                <img src="assets/images/client/pencil.svg" alt="">	
                            </div>
                            <div class="position-absolute bottom-0 start-50 mb-n4">
                                <img src="assets/images/client/graduated.svg" class="rotate-74" alt="">	
                            </div>

                            <div class="bg-grad-pink p-4 p-sm-5 rounded position-relative z-index-n1 overflow-hidden">
                                <!-- SVG decoration -->
                                <figure class="position-absolute top-0 start-0 mt-3 ms-n3 opacity-5">
                                    <svg width="818.6px" height="235.1px" viewBox="0 0 818.6 235.1">
                                    <path class="fill-white" d="M735,226.3c-5.7,0.6-11.5,1.1-17.2,1.7c-66.2,6.8-134.7,13.7-192.6-16.6c-34.6-18.1-61.4-47.9-87.3-76.7 c-21.4-23.8-43.6-48.5-70.2-66.7c-53.2-36.4-121.6-44.8-175.1-48c-13.6-0.8-27.5-1.4-40.9-1.9c-46.9-1.9-95.4-3.9-141.2-16.5 C8.3,1.2,6.2,0.6,4.2,0H0c3.3,1,6.6,2,10,3c46,12.5,94.5,14.6,141.5,16.5c13.4,0.6,27.3,1.1,40.8,1.9 c53.4,3.2,121.5,11.5,174.5,47.7c26.5,18.1,48.6,42.7,70,66.5c26,28.9,52.9,58.8,87.7,76.9c58.3,30.5,127,23.5,193.3,16.7 c5.8-0.6,11.5-1.2,17.2-1.7c26.2-2.6,55-4.2,83.5-2.2v-1.2C790,222,761.2,223.7,735,226.3z"></path>
                                    </svg>
                                </figure>
                                <!-- SVG decoration -->
                                <figure class="position-absolute top-50 start-0 translate-middle-y ms-5">
                                    <svg width="473px" height="234px">
                                    <path fill-rule="evenodd" opacity="0.051" fill="rgb(255, 255, 255)" d="M0.004,222.303 L364.497,-0.004 L472.998,32.563 L100.551,233.991 L0.004,222.303 Z"/>
                                    </svg>
                                </figure>
                                <!-- SVG decoration -->
                                <figure class="position-absolute top-50 end-0 translate-middle-y">
                                    <svg  width="355.6px" height="396.1px">
                                    <path class="fill-danger rotate-10" d="M32.8,364.1c16.1-14.7,36-21.5,56.8-26.7c20-5.1,40.5-9.7,57.8-21.4c35.7-24.3,51.1-68.5,57.2-109.4 c6.8-45.7,4.6-93.7,21.6-137.5c8.3-21.4,22.3-41.4,43.3-51.9c17.4-8.7,36.2-7.9,54.2-1.5c10.2,3.6,19.8,8.5,29.4,13.5l2.5-4.3 c-2.7-1.4-5.4-2.8-8.2-4.2c-15.8-8-32.9-15.3-50.9-15.2C276,5.6,256.9,16,243.3,31c-16.6,18.3-25.3,42.2-30.5,66 c-5,22.9-6.8,46.3-8.8,69.6c-3.9,44.4-9.7,92.8-40.1,128c-7.1,8.2-15.4,15.4-24.9,20.8c-9.3,5.4-19.5,8.9-29.8,11.8 c-20.2,5.7-41.3,9.1-59.9,19.2c-19.3,10.4-35.1,27.2-44.2,47.1c0,0,0,0.1,0,0.1l4.4,2.6C15,384,22.9,373.1,32.8,364.1z"/>
                                    </svg>
                                </figure>

                                <div class="row g-3 align-items-center justify-content-lg-end position-relative py-4">
                                    <!-- Title -->
                                    <div class="col-md-6">
                                        <h2 class="text-white">Become an Instructor!</h2>
                                        <p class="text-white mb-0">Teach thousands of students and earn money with ease!</p>
                                    </div>
                                    <!-- Button -->
                                    <div class="col-md-6 col-lg-3 text-md-end">
                                        <a href="#" class="btn btn-white mb-0">Get Started Now!</a>
                                    </div>		
                                </div> <!-- Row END -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- =======================
            Action box END -->

            <!-- =======================
            Client START -->

            <!-- =======================
            Client END -->

        </main>
        <!-- **************** MAIN CONTENT END **************** -->

        <!-- =======================
        Footer START -->
        <%@include file="./Footer.jsp" %>
        <!-- =======================
        Footer END -->

        <!-- Back to top -->
        <div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

        <!-- Bootstrap JS -->
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Vendors -->
        <script src="assets/vendor/tiny-slider/tiny-slider.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.js"></script>
        <script src="assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>

    <!-- Mirrored from eduport.webestica.com/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:19:15 GMT -->
</html>