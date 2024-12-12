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
        <title>Request Statistics</title>

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
        <jsp:include page="header.jsp" />

        <!-- **************** MAIN CONTENT START **************** -->
        <main>
            <jsp:include page="banner.jsp"/>
            <!-- =======================
            Page content START -->
            <section class="pt-0">
                <div class="container">
                    <div class="row">
                        <!-- Main content START -->
                        <div class="col-xl-9">
                            <!-- Counter boxes START -->
                            <!--Row 1-->
                            <div class="row g-4">
                                <!-- Counter item -->
                                <div class="col-sm-6 col-lg-4">
                                    <div class="d-flex justify-content-center align-items-center p-4 bg-purple bg-opacity-10 rounded-3">
                                        <span class="display-6 text-purple mb-0"><i class="fas fa-user-graduate fa-fw"></i></span>
                                        <div class="ms-4">
                                            <div class="d-flex">
                                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="${totalMentors}"	data-purecounter-delay="100">0</h5>
                                                <span class="mb-0 h5"></span>
                                            </div>
                                            <span class="mb-0 h6 fw-light">Total mentors</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Counter item -->
                                <div class="col-sm-6 col-lg-4">
                                    <div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
                                        <span class="display-6 text-primary mb-0"><i class="fas fa-regular fa-paper-plane fa-fw"></i></span>
                                        <div class="ms-4">
                                            <div class="d-flex">
                                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="${totalRequests}" data-purecounter-delay="100">0</h5>
                                                <span class="mb-0 h5"></span>
                                            </div>
                                            <span class="mb-0 h6 fw-light">Total Requests</span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- Counter boxes END -->

                            <!-- Counter boxes START -->
                            <!--Row 2-->
                            <div class="row g-4 mt-md-0">
                                <!-- Counter item -->
                                <div class="col-sm-6 col-lg-4">
                                    <div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
                                        <span class="display-6 text-info mb-0"><i class="fas fa-spinner fa-fw"></i></span>
                                        <div class="ms-4">
                                            <div class="d-flex">
                                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="${pendingRequests}" data-purecounter-delay="100">0</h5>
                                                <span class="mb-0 h5"></span>
                                            </div>
                                            <span class="mb-0 h6 fw-light">Pending Requests</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Counter item -->
                                <div class="col-sm-6 col-lg-4">
                                    <div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
                                        <span class="display-6 text-success mb-0"><i class="fas fa-check fa-fw"></i></span>
                                        <div class="ms-4">
                                            <div class="d-flex">
                                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="${closedRequests}" data-purecounter-delay="100">0</h5>
                                                <span class="mb-0 h5"></span>
                                            </div>
                                            <span class="mb-0 h6 fw-light">Successful Requests</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Counter item -->
                                <div class="col-sm-6 col-lg-4">
                                    <div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
                                        <span class="display-6 text-danger mb-0"><i class="fas fa-fw fa-ban"></i></i></span>
                                        <div class="ms-4">
                                            <div class="d-flex">
                                                <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="${canceledRequests}" data-purecounter-delay="100">0</h5>
                                                <span class="mb-0 h5"></span>
                                            </div>
                                            <span class="mb-0 h6 fw-light">Canceled Requests</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Counter boxes END -->
                        </div>
                        <!-- Main content END -->
                    </div><!-- Row END -->
                </div>
            </section>
            <!-- =======================
            Page content END -->

        </main>
        <!-- **************** MAIN CONTENT END **************** -->

        <jsp:include page="footer.jsp" />a

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