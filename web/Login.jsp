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
        <style>
            /* Container styling */
            .form-login {
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                max-width: 450px;
                margin: auto;
            }

            .form-login h1 {
                font-size: 2rem;
                margin-bottom: 1.5rem;
                color: #333;
            }

            /* Input styling */
            .form-login input {
                border: 1px solid #ddd;
                border-radius: 5px;
                padding: 10px;
                font-size: 1rem;
            }

            .form-login input:focus {
                border-color: #007bff;
                outline: none;
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }

            /* Button styling */
            .form-login button {
                background: #007bff;
                color: #fff;
                border: none;
                border-radius: 5px;
                padding: 10px 20px;
                font-size: 1rem;
                transition: background 0.3s ease;
            }

            .form-login button:hover {
                background: #0056b3;
            }

            /* Link styling */
            .form-login a {
                color: #007bff;
                text-decoration: none;
            }

            .form-login a:hover {
                text-decoration: underline;
            }

            /* Avatar group styling */
            .avatar-group img {
                border: 2px solid #fff;
                margin-left: -10px;
            }
        </style>
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

                        <div class="bg-white p-5 form-login">
                            <form action="login" method="post" class="mx-auto">
                                <h1 class="text-center fw-bold">Login</h1>

                                <!-- Email input -->
                                <div class="mb-4">
                                    <label for="email" class="fw-bold">Email</label>
                                    <div class="input-group mt-2">
                                        <span class="input-group-text bg-light border-0">
                                            <i class='bx bx-user'></i>
                                        </span>
                                        <input type="email" id="email" name="email" placeholder="Enter your email" class="form-control" required />
                                    </div>
                                </div>

                                <!-- Password input -->
                                <div class="mb-4">
                                    <label for="password" class="fw-bold">Password</label>
                                    <div class="input-group mt-2">
                                        <span class="input-group-text bg-light border-0">
                                            <i class='bx bx-lock'></i>
                                        </span>
                                        <input type="password" id="password" name="password" placeholder="Enter your password" class="form-control" required />
                                    </div>
                                </div>

                                <!-- Forgot password and Sign up links -->
                                <div class="d-flex justify-content-between align-items-center">
                                    <a href="forgotPassword.jsp">Forgot Password?</a>
                                    <a href="signup" class="text-info">Sign up</a>
                                </div>

                                <!-- Submit button -->
                                <button type="submit" class="btn w-100 mt-4">Submit</button>
                            </form>
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