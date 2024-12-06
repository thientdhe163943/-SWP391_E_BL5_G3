<%-- 
    Document   : mentor-request-list
    Created on : Dec 5, 2024, 1:52:50 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/instructor-manage-course.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:05 GMT -->
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

        <!-- **************** MAIN CONTENT START **************** -->
        <main>

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
                                    <h3 class="mb-0">My Requests List</h3>
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
                                                    <option>Most popular</option>
                                                    <option>Most Viewed</option>
                                                </select>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- Search and select END -->

                                    <!-- Course list table START -->
                                    <div class="table-responsive-lg border-0">
                                        <table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
                                            <!-- Table head -->
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-0 rounded-start">Request Title</th>
                                                    <th scope="col" class="border-0">Deadline Date</th>
                                                    <th scope="col" class="border-0">Status</th>
                                                    <th scope="col" class="border-0">Price</th>
                                                    <th scope="col" class="border-0 rounded-end">Action</th>
                                                </tr>
                                            </thead>

                                            <!-- Table body START -->
                                            <tbody>
                                                <c:forEach items="${requestList}" var="request">
                                                    <!-- Table item -->
                                                    <tr>
                                                        <!-- Request item -->
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6><a href="mentor-request-detail?id=${request.requestId}">${request.title}</a></h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Deadline item -->
                                                        <td class="text-center text-sm-start">${request.deadline}</td>
                                                        <!-- Status item -->
                                                        <td>
                                                            <c:if test="${request.status == 1}">
                                                                <div class="badge bg-primary bg-opacity-10 text-primary">Pending</div>
                                                            </c:if>
                                                            <c:if test="${request.status == 2}">
                                                                <div class="badge bg-success bg-opacity-10 text-success">Accepted</div>
                                                            </c:if>
                                                            <c:if test="${request.status == 3}">
                                                                <div class="badge bg-warning bg-opacity-10 text-warning">Canceled</div>
                                                            </c:if>
                                                            <c:if test="${request.status == 4}">
                                                                <div class="badge bg-warning bg-opacity-10 text-warning">Closed</div>
                                                            </c:if>
                                                        </td>
                                                        <!-- Hour item -->
                                                        <td>$250</td>
                                                        <!-- Action item -->
                                                        <td>
                                                            <button type="button" 
                                                                    title="View Detail" 
                                                                    class="btn btn-sm btn-info-soft btn-round me-1 mb-0"
                                                                    data-bs-toggle="modal" 
                                                                    data-bs-target="#addEducationModal">
                                                                <i class="far fa-fw fa-eye"></i>
                                                            </button>
                                                            
                                                            <button type="button" 
                                                                    title="Accept" 
                                                                    class="btn btn-sm btn-success-soft btn-round me-1 mb-0"
                                                                    data-bs-toggle="modal" 
                                                                    data-bs-target="#addEducationModal">
                                                                <i class="far fa-fw fa-check-square"></i>
                                                            </button>
                                                            <button type="button" 
                                                                    title="Cancel" 
                                                                    class="btn btn-sm btn-danger-soft btn-round mb-0"
                                                                    data-bs-toggle="modal" 
                                                                    data-bs-target="#addEducationModal">
                                                                <i class="fas fa-fw fa-times"></i>
                                                            </button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                            <!-- Table body END -->
                                        </table>
                                    </div>
                                    <!-- Course list table END -->

                                    <!-- Pagination START -->
                                    <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                                        <!-- Content -->
                                        <p class="mb-0 text-center text-sm-start"></p>
                                        <!-- Pagination -->
                                        <nav class="d-flex justify-content-center mb-0" aria-label="navigation">
                                            <ul class="pagination pagination-sm pagination-primary-soft mb-0 pb-0">
                                                <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
                                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                                        <li class="page-item mb-0 page-number ${i == index ? 'active' : ''}"><a class="page-link" href="mentor-request-list?index=${i}">${i}</a></li>
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

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>

    <!-- Mirrored from eduport.webestica.com/instructor-manage-course.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:05 GMT -->
</html>