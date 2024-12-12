<%-- 
    Document   : mentor-single
    Created on : Dec 10, 2024, 10:15:08 AM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/instructor-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:19:58 GMT -->
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
        <link rel="stylesheet" type="text/css" href="assets/vendor/aos/aos.css">

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">
        <style>
            .feedback-container {
                max-width: 800px;
                /*margin: 0 auto;*/
            }
            .feedback-item {
                border-bottom: 1px solid #ddd;
                padding: 20px 0;
            }
            .feedback-item:last-child {
                border-bottom: none;
            }
            .feedback-date {
                font-weight: bold;
                margin-bottom: 10px;
            }
            .feedback-text {
                margin-bottom: 10px;
            }
            .feedback-button {
                background-color: #f8e8b8;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                font-size: 14px;
                margin-bottom: 10px;
            }
            .feedback-author {
                display: flex;
                align-items: center;
            }
            .feedback-author img {
                border-radius: 50%;
                width: 40px;
                height: 40px;
                margin-right: 10px;
            }
            .feedback-author span {
                font-weight: bold;
            }
        </style>
    </head>

    <body>

        <!--Header-->
        <jsp:include page="../../Header.jsp"></jsp:include>

            <!-- **************** MAIN CONTENT START **************** -->
            <main>
                <section class="pt-5 pb-0">
                    <div class="container">
                        <div class="row g-4">
                            <!-- Profile Header START -->
                            <div class="col-12">
                                <div class="card shadow text-center">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center">
                                            <img src="${cv.applicant.avatar}" class="rounded-circle mb-3" alt="Profile Image" style="width: 120px; height: 120px; object-fit: cover;">
                                        <h5 class="card-title">${cv.applicant.name}</h5>
                                        <c:if test="${cv.eduList.size() > 0}"><p class="card-text"> ${cv.eduList.get(0).major} at ${cv.eduList.get(0).schoolName}</p></c:if>
                                            <ul class="list-inline mb-3">
                                                <li class="list-inline-item"><div class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>${totalMentee}</div></li>
                                            <li class="list-inline-item">${totalRate}<i class="fas fa-star text-warning"></i></li>
                                        </ul>
                                        <a href="#" class="btn btn-success me-2">Send Request</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Profile Header END -->

                        <!-- Tabs Navigation START -->
                        <div class="col-12">
                            <ul class="nav nav-tabs" id="profileTabs" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="ho-so" aria-selected="true">Profile</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="review-tab" data-bs-toggle="tab" data-bs-target="#review" type="button" role="tab" aria-controls="review" aria-selected="false">Review (${cv.cvDetailList.size()})</button>
                                </li>
                            </ul>
                        </div>
                        <!-- Tabs Navigation END -->

                        <!-- Tabs Content START -->
                        <div class="col-12 tab-content" id="profileTabsContent">
                            <div class="tab-pane fade show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="d-flex align-items-center justify-content-between mb-3">
                                    <h4 class="mt-4">Introduction</h4>
                                </div>
                                <blockquote class="blockquote">
                                    <p class="mb-0">${cv.introduction}</p>
                                </blockquote>

                                <div class="d-flex align-items-center justify-content-between mb-3">
                                    <h4 class="mt-4">Education</h4>
                                </div>

                                <c:forEach items="${cv.eduList}" var="edu">
                                    <!-- Education item -->
                                    <div class="d-flex align-items-center mb-4">
                                        <span class="icon-md text-dark mb-0 bg-light rounded-3"><i class="fas fa-graduation-cap"></i></span>
                                        <div class="ms-3">
                                            <h5 class="mb-0">${edu.schoolName}</h5>
                                            <h6 class="mb-0 small">${edu.major}</h6>
                                        </div>
                                    </div>
                                </c:forEach>
                                <h4 class="mt-4">Skills</h4>
                                <c:forEach items="${cv.cvSkillList}" var="skill">
                                    <!-- Education item -->
                                    <div class="d-flex align-items-center mb-4">
                                        <span class="icon-md text-dark mb-0 bg-light rounded-3"><i class="fas fa-graduation-cap"></i></span>
                                        <div class="ms-3">
                                            <h5 class="mb-0">${skill.skill.name}</h5>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                                <c:forEach items="${cv.cvDetailList}" var="feedback">
                                    <div class="feedback-container">
                                        <div class="feedback-item">
                                            <div class="feedback-date text-black">
                                                ${feedback.date}
                                            </div>
                                            <div class="feedback-text">
                                                ${feedback.comment}
                                            </div>
                                            <div class="feedback-author">
                                                <img alt="Profile Picture" height="40" src="${feedback.mentee.avatar}" width="40"/>
                                                <span>
                                                    ${feedback.mentee.name}
                                                </span>
                                            </div>
                                            <hr>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <!-- Tabs Content END -->
                    </div>
                </div>
            </section>

            <!-- =======================
            Related instructor START -->
            <section>
                <div class="container">
                    <!-- Title -->
                    <div class="row mb-4">
                        <h2 class="mb-0">Related Instructors</h2>
                    </div>

                    <!-- Slider START -->
                    <div class="tiny-slider arrow-round arrow-creative arrow-blur arrow-hover">
                        <div class="tiny-slider-inner" data-autoplay="false" data-arrow="true" data-dots="false" data-items="4" data-items-lg="3" data-items-md="2" data-items-xs="1">

                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/02.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>25</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>15</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Jacqueline Miller</a></h5>
                                    <p class="mb-2">Web Developer</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->

                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/01.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>118</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>09</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Samuel Bishop</a></h5>
                                    <p class="mb-2">Marketing Instructor</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->

                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/08.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>92</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>38</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Dennis Barrett</a></h5>
                                    <p class="mb-2">Maths Instructor</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->

                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/04.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>82</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>05</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Carolyn Ortiz</a></h5>
                                    <p class="mb-2">Economics Teacher</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->

                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/03.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>50</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>10</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Billy Vasquez</a></h5>
                                    <p class="mb-2">UI/UX Designer</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->
                        </div>
                    </div>
                    <!-- Slider END -->

                </div>
            </section>
            <!-- =======================
            Related instructor END -->

        </main>
        <!-- **************** MAIN CONTENT END **************** -->

        <!-- =======================
        Footer START -->
        <footer class="pt-5 bg-light">
            <div class="container">
                <!-- Row START -->
                <div class="row g-4">

                    <!-- Widget 1 START -->
                    <div class="col-lg-3">
                        <!-- logo -->
                        <a class="me-0" href="index-2.html">
                            <img class="light-mode-item h-40px" src="assets/images/logo.svg" alt="logo">
                            <img class="dark-mode-item h-40px" src="assets/images/logo-light.svg" alt="logo">
                        </a>
                        <p class="my-3">Eduport education theme, built specifically for the education centers which is dedicated to teaching and involve learners. </p>
                        <!-- Social media icon -->
                        <ul class="list-inline mb-0 mt-3">
                            <li class="list-inline-item"> <a class="btn btn-white btn-sm shadow px-2 text-facebook" href="#"><i class="fab fa-fw fa-facebook-f"></i></a> </li>
                            <li class="list-inline-item"> <a class="btn btn-white btn-sm shadow px-2 text-instagram" href="#"><i class="fab fa-fw fa-instagram"></i></a> </li>
                            <li class="list-inline-item"> <a class="btn btn-white btn-sm shadow px-2 text-twitter" href="#"><i class="fab fa-fw fa-twitter"></i></a> </li>
                            <li class="list-inline-item"> <a class="btn btn-white btn-sm shadow px-2 text-linkedin" href="#"><i class="fab fa-fw fa-linkedin-in"></i></a> </li>
                        </ul>
                    </div>
                    <!-- Widget 1 END -->

                    <!-- Widget 2 START -->
                    <div class="col-lg-6">
                        <div class="row g-4">
                            <!-- Link block -->
                            <div class="col-6 col-md-4">
                                <h5 class="mb-2 mb-md-4">Company</h5>
                                <ul class="nav flex-column">
                                    <li class="nav-item"><a class="nav-link" href="#">About us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Contact us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">News and Blogs</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Library</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Career</a></li>
                                </ul>
                            </div>

                            <!-- Link block -->
                            <div class="col-6 col-md-4">
                                <h5 class="mb-2 mb-md-4">Community</h5>
                                <ul class="nav flex-column">
                                    <li class="nav-item"><a class="nav-link" href="#">Documentation</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Faq</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Forum</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Sitemap</a></li>
                                </ul>
                            </div>

                            <!-- Link block -->
                            <div class="col-6 col-md-4">
                                <h5 class="mb-2 mb-md-4">Teaching</h5>
                                <ul class="nav flex-column">
                                    <li class="nav-item"><a class="nav-link" href="#">Become a teacher</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">How to guide</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Terms &amp; Conditions</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Widget 2 END -->

                    <!-- Widget 3 START -->
                    <div class="col-lg-3">
                        <h5 class="mb-2 mb-md-4">Contact</h5>
                        <!-- Time -->
                        <p class="mb-2">
                            Toll free:<span class="h6 fw-light ms-2">+1234 568 963</span>
                            <span class="d-block small">(9:AM to 8:PM IST)</span>
                        </p>

                        <p class="mb-0">Email:<span class="h6 fw-light ms-2">example@gmail.com</span></p>

                        <div class="row g-2 mt-2">
                            <!-- Google play store button -->
                            <div class="col-6 col-sm-4 col-md-3 col-lg-6">
                                <a href="#"> <img src="assets/images/client/google-play.svg" alt=""> </a>
                            </div>
                            <!-- App store button -->
                            <div class="col-6 col-sm-4 col-md-3 col-lg-6">
                                <a href="#"> <img src="assets/images/client/app-store.svg" alt="app-store"> </a>
                            </div>
                        </div> <!-- Row END -->
                    </div> 
                    <!-- Widget 3 END -->
                </div><!-- Row END -->

                <!-- Divider -->
                <hr class="mt-4 mb-0">

                <!-- Bottom footer -->
                <div class="py-3">
                    <div class="container px-0">
                        <div class="d-md-flex justify-content-between align-items-center py-3 text-center text-md-left">
                            <!-- copyright text -->
                            <div class="text-primary-hover"> Copyrights <a href="#" class="text-body">©2021 Eduport</a>. All rights reserved. </div>
                            <!-- copyright links-->
                            <div class=" mt-3 mt-md-0">
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <!-- Language selector -->
                                        <div class="dropup mt-0 text-center text-sm-end">
                                            <a class="dropdown-toggle nav-link" href="#" role="button" id="languageSwitcher" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="fas fa-globe me-2"></i>Language
                                            </a>
                                            <ul class="dropdown-menu min-w-auto" aria-labelledby="languageSwitcher">
                                                <li><a class="dropdown-item me-4" href="#"><img class="fa-fw me-2" src="assets/images/flags/uk.svg" alt="">English</a></li>
                                                <li><a class="dropdown-item me-4" href="#"><img class="fa-fw me-2" src="assets/images/flags/gr.svg" alt="">German </a></li>
                                                <li><a class="dropdown-item me-4" href="#"><img class="fa-fw me-2" src="assets/images/flags/sp.svg" alt="">French</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="list-inline-item"><a class="nav-link" href="#">Terms of use</a></li>
                                    <li class="list-inline-item"><a class="nav-link pe-0" href="#">Privacy policy</a></li>
                                </ul>
                            </div>
                        </div>
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
        <script src="assets/vendor/tiny-slider/tiny-slider.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>

    <!-- Mirrored from eduport.webestica.com/instructor-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:19:59 GMT -->
</html>