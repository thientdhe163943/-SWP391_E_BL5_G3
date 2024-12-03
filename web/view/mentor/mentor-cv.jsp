<%-- 
    Document   : mentor-cv
    Created on : Dec 1, 2024, 9:45:40 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/instructor-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:19:58 GMT -->
    <head>
        <title>Update CV of mentor</title>

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

        <!--D:\Project_SWP391_BL5\-SWP391_E_BL5_G3\web\assets\vendor-->
        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>

    <body>

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

                    <!-- Main navbar START -->
                    <div class="navbar-collapse w-100 collapse" id="navbarCollapse">

                        <!-- Nav Main menu START -->
                        <ul class="navbar-nav navbar-nav-scroll mx-auto">
                            <!-- Nav item 1 Demos -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="demoMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Demos</a>
                                <ul class="dropdown-menu" aria-labelledby="demoMenu">
                                    <li> <a class="dropdown-item" href="index-2.html">Home Default</a></li>
                                    <li> <a class="dropdown-item" href="index-3.html">Home Education</a></li>
                                    <li> <a class="dropdown-item" href="index-4.html">Home Academy</a></li>
                                    <li> <a class="dropdown-item" href="index-5.html">Home Course</a></li>
                                    <li> <a class="dropdown-item" href="index-6.html">Home University</a></li>
                                    <li> <a class="dropdown-item" href="index-7.html">Home Kindergarten</a></li>
                                    <li> <a class="dropdown-item" href="index-8.html">Home Landing</a></li>
                                    <li> <a class="dropdown-item" href="index-9.html">Home Tutor</a></li>
                                    <li> <hr class="dropdown-divider"></li>
                                    <li> <a class="dropdown-item" href="request-demo.html">Request a demo</a></li>
                                    <li> <a class="dropdown-item" href="book-class.html">Book a Class</a></li>
                                    <li> <a class="dropdown-item" href="request-access.html">Free Access</a></li>
                                    <li> <a class="dropdown-item" href="university-admission-form.html">Admission Form</a></li>

                                    <li> <hr class="dropdown-divider"></li>
                                    <li class="dropdown-submenu dropend">
                                        <a class="dropdown-item dropdown-toggle" href="#">Dropdown levels</a>
                                        <ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">

                                            <!-- dropdown submenu open right -->
                                            <li class="dropdown-submenu dropend">
                                                <a class="dropdown-item dropdown-toggle" href="#">Dropdown (end)</a>
                                                <ul class="dropdown-menu" data-bs-popper="none">
                                                    <li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
                                                    <li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
                                                </ul>
                                            </li>
                                            <li> <a class="dropdown-item" href="#">Dropdown item</a> </li>

                                            <!-- dropdown submenu open left -->
                                            <li class="dropdown-submenu dropstart">
                                                <a class="dropdown-item dropdown-toggle" href="#">Dropdown (start)</a>
                                                <ul class="dropdown-menu dropdown-menu-end" data-bs-popper="none">
                                                    <li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
                                                    <li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
                                                </ul>
                                            </li>
                                            <li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <!-- Nav item 2 Pages -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu" aria-labelledby="pagesMenu">
                                    <!-- Dropdown submenu -->
                                    <li class="dropdown-submenu dropend">
                                        <a class="dropdown-item dropdown-toggle" href="#">Course</a>
                                        <ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
                                            <li> <a class="dropdown-item" href="course-grid.html">Course Grid Classic</a></li>
                                            <li> <a class="dropdown-item" href="course-grid-2.html">Course Grid Minimal</a></li>
                                            <li> <hr class="dropdown-divider"></li>
                                            <li> <a class="dropdown-item" href="course-list.html">Course List Classic</a></li>
                                            <li> <a class="dropdown-item" href="course-list-2.html">Course List Minimal</a></li>
                                            <li> <hr class="dropdown-divider"></li>
                                            <li> <a class="dropdown-item" href="course-detail.html">Course Detail Classic</a></li>
                                            <li> <a class="dropdown-item" href="course-detail-min.html">Course Detail Minimal</a></li>
                                            <li> <a class="dropdown-item" href="course-detail-adv.html">Course Detail Advance</a></li>
                                            <li> <a class="dropdown-item" href="course-video-player.html">Course Full Screen Video</a></li>
                                        </ul>
                                    </li>

                                    <!-- Dropdown submenu -->
                                    <li class="dropdown-submenu dropend">
                                        <a class="dropdown-item dropdown-toggle" href="#">About</a>
                                        <ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
                                            <li> <a class="dropdown-item" href="about.html">About Us</a></li>
                                            <li> <a class="dropdown-item" href="contact-us.html">Contact Us</a></li>
                                            <li> <a class="dropdown-item" href="blog-grid.html">Blog Grid</a></li>
                                            <li> <a class="dropdown-item" href="blog-masonry.html">Blog Masonry</a></li>
                                            <li> <a class="dropdown-item" href="blog-detail.html">Blog Detail</a></li>
                                            <li> <a class="dropdown-item" href="pricing.html">Pricing</a></li>
                                        </ul>
                                    </li>

                                    <li> <a class="dropdown-item" href="instructor-list.html">Instructor List</a></li>
                                    <li> <a class="dropdown-item" href="instructor-single.html">Instructor Single</a></li>
                                    <li> <a class="dropdown-item" href="become-instructor.html">Become an Instructor</a></li>

                                    <!-- Dropdown submenu -->
                                    <li class="dropdown-submenu dropend">
                                        <a class="dropdown-item dropdown-toggle" href="#">Authentication</a>
                                        <ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
                                            <li> <a class="dropdown-item" href="sign-in.html">Sign In</a></li>
                                            <li> <a class="dropdown-item" href="sign-up.html">Sign Up</a></li>
                                            <li> <a class="dropdown-item" href="forgot-password.html">Forgot Password</a></li>
                                        </ul>
                                    </li>

                                    <li> <a class="dropdown-item" href="faq.html">FAQs</a></li>
                                    <li> <a class="dropdown-item" href="error-404.html">Error 404</a></li>
                                    <li> <a class="dropdown-item" href="coming-soon.html">Coming Soon</a></li>
                                    <li> <a class="dropdown-item" href="cart.html">Cart</a></li>
                                    <li> <a class="dropdown-item" href="checkout.html">Checkout</a></li>
                                    <li> <a class="dropdown-item" href="empty-cart.html">Empty Cart</a></li>
                                    <li> <a class="dropdown-item" href="wishlist.html">Wishlist</a></li>
                                </ul>
                            </li>

                            <!-- Nav item 3 Account -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="accounntMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Accounts</a>
                                <ul class="dropdown-menu" aria-labelledby="accounntMenu">
                                    <!-- Dropdown submenu -->
                                    <li class="dropdown-submenu dropend">
                                        <a class="dropdown-item dropdown-toggle" href="#"><i class="fas fa-user-tie fa-fw me-1"></i>Instructor</a>
                                        <ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
                                            <li> <a class="dropdown-item" href="instructor-dashboard.html"><i class="bi bi-grid-fill fa-fw me-1"></i>Dashboard</a> </li>
                                            <li> <a class="dropdown-item" href="instructor-manage-course.html"><i class="bi bi-basket-fill fa-fw me-1"></i>Courses</a> </li>
                                            <li> <a class="dropdown-item" href="instructor-create-course.html"><i class="bi bi-file-earmark-plus-fill fa-fw me-1"></i>Create Course</a> </li>
                                            <li> <a class="dropdown-item" href="course-added.html"><i class="bi bi-file-check-fill fa-fw me-1"></i>Course Added</a> </li>
                                            <li> <a class="dropdown-item" href="instructor-earning.html"><i class="fas fa-chart-line fa-fw me-1"></i>Earnings</a> </li>
                                            <li> <a class="dropdown-item" href="instructor-studentlist.html"><i class="fas fa-user-graduate fa-fw me-1"></i>Students</a> </li>
                                            <li> <a class="dropdown-item" href="instructor-order.html"><i class="bi bi-cart-check-fill fa-fw me-1"></i>Orders</a> </li>
                                            <li> <a class="dropdown-item" href="instructor-review.html"><i class="bi bi-star-fill fa-fw me-1"></i>Reviews</a> </li>
                                            <li> <a class="dropdown-item" href="instructor-payout.html"><i class="fas fa-wallet fa-fw me-1"></i>Payout</a> </li>
                                        </ul>
                                    </li>

                                    <!-- Dropdown submenu -->
                                    <li class="dropdown-submenu dropend">
                                        <a class="dropdown-item dropdown-toggle" href="#"><i class="fas fa-user-graduate fa-fw me-1"></i>Student</a>
                                        <ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
                                            <li> <a class="dropdown-item" href="student-dashboard.html"><i class="bi bi-grid-fill fa-fw me-1"></i>Dashboard</a> </li>
                                            <li> <a class="dropdown-item" href="student-subscription.html"><i class="bi bi-card-checklist fa-fw me-1"></i>My Subscriptions</a> </li>
                                            <li> <a class="dropdown-item" href="student-course-list.html"><i class="bi bi-basket-fill fa-fw me-1"></i>Courses</a> </li>
                                            <li> <a class="dropdown-item" href="student-payment-info.html"><i class="bi bi-credit-card-2-front-fill fa-fw me-1"></i>Payment Info</a> </li>
                                            <li> <a class="dropdown-item" href="student-bookmark.html"><i class="fas bi-cart-check-fill fa-fw me-1"></i>Wishlist</a> </li>
                                        </ul>
                                    </li>

                                    <li> <a class="dropdown-item" href="admin-dashboard.html"><i class="fas fa-user-cog fa-fw me-1"></i>Admin</a> </li>
                                    <li> <hr class="dropdown-divider"></li>
                                    <li> <a class="dropdown-item" href="instructor-edit-profile.html"><i class="fas fa-fw fa-edit me-1"></i>Edit Profile</a> </li>
                                    <li> <a class="dropdown-item" href="instructor-setting.html"><i class="fas fa-fw fa-cog me-1"></i>Settings</a> </li>
                                    <li> <a class="dropdown-item" href="instructor-delete-account.html"><i class="fas fa-fw fa-trash-alt me-1"></i>Delete Profile</a> </li>
                                </ul>
                            </li>

                            <!-- Nav item 4 Component-->
                            <li class="nav-item"><a class="nav-link" href="docs/alerts.html">Components</a></li>

                            <!-- Nav item 5 link-->
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" id="advanceMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-ellipsis-h"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end min-w-auto" data-bs-popper="none">
                                    <li> 
                                        <a class="dropdown-item" href="https://support.webestica.com/" target="_blank">
                                            <i class="text-warning fa-fw bi bi-life-preserver me-2"></i>Support
                                        </a> 
                                    </li>
                                    <li> 
                                        <a class="dropdown-item" href="docs/index.html" target="_blank">
                                            <i class="text-danger fa-fw bi bi-card-text me-2"></i>Documentation
                                        </a> 
                                    </li>
                                    <li> <hr class="dropdown-divider"></li>
                                    <li> 
                                        <a class="dropdown-item" href="rtl/index.html" target="_blank">
                                            <i class="text-info fa-fw bi bi-toggle-off me-2"></i>RTL demo
                                        </a> 
                                    </li>
                                    <li> 
                                        <a class="dropdown-item" href="https://themes.getbootstrap.com/store/webestica/" target="_blank">
                                            <i class="text-success fa-fw bi bi-cloud-download-fill me-2"></i>Buy Eduport!
                                        </a> 
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <!-- Nav Main menu END -->

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
                </div>
            </nav>
            <!-- Logo Nav END -->
        </header>
        <!-- Header END -->

        <!-- **************** MAIN CONTENT START **************** -->
        <main>

            <!-- =======================
            Page content START -->
            <section class="pt-5 pb-0">
                <div class="container">
                    <div class="row g-0 g-lg-5">

                        <!-- Left sidebar START -->
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-md-6 col-lg-12">
                                    <!-- Instructor image START -->
                                    <div class="card shadow p-2 mb-4 text-center">
                                        <div class="rounded-3">
                                            <!-- Image -->
                                            <img src="assets/images/instructor/07.jpg" class="card-img" alt="course image">
                                        </div>

                                        <!-- Card body -->
                                        <div class="card-body px-3">
                                            <h1 class="mb-0">${requestScope.mentor.name}</h1>
                                            <!-- Rating -->
                                            <ul class="list-inline mb-3">
                                                <li class="list-inline-item me-2 small">
                                                    <i class="fas fa-star text-warning"></i>
                                                </li>
                                                <li class="list-inline-item h6 fw-light mb-0">${starRate}/5.0</li>

                                                <li class="list-inline-item me-2 small">
                                                    <i class="fas fa-user-graduate text-info"></i>
                                                </li>
                                                <li class="list-inline-item h6 fw-light mb-0">${totalMentee}+</li>
                                            </ul>
                                        </div>
                                        <!-- Counter END -->
                                    </div>
                                </div>
                                <!-- Instructor image END -->
                            </div>

                            <div class="col-md-6 col-lg-12">
                                <div class="card card-body shadow p-4 mb-4">

                                    <!-- Education START -->
                                    <!-- Title -->
                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                        <!-- Title -->
                                        <h4 class="mb-0">Education</h4>

                                        <!-- Buttons -->
                                        <!-- Add Button -->
                                        <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#addEducationModal" title="Add Education">
                                            <i class="fas fa-plus"></i>
                                        </button>
                                    </div>


                                    <!-- Education item -->
                                    <c:forEach items="${cv.eduList}" var="edu">
                                        <div class="d-flex align-items-center justify-content-between mb-4">
                                            <span class="icon-md text-dark mb-0 bg-light rounded-3">
                                                <i class="fas fa-graduation-cap"></i>
                                            </span>
                                            <div class="ms-3 flex-grow-1">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <h6 class="mb-0">${edu.schoolName}</h6>
                                                    <!-- Buttons for Edit and Remove -->
                                                    <div>
                                                        <button type="button" 
                                                                class="btn btn-light p-0" 
                                                                title="Edit" 
                                                                data-bs-toggle="modal" 
                                                                data-bs-target="#editEducationModal" 
                                                                onclick="populateEditModal('${edu.eduId}', '${edu.schoolName}', '${edu.major}')">
                                                            <i class="fas fa-edit"></i>
                                                        </button>
                                                        <button type="button" 
                                                                class="btn btn-light p-0 ms-2" 
                                                                title="Remove"
                                                                data-bs-toggle="modal" 
                                                                data-bs-target="#removeEducationModal" 
                                                                onclick="populateRemoveModal('${edu.eduId}')">
                                                            <i class="fas fa-trash"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                <p class="mb-0 small">${edu.major}</p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <!-- Education END -->
                                    <hr> <!-- Divider -->

                                    <!-- Title -->
                                    <!-- Skills START -->
                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                        <!-- Title -->
                                        <h4 class="mb-3">Skills</h4>

                                        <!-- Buttons -->
                                        <!-- Add Button -->
                                        <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#addSkillModal" title="Add Skill">
                                            <i class="fas fa-plus"></i>
                                        </button>
                                    </div>
                                    <!-- Progress item -->
                                    <c:forEach items="${cv.cvSkillList}" var="skill">
                                        <div class="overflow-hidden mb-4">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <h6 class="uppercase">${skill.skill.skillName}</h6>
                                                <button type="button" 
                                                        class="btn btn-light p-0 ms-2" 
                                                        title="Remove"
                                                        data-bs-toggle="modal" 
                                                        data-bs-target="#removeSkillModal" 
                                                        onclick="removeSkillModal('${skill.cvSkillId}')">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <!-- Progress item -->
                                    <!-- Skills END -->

                                </div>
                            </div>
                        </div> <!-- Row End -->

                        <!-- Left sidebar END -->

                        <!-- Main content START -->
                        <div class="col-lg-8">
                            <!-- Title -->
                            <c:if test="${!cv.getIntroduction().isEmpty()}">
                                <h5 class="mb-0">Hi, I am</h5>
                                <div class="d-flex align-items-center justify-content-between">
                                    <h1 class="mb-0">${requestScope.mentor.name}</h1>

                                    <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#editIntroductionModal">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </div>
                                <!-- Content -->
                                <p class="mt-4">${cv.getIntroduction()}</p>
                            </c:if>    
                            <c:if test="${cv.getIntroduction().isEmpty()}">
                                <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#addIntroductionModal">
                                    <i class="fas fa-plus"></i>
                                </button>
                            </c:if>
                            <!-- Personal info -->
                            <ul class="list-group list-group-borderless">
                                <li class="list-group-item px-0">
                                    <span class="h6 fw-light"><i class="fas fa-fw fa-map-marker-alt text-primary me-1 me-sm-3"></i>Address:</span>
                                    <span>${mentor.address}</span>
                                </li>
                                <li class="list-group-item px-0">
                                    <span class="h6 fw-light"><i class="fas fa-fw fa-envelope text-primary me-1 me-sm-3"></i>Email:</span>
                                    <span>${mentor.gmail}</span>
                                </li>
                                <li class="list-group-item px-0">
                                    <span class="h6 fw-light"><i class="fas fa-fw fa-headphones text-primary me-1 me-sm-3"></i>Phone number:</span>
                                    <span>${mentor.phone}</span>
                                </li>
                                <!--                                <li class="list-group-item px-0">
                                                                    <span class="h6 fw-light"><i class="fas fa-fw fa-globe text-primary me-1 me-sm-3"></i>Website:</span>
                                                                    <span>https://eduport.webestica.com/</span>
                                                                </li>-->
                            </ul>
                        </div>
                        <!-- Main content END -->
                    </div>
                </div><!-- Row END -->
            </section>
            <!-- =======================
            Page content END -->

            <!--Add introduction Modal--> 
            <div class="modal fade" id="addIntroductionModal" tabindex="-1" aria-labelledby="addIntroductionLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addIntroductionModalLabel">Add Introduction</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="addIntroductionForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="addIntro">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.user_id}">
                                <div class="form-group">
                                    <label for="introduction">Introduction</label>
                                    <input type="text" class="form-control" id="introduction" name="introduction" placeholder="Enter introduction" required>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="addIntroductionForm" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Edit introduction Modal--> 
            <div class="modal fade" id="editIntroductionModal" tabindex="-1" aria-labelledby="editIntroductionModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editIntroductionModalLabel">Edit Introduction</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="editIntroductionForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="editIntro">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.user_id}">
                                <div class="form-group">
                                    <label for="introduction">Introduction:</label>
                                    <textarea name="introduction" style="height: 200px;width: 466px;" required="">${cv.getIntroduction()}</textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="editIntroductionForm" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Add Education Modal START-->
            <div class="modal fade" id="addEducationModal" tabindex="-1" aria-labelledby="addEducationModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addEducationModalLabel">Add Education</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="addEducationForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="addEdu">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.user_id}">
                                <div class="form-group">
                                    <label for="schoolName">School Name</label>
                                    <input type="text" class="form-control" id="schoolName" name="schoolName" placeholder="Enter school name" required>
                                </div>
                                <div class="form-group mt-3">
                                    <label for="major">Major</label>
                                    <input type="text" class="form-control" id="major" name="major" placeholder="Enter major" required>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="addEducationForm" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Add Education Modal END-->

            <!--Edit Education Model START-->
            <div class="modal fade" id="editEducationModal" tabindex="-1" aria-labelledby="editEducationModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editEducationModalLabel">Edit Education</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="editEducationForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="editEdu">
                                <input type="hidden" id="editEduID" name="eduID">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.user_id}">
                                <div class="form-group">
                                    <label for="editSchoolName">School Name</label>
                                    <input type="text" class="form-control" id="editSchoolName" name="schoolName" required>
                                </div>
                                <div class="form-group mt-3">
                                    <label for="editMajor">Major</label>
                                    <input type="text" class="form-control" id="editMajor" name="major" required>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="editEducationForm" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Edit Education Model END-->

            <!--Remove Education Model START-->
            <div class="modal fade" id="removeEducationModal" tabindex="-1" aria-labelledby="removeEducationModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="removeEducationModalLabel">Remove Education</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="removeEducationForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="removeEdu">
                                <input type="hidden" id="removeEduID" name="eduID">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.user_id}">
                                Are you sure to remove this?
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="removeEducationForm" class="btn btn-primary">Yes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Remove Education Model END-->


            <!--Skill Model-->
            <!--Add skill Modal -->
            <div class="modal fade" id="addSkillModal" tabindex="-1" aria-labelledby="addSkillModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addSkillModalLabel">Select Skill</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="addSkillForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="addSkill">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.user_id}">
                                <input type="hidden" name="cvID" value="${cv.cvId}">
                                <!-- Dropdown list for skills -->
                                <select class="form-select" id="skillSelect" aria-label="Select a skill" name="skillId">
                                    <option selected>Select a skill</option>
                                    <c:forEach items="${skills}" var="skill">
                                        <option value="${skill.skillId}">${skill.skillName}</option>
                                    </c:forEach>
                                </select>
                            </form>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" form="addSkillForm">Save Skill</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Remove Skill Model-->
            <div class="modal fade" id="removeSkillModal" tabindex="-1" aria-labelledby="removeSkillModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="removeSkillModalLabel">Remove Skill</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="removeSkillForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="removeSkill">
                                <input type="hidden" id="removeSkillID" name="cvSkillId">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.user_id}">
                                Are you sure to remove this?
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="removeSkillForm" class="btn btn-primary">Yes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- =======================
            Related instructor START -->
            <section>
                <div class="container">
                    <!-- Title -->
                    <div class="row mb-4">
                        <h2 class="mb-0">Related Mentors</h2>
                    </div>

                    <!-- Slider START -->
                    <div class="tiny-slider arrow-round arrow-creative arrow-blur arrow-hover">
                        <div class="tiny-slider-inner" data-autoplay="false" data-arrow="true" data-dots="false" data-items="4" data-items-lg="3" data-items-md="2" data-items-xs="1">

                            <!-- Card item START -->
                            <!--1-->
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
                            <!--2-->
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
                            <!--3-->
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
                            <!--4-->
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
                            <!--5-->
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
                            <!--6-->
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
        <!-- Back to top -->
        <div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

        <!-- Bootstrap JS -->
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Bootstrap JavaScript Bundle (bao gồm Popper.js) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Vendors -->
        <script src="assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
        <script src="assets/vendor/tiny-slider/tiny-slider.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>
        <script>
                                                            function populateEditModal(id, schoolName, major) {
                                                                document.getElementById('editEduID').value = id;
                                                                document.getElementById('editSchoolName').value = schoolName;
                                                                document.getElementById('editMajor').value = major;
                                                            }
                                                            function populateRemoveModal(id) {
                                                                document.getElementById('removeEduID').value = id;
                                                            }
                                                            function removeSkillModal(id) {
                                                                document.getElementById('removeSkillID').value = id;
                                                            }
        </script>
    </body>

    <!-- Mirrored from eduport.webestica.com/instructor-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:19:59 GMT -->
</html>