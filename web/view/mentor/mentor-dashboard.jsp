<%-- 
    Document   : mentor-dashboard
    Created on : Dec 3, 2024, 1:22:49 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/instructor-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:04 GMT -->
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
        <link rel="stylesheet" type="text/css" href="assets/vendor/apexcharts/css/apexcharts.css">

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">

    </head>

    <body>
        <!-- **************** MAIN CONTENT START **************** -->
        <main>

            <!-- =======================
            Page Banner START -->
            <section class="pt-0">
                <!-- Main banner background image -->
                <div class="container-fluid px-0">
                    <div class="bg-blue h-100px h-md-200px rounded-0" style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
                    </div>
                </div>
                <div class="container mt-n4">
                    <div class="row">
                        <!-- Profile banner START -->
                        <div class="col-12">
                            <div class="card bg-transparent card-body p-0">
                                <div class="row d-flex justify-content-between">
                                    <!-- Avatar -->
                                    <div class="col-auto mt-4 mt-md-0">
                                        <div class="avatar avatar-xxl mt-n3">
                                            <img class="avatar-img rounded-circle border border-white border-3 shadow" src="assets/images/avatar/01.jpg" alt="Avatar">
                                        </div>
                                    </div>
                                    <!-- Profile info -->
                                    <div class="col d-md-flex justify-content-between align-items-center mt-4">
                                        <div>
                                            <h1 class="my-1 fs-4">${mentor.name} <i class="bi bi-patch-check-fill text-info small"></i></h1>
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-2"></i>4.5/5.0</li>
                                                <li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-user-graduate text-orange me-2"></i>${totalMentees} Total Mentees</li>
<!--                                                <li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-2"></i>25 Courses</li>-->
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Profile banner END -->

                            <!-- Advanced filter responsive toggler START -->
                            <!-- Divider -->
                            <hr class="d-xl-none">
                            <div class="col-12 col-xl-3 d-flex justify-content-between align-items-center">
                                <a class="h6 mb-0 fw-bold d-xl-none" href="#">Menu</a>
                                <button class="btn btn-primary d-xl-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                                    <i class="fas fa-sliders-h"></i>
                                </button>
                            </div>
                            <!-- Advanced filter responsive toggler END -->
                        </div>
                    </div>
                </div>
            </section>
            <!-- =======================
            Page Banner END -->

            <!-- =======================
            Page content START -->
            <section class="pt-0">
                <div class="container">
                    <div class="row">
                        <jsp:include page="mentor-sidebar.jsp"/>
                        <!-- Main content START -->
                        <div class="col-xl-9">

                            <!-- Counter boxes START -->
                            <div class="row g-4">
                                <!-- Counter item -->
                                <div class="col-sm-6 col-lg-4">
                                    <div class="d-flex justify-content-center align-items-center p-4 bg-purple bg-opacity-10 rounded-3">
                                        <span class="display-6 text-purple mb-0"><i class="fas fa-user-graduate fa-fw"></i></span>
                                        <div class="ms-4">
                                            <div class="d-flex">
                                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="${totalMentees}"	data-purecounter-delay="100">0</h5>
                                                <span class="mb-0 h5">+</span>
                                            </div>
                                            <span class="mb-0 h6 fw-light">Total Mentees</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Counter item -->
                                <div class="col-sm-6 col-lg-4">
                                    <div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
                                        <span class="display-6 mb-0"><i class="fas fa-hourglass-start fa-fw"></i></span>
                                        <div class="ms-4">
                                            <div class="d-flex">
                                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="12" data-purecounter-delay="100">0</h5>
                                                <span class="mb-0 h5">K</span>
                                            </div>
                                            <span class="mb-0 h6 fw-light">Current Invited Requests</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Counter item -->
                                <div class="col-sm-6 col-lg-4">
                                    <div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
                                        <span class="display-6 text-info mb-0"><i class="fas fa-spinner fa-fw"></i></span>
                                        <div class="ms-4">
                                            <div class="d-flex">
                                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="12" data-purecounter-delay="100">0</h5>
                                                <span class="mb-0 h5">K</span>
                                            </div>
                                            <span class="mb-0 h6 fw-light">Accepted Requests</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Counter boxes END -->

                            <!-- Chart START -->
                            <div class="row mt-5">
                                <div class="col-12">
                                    <div class="card card-body bg-transparent border p-4 h-100">
                                        <div class="row g-4">
                                            <!-- Content -->
                                            <div class="col-sm-6 col-md-4">
                                                <span class="badge bg-dark text-white">Current Month</span>
                                                <h4 class="text-primary my-2">$35000</h4>
                                                <p class="mb-0"><span class="text-success me-1">0.20%<i class="bi bi-arrow-up"></i></span>vs last month</p>
                                            </div>
                                            <!-- Content -->
                                            <div class="col-sm-6 col-md-4">
                                                <span class="badge bg-dark text-white">Last Month</span>
                                                <h4 class="my-2">$28000</h4>
                                                <p class="mb-0"><span class="text-danger me-1">0.10%<i class="bi bi-arrow-down"></i></span>Then last month</p>
                                            </div>
                                        </div>

                                        <!-- Apex chart -->
                                        <!--<div id="ChartPayout"></div>-->

                                    </div>
                                </div>
                            </div>
                            <!-- Chart END -->

                            <!-- Course List table START -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="card border bg-transparent rounded-3 mt-5">
                                        <!-- Card header START -->
                                        <div class="card-header bg-transparent border-bottom">
                                            <div class="d-sm-flex justify-content-sm-between align-items-center">
                                                <h3 class="mb-2 mb-sm-0">Most Selling Courses</h3>
                                                <a href="#" class="btn btn-sm btn-primary-soft mb-0">View all</a>
                                            </div>
                                        </div>
                                        <!-- Card header END -->

                                        <!-- Card body START -->
                                        <div class="card-body">
                                            <div class="table-responsive-lg border-0 rounded-3">
                                                <!-- Table START -->
                                                <table class="table table-dark-gray align-middle p-4 mb-0">
                                                    <!-- Table head -->
                                                    <thead>
                                                        <tr>
                                                            <th scope="col" class="border-0 rounded-start">Course Name</th>
                                                            <th scope="col" class="border-0">Selling</th>
                                                            <th scope="col" class="border-0">Amount</th>
                                                            <th scope="col" class="border-0">Period</th>
                                                            <th scope="col" class="border-0 rounded-end">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Table body START -->
                                                    <tbody>

                                                        <!-- Table item -->
                                                        <tr>
                                                            <!-- Course item -->
                                                            <td>
                                                                <div class="d-flex align-items-center">
                                                                    <!-- Image -->
                                                                    <div class="w-100px w-md-60px">
                                                                        <img src="assets/images/courses/4by3/08.jpg" class="rounded" alt="">
                                                                    </div>
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0 ms-2">	
                                                                        <a href="#">Building Scalable APIs with GraphQL</a>
                                                                    </h6>
                                                                </div>
                                                            </td>
                                                            <!-- Selling item -->
                                                            <td>34</td>
                                                            <!-- Amount item -->
                                                            <td>$1,25,478</td>
                                                            <!-- Period item -->
                                                            <td>
                                                                <span class="badge bg-primary bg-opacity-10 text-primary">9 months</span>
                                                            </td>
                                                            <!-- Action item -->
                                                            <td>
                                                                <a href="#" class="btn btn-sm btn-success-soft btn-round me-1 mb-0"><i class="far fa-fw fa-edit"></i></a>
                                                                <button class="btn btn-sm btn-danger-soft btn-round mb-0"><i class="fas fa-fw fa-times"></i></button>
                                                            </td>
                                                        </tr>

                                                        <!-- Table item -->
                                                        <tr>
                                                            <!-- Course item -->
                                                            <td>
                                                                <div class="d-flex align-items-center">
                                                                    <!-- Image -->
                                                                    <div class="w-100px w-md-60px">
                                                                        <img src="assets/images/courses/4by3/10.jpg" class="rounded" alt="">
                                                                    </div>
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0 ms-2">	
                                                                        <a href="#">Bootstrap 5 From Scratch</a>
                                                                    </h6>
                                                                </div>
                                                            </td>
                                                            <!-- Selling item -->
                                                            <td>45</td>
                                                            <!-- Amount item -->
                                                            <td>$2,85,478</td>
                                                            <!-- Period item -->
                                                            <td>
                                                                <span class="badge bg-primary bg-opacity-10 text-primary">6 months</span>
                                                            </td>
                                                            <!-- Action item -->
                                                            <td>
                                                                <a href="#" class="btn btn-sm btn-success-soft btn-round me-1 mb-0"><i class="far fa-fw fa-edit"></i></a>
                                                                <button class="btn btn-sm btn-danger-soft btn-round mb-0"><i class="fas fa-fw fa-times"></i></button>
                                                            </td>
                                                        </tr>

                                                        <!-- Table item -->
                                                        <tr>
                                                            <!-- Course item -->
                                                            <td>
                                                                <div class="d-flex align-items-center">
                                                                    <!-- Image -->
                                                                    <div class="w-100px w-md-60px">
                                                                        <img src="assets/images/courses/4by3/02.jpg" class="rounded" alt="">
                                                                    </div>
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0 ms-2">	
                                                                        <a href="#">Graphic Design Masterclass</a>
                                                                    </h6>
                                                                </div>
                                                            </td>
                                                            <!-- Selling item -->
                                                            <td>21</td>
                                                            <!-- Amount item -->
                                                            <td>$85,478</td>
                                                            <!-- Period item -->
                                                            <td>
                                                                <span class="badge bg-primary bg-opacity-10 text-primary">4 months</span>
                                                            </td>
                                                            <!-- Action item -->
                                                            <td>
                                                                <a href="#" class="btn btn-sm btn-success-soft btn-round me-1 mb-0"><i class="far fa-fw fa-edit"></i></a>
                                                                <button class="btn btn-sm btn-danger-soft btn-round mb-0"><i class="fas fa-fw fa-times"></i></button>
                                                            </td>
                                                        </tr>

                                                        <!-- Table item -->
                                                        <tr>
                                                            <!-- Course item -->
                                                            <td>
                                                                <div class="d-flex align-items-center">
                                                                    <!-- Image -->
                                                                    <div class="w-100px w-md-60px">
                                                                        <img src="assets/images/courses/4by3/04.jpg" class="rounded" alt="">
                                                                    </div>
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0 ms-2">	
                                                                        <a href="#">Learn Invision</a>
                                                                    </h6>
                                                                </div>
                                                            </td>
                                                            <!-- Selling item -->
                                                            <td>28</td>
                                                            <!-- Amount item -->
                                                            <td>$98,478</td>
                                                            <!-- Period item -->
                                                            <td>
                                                                <span class="badge bg-primary bg-opacity-10 text-primary">8 months</span>
                                                            </td>
                                                            <!-- Action item -->
                                                            <td>
                                                                <a href="#" class="btn btn-sm btn-success-soft btn-round me-1 mb-0"><i class="far fa-fw fa-edit"></i></a>
                                                                <button class="btn btn-sm btn-danger-soft btn-round mb-0"><i class="fas fa-fw fa-times"></i></button>
                                                            </td>
                                                        </tr>

                                                        <!-- Table item -->
                                                        <tr>
                                                            <!-- Course item -->
                                                            <td>
                                                                <div class="d-flex align-items-center">
                                                                    <!-- Image -->
                                                                    <div class="w-100px w-md-60px">
                                                                        <img src="assets/images/courses/4by3/06.jpg" class="rounded" alt="">
                                                                    </div>
                                                                    <!-- Title -->
                                                                    <h6 class="mb-0 ms-2">	
                                                                        <a href="#">Angular – The Complete Guider</a>
                                                                    </h6>
                                                                </div>
                                                            </td>
                                                            <!-- Selling item -->
                                                            <td>38</td>
                                                            <!-- Amount item -->
                                                            <td>$1,02,478</td>
                                                            <!-- Period item -->
                                                            <td>
                                                                <span class="badge bg-primary bg-opacity-10 text-primary">1 year</span>
                                                            </td>
                                                            <!-- Action item -->
                                                            <td>
                                                                <a href="#" class="btn btn-sm btn-success-soft btn-round me-1 mb-0"><i class="far fa-fw fa-edit"></i></a>
                                                                <button class="btn btn-sm btn-danger-soft btn-round mb-0"><i class="fas fa-fw fa-times"></i></button>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                    <!-- Table body END -->
                                                </table>
                                                <!-- Table END -->
                                            </div>

                                            <!-- Pagination -->
                                            <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-3">
                                                <!-- Content -->
                                                <p class="mb-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p>
                                                <!-- Pagination -->
                                                <nav class="d-flex justify-content-center mb-0" aria-label="navigation">
                                                    <ul class="pagination pagination-sm pagination-primary-soft mb-0 pb-0">
                                                        <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
                                                        <li class="page-item mb-0"><a class="page-link" href="#">1</a></li>
                                                        <li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li>
                                                        <li class="page-item mb-0"><a class="page-link" href="#">3</a></li>
                                                        <li class="page-item mb-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                        <!-- Card body START -->
                                    </div>
                                </div>
                            </div>
                            <!-- Course List table END -->
                        </div>
                        <!-- Main content END -->
                    </div><!-- Row END -->
                </div>
            </section>
            <!-- =======================
            Page content END -->

        </main>
        <!-- **************** MAIN CONTENT END **************** -->

        <!-- =======================
        Footer START -->
        <footer class="bg-dark p-3">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Widget -->
                    <div class="col-md-4 text-center text-md-start mb-3 mb-md-0">
                        <!-- Logo START -->
                        <a href="index-2.html"> <img class="h-20px" src="assets/images/logo-light.svg" alt="logo"> </a>
                    </div>

                    <!-- Widget -->
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="text-center text-white">
                            Copyrights ©2021 <a href="#" class="text-reset btn-link">Eduport</a>. All rights reserved.
                        </div>
                    </div>
                    <!-- Widget -->
                    <div class="col-md-4">
                        <!-- Rating -->
                        <ul class="list-inline mb-0 text-center text-md-end">
                            <li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-facebook"></i></a></li>
                            <li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-instagram"></i></a></li>
                            <li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-linkedin-in"></i></a></li>
                            <li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!-- =======================
        Footer END -->

        <!-- Back to top -->
        <div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

        <!-- Bootstrap JS -->
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Vendors -->
        <script src="assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
        <script src="assets/vendor/apexcharts/js/apexcharts.min.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>

    <!-- Mirrored from eduport.webestica.com/instructor-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:05 GMT -->
</html>