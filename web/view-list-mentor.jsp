<%-- 
    Document   : view-list-mentor
    Created on : Dec 2, 2024, 5:04:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from eduport.webestica.com/admin-instructor-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:21:11 GMT -->
<head>
	<title>Eduport- LMS, Education and Course Theme</title>

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
	<link rel="stylesheet" type="text/css" href="assets/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">

	<!-- Theme CSS -->
	<link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">

</head>

<body>


<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- Sidebar START -->
<nav class="navbar sidebar navbar-expand-xl navbar-dark bg-dark">

	<!-- Navbar brand for xl START -->
	<div class="d-flex align-items-center">
		<a class="navbar-brand" href="index-2.html">
			<img class="navbar-brand-item" src="assets/images/logo-light.svg" alt="">
		</a>
	</div>
	<!-- Navbar brand for xl END -->
	
	<div class="offcanvas offcanvas-start flex-row custom-scrollbar h-100" data-bs-backdrop="true" tabindex="-1" id="offcanvasSidebar">
		<div class="offcanvas-body sidebar-content d-flex flex-column bg-dark">

			<!-- Sidebar menu START -->
			<ul class="navbar-nav flex-column" id="navbar-sidebar">
				
				<!-- Menu item 1 -->
				<li class="nav-item"><a href="admin-dashboard.html" class="nav-link"><i class="bi bi-house fa-fw me-2"></i>Dashboard</a></li>
				
				<!-- Title -->
				<li class="nav-item ms-2 my-2">Pages</li>

				<!-- menu item 2 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#collapsepage" role="button" aria-expanded="false" aria-controls="collapsepage">
						<i class="bi bi-basket fa-fw me-2"></i>Courses
					</a>
					<!-- Submenu -->
					<ul class="nav collapse flex-column" id="collapsepage" data-bs-parent="#navbar-sidebar">
						<li class="nav-item"> <a class="nav-link" href="admin-course-list.html">All Courses</a></li>
						<li class="nav-item"> <a class="nav-link" href="admin-course-category.html">Course Category</a></li>
						<li class="nav-item"> <a class="nav-link" href="admin-course-detail.html">Course Detail</a></li>
					</ul>
				</li>

				<!-- Menu item 3 -->
				<li class="nav-item"> <a class="nav-link" href="view-list-mentee.jsp"><i class="fas fa-user-graduate fa-fw me-2"></i>Mentee</a></li>

				<!-- Menu item 4 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#collapseinstructors" role="button" aria-expanded="true" aria-controls="collapseinstructors">
						<i class="fas fa-user-tie fa-fw me-2"></i>Mentors
					</a>
					<!-- Submenu -->
					<ul class="nav collapse flex-column show" id="collapseinstructors" data-bs-parent="#navbar-sidebar">
						<li class="nav-item"> <a class="nav-link active" href="view-list-mentor.jsp">Mentors</a></li>
						<li class="nav-item"> <a class="nav-link" href="view-mentor-detail.jsp">Mentor Detail</a></li>
						<li class="nav-item"> 
							<a class="nav-link" href="admin-instructor-request.html">Mentor requests
								<span class="badge bg-success text-white rounded-circle ms-2">2</span>
							</a>
						</li>
					</ul>
				</li>
				
				<!-- Menu item 5 -->
				<li class="nav-item"> <a class="nav-link" href="admin-review.html"><i class="far fa-comment-dots fa-fw me-2"></i>Reviews</a></li>

				<!-- Menu item 6 -->
				<li class="nav-item"> <a class="nav-link" href="admin-earning.html"><i class="far fa-chart-bar fa-fw me-2"></i>Earnings</a></li>

				<!-- Menu item 7 -->
				<li class="nav-item"> <a class="nav-link" href="admin-setting.html"><i class="fas fa-user-cog fa-fw me-2"></i>Admin Settings</a></li>

				<!-- Menu item 8 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#collapseauthentication" role="button" aria-expanded="false" aria-controls="collapseauthentication">
						<i class="bi bi-lock fa-fw me-2"></i>Authentication
					</a>
					<!-- Submenu -->
					<ul class="nav collapse flex-column" id="collapseauthentication" data-bs-parent="#navbar-sidebar">
						<li class="nav-item"> <a class="nav-link" href="sign-up.html">Sign Up</a></li>
						<li class="nav-item"> <a class="nav-link" href="sign-in.html">Sign In</a></li>
						<li class="nav-item"> <a class="nav-link" href="forgot-password.html">Forgot Password</a></li>
						<li class="nav-item"> <a class="nav-link" href="admin-error-404.html">Error 404</a></li>
					</ul>
				</li>

				<!-- Title -->
				<li class="nav-item ms-2 my-2">Documentation</li>

				<!-- Menu item 9 -->
				<li class="nav-item"> <a class="nav-link" href="docs/index.html"><i class="far fa-clipboard fa-fw me-2"></i>Documentation</a></li>

				<!-- Menu item 10 -->
				<li class="nav-item"> <a class="nav-link" href="docs/changelog.html"><i class="fas fa-sitemap fa-fw me-2"></i>Changelog</a></li>
			</ul>
			<!-- Sidebar menu end -->

			<!-- Sidebar footer START -->
			<div class="px-3 mt-auto pt-3">
				<div class="d-flex align-items-center justify-content-between text-primary-hover">
						<a class="h5 mb-0 text-body" href="admin-setting.html" data-bs-toggle="tooltip" data-bs-placement="top" title="Settings">
							<i class="bi bi-gear-fill"></i>
						</a>
						<a class="h5 mb-0 text-body" href="index-2.html" data-bs-toggle="tooltip" data-bs-placement="top" title="Home">
							<i class="bi bi-globe"></i>
						</a>
						<a class="h5 mb-0 text-body" href="sign-in.html" data-bs-toggle="tooltip" data-bs-placement="top" title="Sign out">
							<i class="bi bi-power"></i>
						</a>
				</div>
			</div>
			<!-- Sidebar footer END -->
			
		</div>
	</div>
</nav>
<!-- Sidebar END -->

<!-- Page content START -->
<div class="page-content">
	
	<!-- Top bar START -->
	<nav class="top-bar navbar-light border-bottom py-0 py-xl-3">
		<div class="container-fluid p-0">
			<div class="d-flex align-items-center w-100">

				<!-- Logo START -->
				<div class="d-flex align-items-center d-xl-none">
					<a class="navbar-brand" href="index-2.html">
						<img class="light-mode-item navbar-brand-item h-30px" src="assets/images/logo-mobile.svg" alt="">
						<img class="dark-mode-item navbar-brand-item h-30px" src="assets/images/logo-mobile-light.svg" alt="">
					</a>
				</div>
				<!-- Logo END -->

				<!-- Toggler for sidebar START -->
				<div class="navbar-expand-xl sidebar-offcanvas-menu">
					<button class="navbar-toggler me-auto" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar" aria-expanded="false" aria-label="Toggle navigation" data-bs-auto-close="outside">
						<i class="bi bi-text-right fa-fw h2 lh-0 mb-0 rtl-flip" data-bs-target="#offcanvasMenu"> </i>
					</button>
				</div>
				<!-- Toggler for sidebar END -->
				
				<!-- Top bar left -->
				<div class="navbar-expand-lg ms-auto ms-xl-0">
					
					<!-- Toggler for menubar START -->
					<button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTopContent" aria-controls="navbarTopContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-animation">
							<span></span>
							<span></span>
							<span></span>
						</span>
					</button>
					<!-- Toggler for menubar END -->

					<!-- Topbar menu START -->
					<div class="collapse navbar-collapse w-100" id="navbarTopContent">
						<!-- Top search START -->
						<div class="nav my-3 my-xl-0 flex-nowrap align-items-center">
							<div class="nav-item w-100">
								<form class="position-relative">
									<input class="form-control pe-5 bg-secondary bg-opacity-10 border-0" type="search" placeholder="Searching for ..." aria-label="Search">
									<button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 text-primary"></i></button>
								</form>
							</div>
						</div>
						<!-- Top search END -->
					</div>
					<!-- Topbar menu END -->
				</div>
				<!-- Top bar left END -->
				
				<!-- Top bar right START -->
				<div class="ms-xl-auto">
					<ul class="navbar-nav flex-row align-items-center">

						<!-- Notification dropdown START -->
						<li class="nav-item ms-2 ms-md-3 dropdown">
							<!-- Notification button -->
							<a class="btn btn-light btn-round mb-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
								<i class="bi bi-bell fa-fw"></i>
							</a>
							<!-- Notification dote -->
							<span class="notif-badge animation-blink"></span>

							<!-- Notification dropdown menu START -->
							<div class="dropdown-menu dropdown-animation dropdown-menu-end dropdown-menu-size-md p-0 shadow-lg border-0">
								<div class="card bg-transparent">
									<div class="card-header bg-transparent border-bottom py-4 d-flex justify-content-between align-items-center">
										<h6 class="m-0">Notifications <span class="badge bg-danger bg-opacity-10 text-danger ms-2">2 new</span></h6>
										<a class="small" href="#">Clear all</a>
									</div>
									<div class="card-body p-0">
										<ul class="list-group list-unstyled list-group-flush">
											<!-- Notif item -->
											<li>
												<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
													<div class="me-3">
														<div class="avatar avatar-md">
															<img class="avatar-img rounded-circle" src="assets/images/avatar/08.jpg" alt="avatar">
														</div>
													</div>
													<div>
														<p class="text-body small m-0">Congratulate <b>Joan Wallace</b> for graduating from <b>Microverse university</b></p>
														<u class="small">Say congrats</u>
													</div>
												</a>
											</li>

											<!-- Notif item -->
											<li>
												<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
													<div class="me-3">
														<div class="avatar avatar-md">
															<img class="avatar-img rounded-circle" src="assets/images/avatar/02.jpg" alt="avatar">
														</div>
													</div>
													<div>
														<h6 class="mb-1">Larry Lawson Added a new course</h6>
														<p class="small text-body m-0">What's new! Find out about new features</p>
														<u class="small">View detail</u>
													</div>
												</a>
											</li>

											<!-- Notif item -->
											<li>
												<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
													<div class="me-3">
														<div class="avatar avatar-md">
															<img class="avatar-img rounded-circle" src="assets/images/avatar/05.jpg" alt="avatar">
														</div>
													</div>
													<div>
														<h6 class="mb-1">New request to apply for Instructor</h6>
														<u class="small">View detail</u>
													</div>
												</a>
											</li>

											<!-- Notif item -->
											<li>
												<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
													<div class="me-3">
														<div class="avatar avatar-md">
															<img class="avatar-img rounded-circle" src="assets/images/avatar/03.jpg" alt="avatar">
														</div>
													</div>
													<div>
														<h6 class="mb-1">Update v2.3 completed successfully</h6>
														<p class="small text-body m-0">What's new! Find out about new features</p>
														<small class="text-body">5 min ago</small>
													</div>
												</a>
											</li>
										</ul>
									</div>
									<!-- Button -->
									<div class="card-footer bg-transparent border-0 py-3 text-center position-relative">
										<a href="#" class="stretched-link">See all incoming activity</a>
									</div>
								</div>
							</div>
							<!-- Notification dropdown menu END -->
						</li>
						<!-- Notification dropdown END -->

						<!-- Profile dropdown START -->
						<li class="nav-item ms-2 ms-md-3 dropdown">
							<!-- Avatar -->
							<a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
								<img class="avatar-img rounded-circle" src="assets/images/avatar/01.jpg" alt="avatar">
							</a>

							<!-- Profile dropdown START -->
							<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
								<!-- Profile info -->
								<li class="px-3">
									<div class="d-flex align-items-center">
										<!-- Avatar -->
										<div class="avatar me-3">
											<img class="avatar-img rounded-circle shadow" src="assets/images/avatar/01.jpg" alt="avatar">
										</div>
										<div>
											<a class="h6 mt-2 mt-sm-0" href="#">Lori Ferguson</a>
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
							<!-- Profile dropdown END -->
						</li>
						<!-- Profile dropdown END -->
					</ul>
				</div>
				<!-- Top bar right END -->
			</div>
		</div>
	</nav>
	<!-- Top bar END -->

	<!-- Page main content START -->
	<div class="page-content-wrapper border">

		<!-- Title -->
		<div class="row">
			<div class="col-12">
				<h1 class="h3 mb-2 mb-sm-0">Mentors</h1>
			</div>
		</div>

		<!-- Card START -->
		<div class="card bg-transparent">

			<!-- Card header START -->
			<div class="card-header bg-transparent border-bottom px-0">
				<!-- Search and select START -->
				<div class="row g-3 align-items-center justify-content-between">

					<!-- Search bar -->
					<div class="col-md-8">
						<form class="rounded position-relative">
							<input class="form-control bg-transparent" type="search" placeholder="Search" aria-label="Search">
							<button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
						</form>
					</div>

					<!-- Tab buttons -->
					<div class="col-md-3">
						<!-- Tabs START -->
						<ul class="list-inline mb-0 nav nav-pills nav-pill-dark-soft border-0 justify-content-end" id="pills-tab" role="tablist">
							<!-- Grid tab -->
							<li class="nav-item">
								<a href="#nav-preview-tab-1" class="nav-link mb-0 me-2 active" data-bs-toggle="tab">
									<i class="fas fa-fw fa-th-large"></i>
								</a>
							</li>
							<!-- List tab -->
							<li class="nav-item">
								<a href="#nav-html-tab-1" class="nav-link mb-0" data-bs-toggle="tab">
									<i class="fas fa-fw fa-list-ul"></i>
								</a>
							</li>
						</ul>
						<!-- Tabs end -->
					</div>
				</div>
				<!-- Search and select END -->
			</div>
			<!-- Card header END -->

			<!-- Card body START -->
			<div class="card-body px-0">
				<!-- Tabs content START -->
				<div class="tab-content">

					<!-- Tabs content item START -->
					<div class="tab-pane fade show active" id="nav-preview-tab-1">
						<div class="row g-4">

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="assets/images/avatar/09.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Lori Stevens</a></h5>
												<p class="mb-0 small">Web Designer</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare1" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare1">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">5,354</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">15</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="assets/images/avatar/01.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Carolyn Ortiz</a></h5>
												<p class="mb-0 small">Web Developer</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare2" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare2">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">15,523</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">10</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="assets/images/avatar/03.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Dennis Barrett</a></h5>
												<p class="mb-0 small">Developer and Instructor</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare3" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare3">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">2,546</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">09</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="assets/images/avatar/04.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Billy Vasquez</a></h5>
												<p class="mb-0 small">Full Stack Web Developer</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare4" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare4">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">12,786</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">07</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="assets/images/avatar/05.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Jacqueline Miller</a></h5>
												<p class="mb-0 small">Engineering Architect</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare5" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare5">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">21,245</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">05</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="assets/images/avatar/06.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Amanda Reed</a></h5>
												<p class="mb-0 small">Medical Science</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare6" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare6">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">8,546</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">06</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="assets/images/avatar/07.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Samuel Bishop</a></h5>
												<p class="mb-0 small">Finance manager</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare7" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare7">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">5,354</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">15</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

							<!-- Card item START -->
							<div class="col-md-6 col-xxl-4">
								<div class="card bg-transparent border h-100"> 
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom d-flex align-items-sm-center justify-content-between">
										<div class="d-sm-flex align-items-center">
											<!-- Avatar -->
											<div class="avatar avatar-md flex-shrink-0">
												<img class="avatar-img rounded-circle" src="assets/images/avatar/10.jpg" alt="avatar">
											</div>
											<!-- Info -->
											<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
												<h5 class="mb-0"><a href="#">Louis Ferguson</a></h5>
												<p class="mb-0 small">Civil Engineer</p>
											</div>
										</div>

										<!-- Edit dropdown -->
										<div class="dropdown">
											<a href="#" class="btn btn-sm btn-light btn-round small mb-0" role="button" id="dropdownShare8" data-bs-toggle="dropdown" aria-expanded="false">
												<i class="bi bi-three-dots fa-fw"></i>
											</a>
											<!-- dropdown button -->
											<ul class="dropdown-menu dropdown-w-sm dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare8">
												<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit</a></li>
												<li><a class="dropdown-item" href="#"><i class="bi bi-trash fa-fw me-2"></i>Remove</a></li>
											</ul>
										</div>
									</div>

									<div class="card-body">
										<!-- Total students -->
										<div class="d-flex justify-content-between align-items-center mb-3">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-orange bg-opacity-10 text-orange rounded-circle flex-shrink-0"><i class="fas fa-user-graduate fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Students</h6>
											</div>
											<span class="mb-0 fw-bold">2,578</span>
										</div>

										<!-- Total courses -->
										<div class="d-flex justify-content-between align-items-center">
											<div class="d-flex align-items-center">
												<div class="icon-md bg-purple bg-opacity-10 text-purple rounded-circle flex-shrink-0"><i class="fas fa-book fa-fw"></i></div>
												<h6 class="mb-0 ms-2 fw-light">Total Courses</h6>
											</div>
											<span class="mb-0 fw-bold">02</span>
										</div>
									</div>

									<!-- Card footer -->
									<div class="card-footer bg-transparent border-top">
										<div class="d-flex justify-content-between align-items-center">
											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
											<!-- Message button -->
											<a href="#" class="btn btn-link text-body p-0 mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Message" aria-label="Message">
												<i class="bi bi-envelope-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Card item END -->

						</div> <!-- Row END -->
					</div>
					<!-- Tabs content item END -->

					<!-- Tabs content item START -->
					<div class="tab-pane fade" id="nav-html-tab-1">
						<!-- Table START -->
						<div class="table-responsive border-0">
							<table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
								<!-- Table head -->
								<thead>
									<tr>
										<th scope="col" class="border-0 rounded-start">Instructor name</th>
										<th scope="col" class="border-0">Detail</th>
										<th scope="col" class="border-0">Courses</th>
										<th scope="col" class="border-0">Total studentss</th>
										<th scope="col" class="border-0 rounded-end">Action</th>
									</tr>
								</thead>

								<!-- Table body START -->
								<tbody>
									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="assets/images/avatar/09.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Lori Stevens</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Web Designer</h6>
										</td>

										<!-- Table data -->
										<td>15</td>

										<!-- Table data -->
										<td>5,354</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="assets/images/avatar/01.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Carolyn Ortiz</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Web Developer</h6>
										</td>

										<!-- Table data -->
										<td>10</td>

										<!-- Table data -->
										<td>15,523</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="assets/images/avatar/03.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Dennis Barrett</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Developer and Instructor</h6>
										</td>

										<!-- Table data -->
										<td>09</td>

										<!-- Table data -->
										<td>2,546</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="assets/images/avatar/04.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Billy Vasquez</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Full Stack Web Developer</h6>
										</td>

										<!-- Table data -->
										<td>07</td>

										<!-- Table data -->
										<td>12,786</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="assets/images/avatar/05.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Jacqueline Miller</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Engineering Architect</h6>
										</td>

										<!-- Table data -->
										<td>05</td>

										<!-- Table data -->
										<td>21,245</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="assets/images/avatar/06.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Amanda Reed</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Medical Science</h6>
										</td>

										<!-- Table data -->
										<td>06</td>

										<!-- Table data -->
										<td>8,546</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="assets/images/avatar/07.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Samuel Bishop</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Finance manager</h6>
										</td>

										<!-- Table data -->
										<td>15</td>

										<!-- Table data -->
										<td>5,354</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-md">
													<img src="assets/images/avatar/10.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mb-0"><a href="#" class="stretched-link">Louis Ferguson</a></h6>
												</div>
											</div>
										</td>

										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0">Civil Engineer</h6>
										</td>

										<!-- Table data -->
										<td>02</td>

										<!-- Table data -->
										<td>2,578</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-info-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Message">
												<i class="bi bi-envelope"></i>
											</a>
											<a href="#" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
												<i class="bi bi-pencil-square"></i>
											</a>
											<button class="btn btn-danger-soft btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

								</tbody>
								<!-- Table body END -->
							</table>
						</div>
						<!-- Table END -->
					</div>
					<!-- Tabs content item END -->

				</div>
				<!-- Tabs content END -->
			</div>
			<!-- Card body END -->

			<!-- Card footer START -->
			<div class="card-footer bg-transparent p-0">
				<!-- Pagination START -->
				<div class="d-sm-flex justify-content-sm-between align-items-sm-center">
					<!-- Content -->
					<p class="mb-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p>
					<!-- Pagination -->
					<nav class="d-flex justify-content-center mb-0" aria-label="navigation">
						<ul class="pagination pagination-sm pagination-primary-soft mb-0 pb-0">
							<li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">1</a></li>
							<li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">3</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
						</ul>
					</nav>
				</div>
				<!-- Pagination END -->
			</div>
			<!-- Card footer END -->
		</div>
		<!-- Card END -->
	</div>
	<!-- Page main content END -->

</div>
<!-- Page content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

<!-- Template Functions -->
<script src="assets/js/functions.js"></script>

</body>

<!-- Mirrored from eduport.webestica.com/admin-instructor-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:21:11 GMT -->
</html>