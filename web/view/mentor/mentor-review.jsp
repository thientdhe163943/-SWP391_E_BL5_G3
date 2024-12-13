<%-- 
    Document   : mentor-review
    Created on : Dec 13, 2024, 12:43:26 AM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/instructor-review.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:07 GMT -->
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

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">

    </head>

    <body>


        <!-- Header START -->
        <jsp:include page="../../Header.jsp"></jsp:include>
            <!-- Header END -->

            <!-- **************** MAIN CONTENT START **************** -->
            <main>

                <!-- =======================
                Main Banner START -->
            <jsp:include page="mentor-banner.jsp"></jsp:include>
                <!-- =======================
                Main Banner END -->

                <!-- =======================
                Inner part START -->
                <section class="pt-0">
                    <div class="container">
                        <div class="row">
                        <jsp:include page="mentor-sidebar.jsp"/>
                        <!-- Main content START -->
                        <div class="col-xl-9">
                            <!-- Student review START -->
                            <div class="card border bg-transparent rounded-3">
                                <!-- Header START -->
                                <div class="card-header bg-transparent border-bottom">
                                    <div class="row justify-content-between align-middle">
                                        <!-- Title -->
                                        <div class="col-sm-6">
                                            <h3 class="card-header-title mb-2 mb-sm-0">Student review</h3>
                                        </div>

                                        <!-- Short by filter -->
                                        <div class="col-sm-4">
                                            <form>
                                                <select class="form-select js-choice z-index-9 bg-white" aria-label=".form-select-sm">
                                                    <option value="">Sort by</option>
                                                    <option>★★★★★ (5/5)</option>
                                                    <option>★★★★☆ (4/5)</option>
                                                    <option>★★★☆☆ (3/5)</option>
                                                    <option>★★☆☆☆ (2/5)</option>
                                                    <option>★☆☆☆☆ (1/5)</option>
                                                </select>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- Header END -->

                                <!-- Reviews START -->
                                <div class="card-body mt-2 mt-sm-4">
                                    <c:forEach items="${reviews}" var="review">
                                        <!-- Review item START -->
                                        <div class="d-sm-flex">
                                            <!-- Avatar image -->
                                            <img class="avatar avatar-lg rounded-circle float-start me-3" src="${review.mentee.avatar}" alt="avatar">
                                            <div>
                                                <div class="mb-3 d-sm-flex justify-content-sm-between align-items-center">
                                                    <!-- Title -->
                                                    <div>
                                                        <h5 class="m-0">${review.mentee.name}</h5>
                                                        <span class="me-3 small">${review.date}</span>
                                                    </div>
                                                    <!-- Review star -->
                                                    <ul class="list-inline mb-0">

                                                        <c:forEach begin="1" end="${review.rating}">
                                                            <li class="list-inline-item me-0"><i class="fas fa-star text-warning"></i></li>
                                                            </c:forEach>
                                                            <c:forEach begin="1" end="${5- review.rating}">
                                                            <li class="list-inline-item me-0"><i class="far fa-star text-warning"></i></li>
                                                            </c:forEach>
                                                    </ul>	
                                                </div>
                                                <!-- Content -->
                                                <p>${review.comment}</p>
                                            </div>
                                        </div>
                                        <!-- Divider -->
                                        <hr>
                                        <!-- Review item END -->
                                    </c:forEach>
                                </div>
                                <!-- Reviews END -->

                                <div class="card-footer border-top">
                                    <!-- Pagination START -->
                                    <div class="d-sm-flex justify-content-sm-between align-items-sm-center">
                                        <!-- Content -->
                                        <p class="mb-0 text-center text-sm-start"></p>
                                        <!-- Pagination -->
                                        <nav class="d-flex justify-content-center mb-0" aria-label="navigation">
                                            <ul class="pagination pagination-sm pagination-primary-soft my-0 py-0">
                                                <li class="page-item my-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
                                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                                    <li class="page-item my-0 ${i == page ? 'active' : ''}"><a class="page-link" href="mentor-review?page=${i}">${i}</a></li>
                                                    </c:forEach>
                                                <li class="page-item my-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Pagination END -->
                                </div>
                            </div>
                            <!-- Student review END -->
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

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>

    <!-- Mirrored from eduport.webestica.com/instructor-review.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:07 GMT -->
</html>