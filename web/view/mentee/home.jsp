<%-- 
    Document   : Home
    Created on : Nov 29, 2024, 1:27:05 PM
    Author     : Hayashi
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Home</title>

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
        <jsp:include page="header.jsp" />

        <main>
            <!-- =======================
            Page Banner START -->
            <section class="pt-0">
                <div class="container-fluid px-0">
                    <div class="card bg-blue h-100px h-md-200px rounded-0" style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
                    </div>
                </div>
                <div class="container mt-n4">
                    <div class="row">
                        <div class="col-12">
                            <div class="card bg-transparent card-body pb-0 ps-0 mt-2 mt-sm-0">
                                <div class="row d-sm-flex justify-sm-content-between mt-2 mt-md-0">
                                    <!-- Avatar -->
                                    <div class="col-auto">
                                        <div class="avatar avatar-xxl position-relative mt-n3">
                                            <img class="avatar-img rounded-circle border border-white border-3 shadow" src="assets/images/avatar/09.jpg" alt="">
                                            <span class="badge bg-success text-white rounded-pill position-absolute top-50 start-100 translate-middle mt-4 mt-md-5 ms-n3 px-md-3">Pro</span>
                                        </div>
                                    </div>
                                    <!-- Profile info -->
                                    <div class="col d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <h1 class="my-1 fs-4">Lori Stevens</h1>
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item me-3 mb-1 mb-sm-0">
                                                    <span class="h6">255</span>
                                                    <span class="text-body fw-light">points</span>
                                                </li>
                                                <li class="list-inline-item me-3 mb-1 mb-sm-0">
                                                    <span class="h6">7</span>
                                                    <span class="text-body fw-light">Completed courses</span>
                                                </li>
                                                <li class="list-inline-item me-3 mb-1 mb-sm-0">
                                                    <span class="h6">52</span>
                                                    <span class="text-body fw-light">Completed lessons</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <!-- Button -->
                                        <div class="mt-2 mt-sm-0">
                                            <a href="student-course-list.html" class="btn btn-outline-primary mb-0">View my courses</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

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

                        <jsp:include page="sidebar.jsp"></jsp:include>

                            <!-- Main content START -->
                            <div class="col-xl-9">
                                <div class="card bg-transparent border rounded-3">
                                    <!-- Card header START -->
                                    <div class="card-header bg-transparent border-bottom">
                                        <h3 class="mb-0">My Courses List</h3>
                                    </div>
                                    <!-- Card header END -->

                                    <!-- Card body START -->
                                    <div class="card-body">

                                        <!-- Search and select START -->
                                        <div class="row g-3 align-items-center justify-content-between mb-4">
                                            <!-- Content -->
                                            <div class="col-md-8">
                                                <form class="rounded position-relative" action="/Mentee/Request/List" method="GET">
                                                    <input class="form-control pe-5 bg-transparent" id="requestSearch" type="search" placeholder="Search" aria-label="Search">
                                                    <button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                                </form>
                                            </div>

                                            <!-- Select option -->
                                            <div class="col-md-3">
                                                <!-- Short by filter -->
                                                <form>
                                                    <select class="form-select js-choice border-0 z-index-9 bg-transparent" id="sortOrder" aria-label=".form-select-sm" onchange="showSortedResult()">
                                                        <option value="">Sort by</option>
                                                        <option value="name">Name</option>
                                                        <option value="rating">Rating</option>
                                                    </select>
                                                </form>
                                            </div>
                                        </div>
                                        <!-- Search and select END -->

                                        <!-- Course list table START -->
                                        <div class="table-responsive border-0">
                                            <table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
                                                <!-- Table head -->
                                                <thead>
                                                    <tr>
                                                        <th scope="col" class="border-0 rounded-start">Course Title</th>
                                                        <th scope="col" class="border-0">Total Lectures</th>
                                                        <th scope="col" class="border-0">Completed Lecture</th>
                                                        <th scope="col" class="border-0 rounded-end">Action</th>
                                                    </tr>
                                                </thead>

                                                <!-- Table body START -->
                                                <tbody>
                                                    <!-- Table item -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <!-- Image -->
                                                                <div class="w-100px">
                                                                    <img src="assets/images/courses/4by3/08.jpg" class="rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6><a href="#">Building Scalable APIs with GraphQL</a></h6>
                                                                    <!-- Info -->
                                                                    <div class="overflow-hidden">
                                                                        <h6 class="mb-0 text-end">85%</h6>
                                                                        <div class="progress progress-sm bg-primary bg-opacity-10">
                                                                            <div class="progress-bar bg-primary aos" role="progressbar" data-aos="slide-right" data-aos-delay="200" data-aos-duration="1000" data-aos-easing="ease-in-out" style="width: 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <!-- Table data -->
                                                        <td>56</td>

                                                        <!-- Table data -->
                                                        <td>40</td>

                                                        <!-- Table data -->
                                                        <td>
                                                            <a href="#" class="btn btn-sm btn-primary-soft me-1 mb-1 mb-md-0"><i class="bi bi-play-circle me-1"></i>Continue</a>
                                                        </td>
                                                    </tr>

                                                    <!-- Table item -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <!-- Image -->
                                                                <div class="w-100px">
                                                                    <img src="assets/images/courses/4by3/03.jpg" class="rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6><a href="#">Create a Design System in Figma</a></h6>
                                                                    <!-- Info -->
                                                                    <div class="overflow-hidden">
                                                                        <h6 class="mb-0 text-end">100%</h6>
                                                                        <div class="progress progress-sm bg-primary bg-opacity-10">
                                                                            <div class="progress-bar bg-primary aos" role="progressbar" data-aos="slide-right" data-aos-delay="200" data-aos-duration="1000" data-aos-easing="ease-in-out" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <!-- Table data -->
                                                        <td>42</td>

                                                        <!-- Table data -->
                                                        <td>42</td>

                                                        <!-- Table data -->
                                                        <td>
                                                            <button class="btn btn-sm btn-success me-1 mb-1  disabled"><i class="bi bi-check me-1"></i>Complete</button>
                                                            <a href="#" class="btn btn-sm btn-light me-1"><i class="bi bi-arrow-repeat me-1"></i>Restart</a>
                                                        </td>
                                                    </tr>

                                                    <!-- Table item -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <!-- Image -->
                                                                <div class="w-100px">
                                                                    <img src="assets/images/courses/4by3/05.jpg" class="rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6><a href="#">The Complete Web Development in python</a></h6>
                                                                    <!-- Info -->
                                                                    <div class="overflow-hidden">
                                                                        <h6 class="mb-0 text-end">60%</h6>
                                                                        <div class="progress progress-sm bg-primary bg-opacity-10">
                                                                            <div class="progress-bar bg-primary aos" role="progressbar" data-aos="slide-right" data-aos-delay="200" data-aos-duration="1000" data-aos-easing="ease-in-out" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <!-- Table data -->
                                                        <td>28</td>

                                                        <!-- Table data -->
                                                        <td>12</td>

                                                        <!-- Table data -->
                                                        <td>
                                                            <a href="#" class="btn btn-sm btn-primary-soft me-1 mb-1 mb-md-0"><i class="bi bi-play-circle me-1"></i>Continue</a>
                                                        </td>
                                                    </tr>

                                                    <!-- Table item -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <!-- Image -->
                                                                <div class="w-100px">
                                                                    <img src="assets/images/courses/4by3/01.jpg" class="rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6><a href="#">Digital Marketing Masterclass</a></h6>
                                                                    <!-- Info -->
                                                                    <div class="overflow-hidden">
                                                                        <h6 class="mb-0 text-end">40%</h6>
                                                                        <div class="progress progress-sm bg-primary bg-opacity-10">
                                                                            <div class="progress-bar bg-primary aos" role="progressbar" data-aos="slide-right" data-aos-delay="200" data-aos-duration="1000" data-aos-easing="ease-in-out" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>32</td>

                                                        <!-- Table data -->
                                                        <td>18</td>

                                                        <!-- Table data -->
                                                        <td>
                                                            <a href="#" class="btn btn-sm btn-primary-soft me-1 mb-1 mb-md-0"><i class="bi bi-play-circle me-1"></i>Continue</a>
                                                        </td>
                                                    </tr>

                                                    <!-- Table item -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <!-- Image -->
                                                                <div class="w-100px">
                                                                    <img src="assets/images/courses/4by3/02.jpg" class="rounded" alt="">
                                                                </div>
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Title -->
                                                                    <h6><a href="#">Graphic Design Masterclass</a></h6>
                                                                    <!-- Info -->
                                                                    <div class="overflow-hidden">
                                                                        <h6 class="mb-0 text-end">90%</h6>
                                                                        <div class="progress progress-sm bg-primary bg-opacity-10">
                                                                            <div class="progress-bar bg-primary aos" role="progressbar" data-aos="slide-right" data-aos-delay="200" data-aos-duration="1000" data-aos-easing="ease-in-out" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>16</td>

                                                        <!-- Table data -->
                                                        <td>14</td>

                                                        <!-- Table data -->
                                                        <td>
                                                            <a href="#" class="btn btn-sm btn-primary-soft me-1 mb-1 mb-md-0"><i class="bi bi-play-circle me-1"></i>Continue</a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <!-- Table body END -->
                                            </table>
                                        </div>
                                        <!-- Course list table END -->

                                        <!-- Pagination START -->
                                        <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                                            <!-- Content -->
                                            <p class="mb-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p>
                                            <!-- Pagination -->
                                            <nav class="d-flex justify-content-center mb-0" aria-label="navigation">
                                                <ul class="pagination pagination-sm pagination-primary-soft mb-0 pb-0">
                                                    <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
                                                    <li class="page-item mb-0 active"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item mb-0"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item mb-0"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item mb-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                        <!-- Pagination END -->
                                    </div>
                                    <!-- Card body START -->
                                </div>
                            </div>
                            <!-- Main content END -->
                        </div> <!-- Row END -->
                    </div>	
                </section>
                <!-- =======================
                Page content END -->

            </main>
            <!-- **************** MAIN CONTENT END **************** -->

        <jsp:include page="footer.jsp"></jsp:include>

        <script>
            function showSortedResult() {
                // Get the selected sorting order
                const sortOrder = document.getElementById("sortOrder").value;

                // Perform an AJAX request
                const xhr = new XMLHttpRequest();
                xhr.open("GET", "Mentee/Request/Sort?order=" + sortOrder, true);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        // Update the table with the sorted data
                        document.getElementById("resultsTable").innerHTML = xhr.responseText;
                    }
                };
                xhr.send();
            }
        </script>

        <!-- Bootstrap JS -->
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Vendors -->
        <script src="assets/vendor/choices/js/choices.min.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>
</html>
