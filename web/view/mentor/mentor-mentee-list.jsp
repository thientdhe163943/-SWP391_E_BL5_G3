<%-- 
    Document   : mentor-mentee-list
    Created on : Dec 4, 2024, 2:58:58 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <link rel="stylesheet" type="text/css" href="assets/vendor/choices/css/choices.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/aos/aos.css">

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">
    </head>
    <body>
        <!-- **************** MAIN CONTENT START **************** -->
        <main>
            <jsp:include page="../../Header.jsp"></jsp:include>
                <!-- =======================
                Main Banner START -->
            <jsp:include page="mentor-banner.jsp"/>
            <!-- =======================
            Main Banner END -->

            <!-- =======================
            Inner part START -->
            <section class="pt-0">
                <div class="container">
                    <div class="row">
                        <!--Sidebar-->
                        <jsp:include page="mentor-sidebar.jsp"/>
                        <!-- Main content START -->
                        <div class="col-xl-9">
                            <!-- Card START -->
                            <div class="card border bg-transparent rounded-3">
                                <!-- Card header START -->
                                <div class="card-header bg-transparent border-bottom">
                                    <h3 class="mb-0">My Mentees List</h3>
                                </div>
                                <!-- Card header END -->

                                <!-- Card body START -->
                                <div class="card-body">

                                    <!-- Search and select START -->
                                    <div class="row g-3 align-items-center justify-content-between mb-4">
                                        <!-- Search -->
                                        <div class="col-md-8">
                                            <form class="rounded position-relative">
                                                <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                                <button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                            </form>
                                        </div>

                                        <!-- Select option -->
                                        <div class="col-md-3">
                                            <!-- Short by filter -->
                                            <form>
                                                <select class="form-select js-choice border-0 z-index-9 bg-transparent" aria-label=".form-select-sm">
                                                    <option value="">Sort by</option>
                                                    <option>Free</option>
                                                    <option>Newest</option>
                                                    <option>Oldest</option>
                                                </select>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- Search and select END -->

                                    <!-- Student list table START -->
                                    <div class="table-responsive border-0">
                                        <table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
                                            <!-- Table head -->
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-0 rounded-start">Mentee Name</th>
                                                    <th scope="col" class="border-0">Completed Requests</th>
                                                    <th scope="col" class="border-0">Requests</th>
                                                    <th scope="col" class="border-0 rounded-end">Action</th>
                                                </tr>
                                            </thead>

                                            <!-- Table body START -->
                                            <tbody>
                                                <c:forEach items="${menteeList}" var="mentee">
                                                    <!-- Table item -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <!-- Image -->
                                                                <div class="avatar avatar-md mb-2 mb-md-0">
                                                                    <img src="assets/images/avatar/01.jpg" class="rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Name -->
                                                                    <h6 class="mb-0"><a href="#" class="stretched-link">${mentee.name}</a></h6>
                                                                    <!-- Address -->
                                                                    <!--                                                                    <span class="text-body small"><i class="fas fa-fw fa-map-marker-alt me-1 mt-1"></i>Mumbai</span>-->
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <!-- Table data -->
                                                        <!--Completed Requests-->
                                                        <td class="text-center text-sm-start">
                                                            <div class=" overflow-hidden">
                                                                <h6 class="mb-0">85%</h6>
                                                                <div class="progress progress-sm bg-primary bg-opacity-10">
                                                                    <div class="progress-bar bg-primary aos" role="progressbar" data-aos="slide-right" data-aos-delay="200" data-aos-duration="1000" data-aos-easing="ease-in-out" style="width: 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <!--Requests-->
                                                        <td>1</td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <a href="#" class="btn btn-success-soft btn-round me-1 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Requests"><i class="far fa-solid fa-paper-plane"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                            <!-- Table body END -->
                                        </table>
                                    </div>
                                    <!-- Student list table END -->

                                    <!-- Pagination START -->
                                    <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                                        <!-- Content -->
                                        <p class="mb-0 text-center text-sm-start"></p>
                                        <!-- Pagination -->
                                        <nav class="d-flex justify-content-center mb-0" aria-label="navigation">
                                            <ul class="pagination pagination-sm pagination-primary-soft mb-0 pb-0">
                                                <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
                                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                                    <li class="page-item mb-0 page-number ${i == index ? 'active' : ''}"><a class="page-link" href="mentor-mentee-list?index=${i}">${i}</a></li>
                                                    </c:forEach>
                                                <li class="page-item mb-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Pagination END -->
                                </div>
                                <!-- Card body START -->
                            </div>
                            <!-- Card END -->
                        </div>
                        <!-- Main content END -->
                    </div><!-- Row END -->
                </div>
            </section>
            <!-- =======================
            Inner part END -->
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
        <script src="assets/vendor/choices/js/choices.min.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>
        <script>
            // Lấy URL hiện tại
            const currentUrl = window.location.href;

            // Lấy tất cả các phần tử có class 'list-group-item'
            const navLinks = document.querySelectorAll('.page-number');

            navLinks.forEach(link => {
                // Nếu URL của link trùng với URL hiện tại
                if (link.href === currentUrl) {
                    link.classList.add('active'); // Thêm class 'active'
                }

                // Thêm sự kiện click để chuyển trạng thái 'active'
                link.addEventListener('click', function () {
                    navLinks.forEach(item => item.classList.remove('active'));
                    this.classList.add('active');
                });
            });
        </script>
    </body>
</html>
