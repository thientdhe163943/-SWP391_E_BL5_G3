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

<%@include file="./Header.jsp" %>   

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
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
								<img class="avatar-img rounded-circle border border-white border-3 shadow" src="assets/images/avatar/01.jpg" alt="">
							</div>
						</div>
						<!-- Profile info -->
						<div class="col d-md-flex justify-content-between align-items-center mt-4">
							<div>
								<h1 class="my-1 fs-4">Lori Stevens <i class="bi bi-patch-check-fill text-info small"></i></h1>
								<ul class="list-inline mb-0">
									<li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-2"></i>4.5/5.0</li>
									<li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-user-graduate text-orange me-2"></i>12k Enrolled Students</li>
									<li class="list-inline-item h6 fw-light me-3 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-2"></i>25 Courses</li>
								</ul>
							</div>
							<!-- Button -->
							<div class="d-flex align-items-center mt-2 mt-md-0">
								<a href="instructor-create-course.html" class="btn btn-success mb-0">Create a course</a>
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

<!-- =======================
Page content START -->
<section class="pt-0">
	<div class="container">
		<div class="row">

			<!-- Right sidebar START -->
			<div class="col-xl-3">
				<!-- Responsive offcanvas body START -->
				<nav class="navbar navbar-light navbar-expand-xl mx-0">
					<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
						<!-- Offcanvas header -->
						<div class="offcanvas-header bg-light">
							<h5 class="offcanvas-title" id="offcanvasNavbarLabel">My profile</h5>
							<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
						</div>
						<!-- Offcanvas body -->
						<div class="offcanvas-body p-3 p-xl-0">
							<div class="bg-dark border rounded-3 pb-0 p-3 w-100">
								<!-- Dashboard menu -->
								<div class="list-group list-group-dark list-group-borderless">
									<a class="list-group-item" href="instructor-dashboard.html"><i class="bi bi-ui-checks-grid fa-fw me-2"></i>Dashboard</a>
									<a class="list-group-item" href="instructor-manage-course.html"><i class="bi bi-basket fa-fw me-2"></i>My Courses</a>
									<a class="list-group-item" href="instructor-earning.html"><i class="bi bi-graph-up fa-fw me-2"></i>Earnings</a>
									<a class="list-group-item" href="instructor-studentlist.html"><i class="bi bi-people fa-fw me-2"></i>Students</a>
									<a class="list-group-item" href="instructor-order.html"><i class="bi bi-folder-check fa-fw me-2"></i>Orders</a>
									<a class="list-group-item" href="instructor-review.html"><i class="bi bi-star fa-fw me-2"></i>Reviews</a>
									<a class="list-group-item active" href="instructor-edit-profile.html"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit Profile</a>
									<a class="list-group-item" href="instructor-payout.html"><i class="bi bi-wallet2 fa-fw me-2"></i>Payouts</a>
									<a class="list-group-item" href="instructor-setting.html"><i class="bi bi-gear fa-fw me-2"></i>Settings</a>
									<a class="list-group-item" href="instructor-delete-account.html"><i class="bi bi-trash fa-fw me-2"></i>Delete Profile</a>
									<a class="list-group-item text-danger bg-danger-soft-hover" href="sign-in.html"><i class="fas fa-sign-out-alt fa-fw me-2"></i>Sign Out</a>
								</div>
							</div>
						</div>
					</div>
				</nav>
				<!-- Responsive offcanvas body END -->
			</div>
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
								<textarea class="form-control" rows="3">I?ve found a way to get paid for my favorite hobby, and do so while following my dream of traveling the world.</textarea>
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
					Copyrights �2021 <a href="#" class="text-reset btn-link">Eduport</a>. All rights reserved.
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