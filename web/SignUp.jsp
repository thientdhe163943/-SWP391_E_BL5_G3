<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:01 GMT -->
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

        <!-- **************** MAIN CONTENT START **************** -->
        <main>
            <section class="p-0 d-flex align-items-center position-relative overflow-hidden">

                <div class="container-fluid">
                    <div class="row">
                        <!-- left -->
                        <div class="col-12 col-lg-6 d-md-flex align-items-center justify-content-center bg-primary bg-opacity-10 vh-lg-100">
                            <div class="p-3 p-lg-5">
                                <!-- Title -->
                                <div class="text-center">
                                    <h2 class="fw-bold">Welcome to our largest community</h2>
                                    <p class="mb-0 h6 fw-light">Let's learn something new today!</p>
                                </div>
                                <!-- SVG Image -->
                                <img src="assets/images/element/02.svg" class="mt-5" alt="">
                                <!-- Info -->
                                <div class="d-sm-flex mt-5 align-items-center justify-content-center">
                                    <!-- Avatar group -->
                                    <ul class="avatar-group mb-2 mb-sm-0">
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="assets/images/avatar/01.jpg" alt="avatar">
                                        </li>
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="assets/images/avatar/02.jpg" alt="avatar">
                                        </li>
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="assets/images/avatar/03.jpg" alt="avatar">
                                        </li>
                                        <li class="avatar avatar-sm">
                                            <img class="avatar-img rounded-circle" src="assets/images/avatar/04.jpg" alt="avatar">
                                        </li>
                                    </ul>
                                    <!-- Content -->
                                    <p class="mb-0 h6 fw-light ms-0 ms-sm-3">4k+ Students joined us, now it's your turn.</p>
                                </div>
                            </div>
                        </div>

                        <!-- Right -->
                        <div class="col-12 col-lg-6 m-auto">
                            <div class="row my-5">
                                <div class="col-sm-10 col-xl-8 m-auto">
                                    <!-- Title -->
                                  

                                    <!-- Form START -->
                                    <form action="signup" method="post" class="mx-auto">
                                        <div class="bg-white p-5 form-login">
                                            <h1 class="text-center fw-bold">Sign up</h1>
                                            <div class="">
                                                <div class="d-flex mt-5">
                                                    <div class="me-3">
                                                        <div class="d-flex align-items-center fs-4 mt-3">
                                                            <input type="text" placeholder="Username" 
                                                                   style="${(username.equals("error")) ? "border-bottom: 1px solid red !important;" : ''}"
                                                                   value="${!username.equals("error")?username:""}" name="username"
                                                                   class="w-100 py-4 outline-0 border-0 ms-3 border-bottom" />
                                                        </div>
                                                    </div>

                                                </div>
                                             
                                               
                                                <div class="border-bottom mt-5">
                                                    <div class="d-flex align-items-center fs-4 mt-3">
                                                        <i class='bx bx-lock'></i>
                                                        <input type="password" placeholder="Password" 
                                                               ${password.equals("error")?"style='style=border-bottom: 1px solid red !important;'":""}
                                                               value="${!password.equals("error")?password:""}"
                                                               name="password"
                                                               class="w-100 py-4 outline-0 border-0 ms-3" />
                                                    </div>
                                                </div>
                                                <div class="border-bottom mt-5">
                                                    <div class="d-flex align-items-center fs-4 mt-3">
                                                        <i class='bx bx-lock'></i>
                                                        <input type="password" placeholder="Confirm Password" name="confirmPassword"
                                                               class="w-100 py-4 outline-0 border-0 ms-3" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-center mt-3 fs-5">
                                                Already have an account?
                                                <a href="login" class="text-black-weak text-info">Login</a>
                                            </div>
                                            <button type="submit" class="border-0 rounded-xl fs-4 fw-bold w-100
                                                    text-white py-3 mt-3 bg-red text-center bg-danger">
                                                Sign up
                                            </button>
                                            <p class="text-center mt-3" style="color: red">${message}</p>
                                        </div>
                                    </form>
                                    <!-- Form END -->

                                   
                                </div>
                            </div> <!-- Row END -->
                        </div>
                    </div> <!-- Row END -->
                </div>
            </section>
        </main>
        <!-- **************** MAIN CONTENT END **************** -->

        <!-- Back to top -->
        <div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

        <!-- Bootstrap JS -->
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>

    <!-- Mirrored from eduport.webestica.com/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:20:02 GMT -->
</html>