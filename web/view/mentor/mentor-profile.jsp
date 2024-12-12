<%-- 
    Document   : mentor-profile
    Created on : Dec 10, 2024, 3:20:28 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/instructor-edit-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:13 GMT -->
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

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">

    </head>

    <body>

        <!-- Header START -->
        <jsp:include page="header.jsp"></jsp:include>

        <!-- **************** MAIN CONTENT START **************** -->
        <main>

            <!-- =======================
            Page Banner START -->
        <jsp:include page="mentor-banner.jsp"></jsp:include>
            <!-- =======================
            Page Banner END -->

            <!-- =======================
            Page content START -->
            <section class="pt-0">
                <div class="container">
                    <div class="row">

                        <!-- Right sidebar START -->
                        <jsp:include page="mentor-sidebar.jsp"/>
                        <!-- Right sidebar END -->

                        <!-- Main content START -->
                        <div class="col-xl-9">
                            <!-- Edit profile START -->
                            <div class="card bg-transparent border rounded-3">
                                <!-- Card header -->
                                <div class="card-header bg-transparent border-bottom">
                                    <h3 class="card-header-title mb-0">Edit Profile</h3>
                                </div>
                                <!-- Card body START -->
                                <div class="card-body">
                                    <!-- Form -->
                                    <form class="row g-4">

                                        <!-- Profile picture -->
                                        <div class="col-12 justify-content-center align-items-center">
                                            <label class="form-label">Profile picture</label>
                                            <div class="d-flex align-items-center">
                                                <label class="position-relative me-4" for="uploadfile-1" title="Replace this pic">
                                                    <!-- Avatar place holder -->
                                                    <span class="avatar avatar-xl">
                                                        <img id="uploadfile-1-preview" class="avatar-img rounded-circle border border-white border-3 shadow" src="assets/images/avatar/07.jpg" alt="">
                                                    </span>
                                                    <!-- Remove btn -->
                                                    <button type="button" class="uploadremove"><i class="bi bi-x text-white"></i></button>
                                                </label>
                                                <!-- Upload button -->
                                                <label class="btn btn-primary-soft mb-0" for="uploadfile-1">Change</label>
                                                <input id="uploadfile-1" class="form-control d-none" type="file">
                                            </div>
                                        </div>

                                        <!-- Full name -->
                                        <div class="col-12">
                                            <label class="form-label">Full name</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="Lori" placeholder="First name">
                                                <input type="text" class="form-control" value="Stevens" placeholder="Last name">
                                            </div>
                                        </div>

                                        <!-- Username -->
                                        <div class="col-md-6">
                                            <label class="form-label">Username</label>
                                            <div class="input-group">
                                                <span class="input-group-text">Eduport.com</span>
                                                <input type="text" class="form-control" value="loristev">
                                            </div>
                                        </div>

                                        <!-- Email id -->
                                        <div class="col-md-6">
                                            <label class="form-label">Email id</label>
                                            <input class="form-control" type="email" value="example@gmail.com"  placeholder="Email">
                                        </div>

                                        <!-- Phone number -->
                                        <div class="col-md-6">
                                            <label class="form-label">Phone number</label>
                                            <input type="text" class="form-control" value="1234567890" placeholder="Phone number">
                                        </div>

                                        <!-- Location -->
                                        <div class="col-md-6">
                                            <label class="form-label">Location</label>
                                            <input class="form-control" type="text" value="California">
                                        </div>

                                        <!-- About me -->
                                        <div class="col-12">
                                            <label class="form-label">About me</label>
                                            <textarea class="form-control" rows="3">I’ve found a way to get paid for my favorite hobby, and do so while following my dream of traveling the world.</textarea>
                                            <div class="form-text">Brief description for your profile.</div> 
                                        </div>

                                        <!-- Education -->
                                        <div class="col-12">
                                            <label class="form-label">Education</label>
                                            <input class="form-control mb-2" type="text" value="Bachelor in Computer Graphics">
                                            <input class="form-control mb-2" type="text" value="Masters in Computer Graphics">
                                            <button class="btn btn-sm btn-light mb-0"><i class="bi bi-plus me-1"></i>Add more</button>
                                        </div>

                                        <!-- Save button -->
                                        <div class="d-sm-flex justify-content-end">
                                            <button type="button" class="btn btn-primary mb-0">Save changes</button>
                                        </div>
                                    </form>
                                </div>
                                <!-- Card body END -->
                            </div>
                            <!-- Edit profile END -->

                            <div class="row g-4 mt-3">
                                <!-- Linked account START -->
                                <div class="col-lg-6">
                                    <div class="card bg-transparent border rounded-3">
                                        <!-- Card header -->
                                        <div class="card-header bg-transparent border-bottom">
                                            <h5 class="card-header-title mb-0">Linked account</h5>
                                        </div>
                                        <!-- Card body START -->
                                        <div class="card-body pb-0">
                                            <!-- Google -->
                                            <div class="position-relative mb-4 d-sm-flex bg-success bg-opacity-10 border border-success p-3 rounded">
                                                <!-- Title and content -->
                                                <h2 class="fs-1 mb-0 me-3"><i class="fab fa-google text-google-icon"></i></h2>
                                                <div>
                                                    <div class="position-absolute top-0 start-100 translate-middle bg-white rounded-circle lh-1 h-20px">
                                                        <i class="bi bi-check-circle-fill text-success fs-5"></i>
                                                    </div>
                                                    <h6 class="mb-1">Google</h6>
                                                    <p class="mb-1 small">You are successfully connected to your Google account</p>
                                                    <!-- Button -->
                                                    <button type="button" class="btn btn-sm btn-danger mb-0">Invoke</button>
                                                    <a href="#" class="btn btn-sm btn-link text-body mb-0">Learn more</a>
                                                </div>
                                            </div>

                                            <!-- Linkedin -->
                                            <div class="mb-4 d-sm-flex border p-3 rounded">
                                                <!-- Title and content -->
                                                <h2 class="fs-1 mb-0 me-3"><i class="fab fa-linkedin-in text-linkedin"></i></h2>
                                                <div>
                                                    <h6 class="mb-1">Linkedin</h6>
                                                    <p class="mb-1 small">Connect with Linkedin account for a personalized experience</p>
                                                    <!-- Button -->
                                                    <button type="button" class="btn btn-sm btn-primary mb-0">Connect Linkedin</button>
                                                    <a href="#" class="btn btn-sm btn-link text-body mb-0">Learn more</a>
                                                </div>
                                            </div>

                                            <!-- Facebook -->
                                            <div class="mb-4 d-sm-flex border p-3 rounded">
                                                <!-- Title and content -->
                                                <h2 class="fs-1 mb-0 me-3"><i class="fab fa-facebook text-facebook"></i></h2>
                                                <div>
                                                    <h6 class="mb-1">Facebook</h6>
                                                    <p class="mb-1 small">Connect with Facebook account for a personalized experience</p>
                                                    <!-- Button -->
                                                    <button type="button" class="btn btn-sm btn-primary mb-0">Connect Facebook</button>
                                                    <a href="#" class="btn btn-sm btn-link text-body mb-0">Learn more</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Card body END -->
                                    </div>
                                </div>
                                <!-- Linked account end -->

                                <!-- Social media profile START -->
                                <div class="col-lg-6">
                                    <div class="card bg-transparent border rounded-3">
                                        <!-- Card header -->
                                        <div class="card-header bg-transparent border-bottom">
                                            <h5 class="card-header-title mb-0">Social media profile</h5>
                                        </div>
                                        <!-- Card body START -->
                                        <div class="card-body">
                                            <!-- Facebook username -->
                                            <div class="mb-3">
                                                <label class="form-label"><i class="fab fa-facebook text-facebook me-2"></i>Enter facebook username</label>
                                                <input class="form-control" type="text" value="loristev" placeholder="Enter username">
                                            </div>

                                            <!-- Twitter username -->
                                            <div class="mb-3">
                                                <label class="form-label"><i class="bi bi-twitter text-twitter me-2"></i>Enter twitter username</label>
                                                <input class="form-control" type="text" value="loristev" placeholder="Enter username">
                                            </div>

                                            <!-- Instagram username -->
                                            <div class="mb-3">
                                                <label class="form-label"><i class="fab fa-instagram text-instagram-gradient me-2"></i>Enter instagram username</label>
                                                <input class="form-control" type="text" value="loristev" placeholder="Enter username">
                                            </div>

                                            <!-- Youtube -->
                                            <div class="mb-3">
                                                <label class="form-label"><i class="fab fa-youtube text-youtube me-2"></i>Add your youtube profile URL</label>
                                                <input class="form-control" type="text" value="https://www.youtube.com/in/Eduport-05620abc" placeholder="Enter username">
                                            </div>

                                            <!-- Button -->
                                            <div class="d-flex justify-content-end mt-4">
                                                <button type="button" class="btn btn-primary mb-0">Save changes</button>
                                            </div>
                                        </div>
                                        <!-- Card body END -->
                                    </div>
                                </div>
                                <!-- Social media profile END -->

                                <!-- EMail change START -->
                                <div class="col-lg-6">
                                    <div class="card bg-transparent border rounded-3">
                                        <!-- Card header -->
                                        <div class="card-header bg-transparent border-bottom">
                                            <h5 class="card-header-title mb-0">Update email</h5>
                                        </div>
                                        <!-- Card body -->
                                        <div class="card-body">
                                            <p>Your current email address is <span class="text-primary">example@gmail.com</span></p>
                                            <!-- Email -->
                                            <form>
                                                <label class="form-label">Enter your new email id</label>
                                                <input class="form-control" type="email" placeholder="Enter new email">
                                                <div class="d-flex justify-content-end mt-4">
                                                    <button type="button" class="btn btn-primary mb-0">Update email</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- EMail change end -->

                                <!-- Password change START -->
                                <div class="col-lg-6">
                                    <div class="card border bg-transparent rounded-3">
                                        <!-- Card header -->
                                        <div class="card-header bg-transparent border-bottom">
                                            <h5 class="card-header-title mb-0">Update password</h5>
                                        </div>
                                        <!-- Card body START -->
                                        <div class="card-body">
                                            <!-- Current password -->
                                            <div class="mb-3">
                                                <label class="form-label">Current password</label>
                                                <input class="form-control" type="password" placeholder="Enter current password">
                                            </div>
                                            <!-- New password -->
                                            <div class="mb-3">
                                                <label class="form-label"> Enter new password</label>
                                                <div class="input-group">
                                                    <input class="form-control" type="password" placeholder="Enter new password">
                                                    <span class="input-group-text p-0 bg-transparent">
                                                        <i class="far fa-eye cursor-pointer p-2 w-40px"></i>
                                                    </span>
                                                </div>
                                                <div class="rounded mt-1" id="psw-strength"></div>
                                            </div>
                                            <!-- Confirm password -->
                                            <div>
                                                <label class="form-label">Confirm new password</label>
                                                <input class="form-control" type="password" placeholder="Enter new password">
                                            </div>
                                            <!-- Button -->
                                            <div class="d-flex justify-content-end mt-4">
                                                <button type="button" class="btn btn-primary mb-0">Change password</button>
                                            </div>
                                        </div>
                                        <!-- Card body END -->
                                    </div>
                                </div>
                                <!-- Password change end -->
                            </div>
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

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>

    <!-- Mirrored from eduport.webestica.com/instructor-edit-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:13 GMT -->
</html>
