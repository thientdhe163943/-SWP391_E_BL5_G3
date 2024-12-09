<%-- 
    Document   : mentor-banner
    Created on : Dec 4, 2024, 3:03:56 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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