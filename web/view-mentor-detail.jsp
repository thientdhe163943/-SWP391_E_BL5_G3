<%-- 
    Document   : view-mentor-detail
    Created on : Dec 3, 2024, 4:34:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

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
	<link rel="stylesheet" type="text/css" href="assets/vendor/choices/css/choices.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/apexcharts/css/apexcharts.css">
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
				<li class="nav-item"> <a class="nav-link" href="view-mentee-list.jsp"><i class="fas fa-user-graduate fa-fw me-2"></i>Mentee</a></li>

				<!-- Menu item 4 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#collapseinstructors" role="button" aria-expanded="true" aria-controls="collapseinstructors">
						<i class="fas fa-user-tie fa-fw me-2"></i>Mentors
					</a>
					<!-- Submenu -->
					<ul class="nav collapse flex-column show" id="collapseinstructors" data-bs-parent="#navbar-sidebar">
						<li class="nav-item"> <a class="nav-link" href="view-list-mentor.jsp">Mentors</a></li>
						<li class="nav-item"> <a class="nav-link active" href="view-mentor-detail.jsp">Mentor Detail</a></li>
						<li class="nav-item"> 
							<a class="nav-link" href="admin-instructor-request.html">Instructor requests
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
									<input class="form-control pe-5 bg-secondary bg-opacity-10 border-0" type="search" placeholder="Search" aria-label="Search">
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
			<div class="col-12 mb-3">
				<h1 class="h3 mb-2 mb-sm-0">Instructor detail</h1>
			</div>
		</div>
				
		<div class="row g-4">

			<!-- Personal information START -->
			<div class="col-xxl-7">
				<div class="card bg-transparent border rounded-3 h-100">

					<!-- Card header -->
					<div class="card-header bg-light border-bottom">
						<h5 class="card-header-title mb-0">Personal Information</h5>
					</div>

					<!-- Card body START -->
					<div class="card-body">
						<!-- Profile picture -->
						<div class="avatar avatar-xl mb-3">
							<img class="avatar-img rounded-circle border border-white border-3 shadow" src="assets/images/avatar/07.jpg" alt="">
						</div>

						<!-- Information START -->
						<div class="row">

							<!-- Information item -->
							<div class="col-md-6">
								<ul class="list-group list-group-borderless">
									<li class="list-group-item">
										<span>Title:</span>
										<span class="h6 mb-0">Mr.</span>
									</li>

									<li class="list-group-item">
										<span>Full Name:</span>
										<span class="h6 mb-0">Louis Ferguson</span>
									</li>

									<li class="list-group-item">
										<span>User Name:</span>
										<span class="h6 mb-0">Lousifer</span>
									</li>

									<li class="list-group-item">
										<span>Mobile Number:</span>
										<span class="h6 mb-0">+123 456 789 10</span>
									</li>
								</ul>
							</div>

							<!-- Information item -->
							<div class="col-md-6">
								<ul class="list-group list-group-borderless">
									<li class="list-group-item">
										<span>Email ID:</span>
										<span class="h6 mb-0">example@gmail.com</span>
									</li>

									<li class="list-group-item">
										<span>Location:</span>
										<span class="h6 mb-0">California</span>
									</li>

									<li class="list-group-item">
										<span>Joining Date:</span>
										<span class="h6 mb-0">29 Aug 2019</span>
									</li>
								</ul>
							</div>

							<!-- Information item -->
							<div class="col-12">
								<ul class="list-group list-group-borderless">
									<li class="list-group-item">
										<span>Education:</span>
										<span class="h6 mb-0">Bachelor in Computer Graphics,</span>
										<span class="h6 mb-0">Masters in Computer Graphics</span>
									</li>
								</ul>
							</div>

							<!-- Information item -->
							<div class="col-12">
								<ul class="list-group list-group-borderless">
									<li class="list-group-item d-flex">
										<span>Description:</span>
										<p class="h6 mb-0">As it so contrasted oh estimating instrument. Size like body someone had. Are conduct viewing boy minutes warrant the expense Tolerably behavior may admit daughters offending her ask own. Praise effect wishes change way and any wanted. Lively use looked latter regard had. Do he it part more last in</p>
									</li>
								</ul>
							</div>
						</div>
						<!-- Information END -->
					</div>
					<!-- Card body END -->
				</div>
			</div>
			<!-- Personal information END -->

			<!-- Student status chart START -->
			<div class="col-xxl-5">
				<div class="row g-4">

					<!-- Active student START -->
					<div class="col-md-6 col-xxl-12">
						<div class="card bg-transparent border overflow-hidden">
							<!-- Card header -->
							<div class="card-header bg-light border-bottom">
								<h5 class="card-header-title mb-0">Active Students</h5>
							</div>
							<!-- Card body -->
							<div class="card-body p-0">
								<div class="d-sm-flex justify-content-between p-4">
									<h4 class="text-blue mb-0">984</h4>
									<p class="mb-0"><span class="text-success me-1">0.20%<i class="bi bi-arrow-up"></i></span>vs last Week</p>
								</div>
								<!-- Apex chart -->
								<div id="activeChartstudent"></div>
							</div>
						</div>
					</div>
					<!-- Active student END -->

					<!-- Enrolled START -->
					<div class="col-md-6 col-xxl-12">
						<div class="card bg-transparent border overflow-hidden">
							<!-- Card header -->
							<div class="card-header bg-light border-bottom">
								<h5 class="card-header-title mb-0">New Enrollment</h5>
							</div>
							<!-- Card body -->
							<div class="card-body p-0">
								<div class="d-sm-flex justify-content-between p-4">
									<h4 class="text-blue mb-0">140</h4>
									<p class="mb-0"><span class="text-success me-1">0.35%<i class="bi bi-arrow-up"></i></span>vs last Week</p>
								</div>
								<!-- Apex chart -->
								<div id="activeChartstudent2"></div>
							</div>
						</div>
					</div>
					<!-- Enrolled END -->

				</div>
			</div>
			<!-- Student status chart END -->
		
			<!-- Instructor course list START -->
			<div class="col-12">
				<div class="card bg-transparent border h-100">

					<!-- Card header -->
					<div class="card-header bg-light border-bottom">
						<h5 class="mb-0">Courses List</h5>
					</div>

					<!-- Card body START -->
					<div class="card-body pb-0">
						<!-- Table START -->
						<div class="table-responsive border-0">
							<table class="table table-dark-gray align-middle p-4 mb-0 table-hover">

								<!-- Table head -->
								<thead>
									<tr>
										<th scope="col" class="border-0 rounded-start">Course Name</th>
										<th scope="col" class="border-0">Enrolled</th>
										<th scope="col" class="border-0">Status</th>
										<th scope="col" class="border-0 rounded-end">Action</th>
									</tr>
								</thead>

								<!-- Table body START -->
								<tbody>
									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td class="text-center text-sm-start d-flex align-items-center position-relative">
											<div class="w-60px"><img src="assets/images/courses/4by3/08.jpg" class="rounded" alt=""></div>
											<h6 class="mb-0 ms-2"><a href="#" class="stretched-link">Building Scalable APIs with GraphQL</a></h6>
										</td>

										<!-- Table data -->
										<td>412</td>

										<!-- Table data -->
										<td>
											<span class="badge bg-success bg-opacity-15 text-success">Live</span>
										</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0">View</a>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td class="text-center text-sm-start d-flex align-items-center position-relative">
											<div class="w-60px"><img src="assets/images/courses/4by3/02.jpg" class="rounded" alt=""></div>
											<h6 class="mb-0 ms-2"><a href="#" class="stretched-link">Graphic Design Masterclass</a></h6>
										</td>

										<!-- Table data -->
										<td>254</td>

										<!-- Table data -->
										<td>
											<span class="badge bg-success bg-opacity-15 text-success">Live</span>
										</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0">View</a>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td class="text-center text-sm-start d-flex align-items-center position-relative">
											<div class="w-60px"><img src="assets/images/courses/4by3/04.jpg" class="rounded" alt=""></div>
											<h6 class="mb-0 ms-2"><a href="#" class="stretched-link">Learn Invision</a></h6>
										</td>

										<!-- Table data -->
										<td>0</td>

										<!-- Table data -->
										<td>
											<span class="badge bg-warning bg-opacity-15 text-warning">Pending</span>
										</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0">View</a>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td class="text-center text-sm-start d-flex align-items-center position-relative">
											<div class="w-60px"><img src="assets/images/courses/4by3/07.jpg" class="rounded" alt=""></div>
											<h6 class="mb-0 ms-2"><a href="#" class="stretched-link">Deep Learning with React-Native</a></h6>
										</td>

										<!-- Table data -->
										<td>98</td>

										<!-- Table data -->
										<td>
											<span class="badge bg-success bg-opacity-15 text-success">Live</span>
										</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0">View</a>
										</td>
									</tr>

									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td class="text-center text-sm-start d-flex align-items-center position-relative">
											<div class="w-60px"><img src="assets/images/courses/4by3/10.jpg" class="rounded" alt=""></div>
											<h6 class="mb-0 ms-2"><a href="#" class="stretched-link">Bootstrap 5 From Scratch</a></h6>
										</td>

										<!-- Table data -->
										<td>58</td>

										<!-- Table data -->
										<td>
											<span class="badge bg-danger bg-opacity-15 text-danger">Cancel</span>
										</td>

										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0">View</a>
										</td>
									</tr>
								</tbody>
								<!-- Table body END -->
							</table>
						</div>
						<!-- Table END -->
					</div>
					<!-- Card body END -->

					<!-- Card footer START -->
					<div class="card-footer bg-transparent">
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
			</div>
			<!-- Instructor course list END -->

			<!-- Student review START -->
			<div class="col-12">
				<div class="card bg-transparent border">

					<!-- Card header START -->
					<div class="card-header border-bottom bg-light">
						<h5 class="mb-0">All Reviews</h5>
					</div>
					<!-- Card header END -->
		
					<!-- Card body START -->
					<div class="card-body pb-0">
						<!-- Table START -->
						<div class="table-responsive border-0">
							<table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
								<!-- Table head -->
								<thead>
									<tr>
										<th scope="col" class="border-0 rounded-start">Student Name</th>
										<th scope="col" class="border-0">Course Name</th>
										<th scope="col" class="border-0">Rating</th>
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
												<div class="avatar avatar-xs mb-2 mb-md-0">
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
											<h6 class="mb-0"><a href="#">Building Scalable APIs with GraphQL</a></h6>
										</td>
		
										<!-- Table data -->
										<td>
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
											</ul>
										</td>
		
										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0" data-bs-toggle="modal" data-bs-target="#viewReview">View</a>
										</td>
									</tr>
		
									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-xs mb-2 mb-md-0">
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
											<h6 class="mb-0"><a href="#">Graphic Design Masterclass</a></h6>
										</td>
		
										<!-- Table data -->
										<td>
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
											</ul>
										</td>
		
										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0" data-bs-toggle="modal" data-bs-target="#viewReview">View</a>
										</td>
									</tr>
		
									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-xs mb-2 mb-md-0">
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
											<h6 class="mb-0"><a href="#">Deep Learning with React-Native</a></h6>
										</td>
		
										<!-- Table data -->
										<td>
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
											</ul>
										</td>
										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0" data-bs-toggle="modal" data-bs-target="#viewReview">View</a>
										</td>
									</tr>
		
									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-xs mb-2 mb-md-0">
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
											<h6 class="mb-0"><a href="#">Bootstrap 5 From Scratch</a></h6>
										</td>
		
										<!-- Table data -->
										<td>
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
											</ul>
										</td>
		
										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0" data-bs-toggle="modal" data-bs-target="#viewReview">View</a>
										</td>
									</tr>
		
									<!-- Table row -->
									<tr>
										<!-- Table data -->
										<td>
											<div class="d-flex align-items-center position-relative">
												<!-- Image -->
												<div class="avatar avatar-xs mb-2 mb-md-0">
													<img src="assets/images/avatar/05.jpg" class="rounded-circle" alt="">
												</div>
												<div class="mb-0 ms-2">
													<!-- Title -->
													<h6 class="mt-2"><a href="#" class="stretched-link">Jacqueline Miller</a></h6>
												</div>
											</div>
										</td>
		
										<!-- Table data -->
										<td class="text-center text-sm-start">
											<h6 class="mb-0"><a href="#">Learn Invision</a></h6>
										</td>
		
										<!-- Table data -->
										<td>
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
											</ul>
										</td>
		
										<!-- Table data -->
										<td>
											<a href="#" class="btn btn-sm btn-info-soft mb-0" data-bs-toggle="modal" data-bs-target="#viewReview">View</a>
										</td>
									</tr>
								</tbody>
								<!-- Table body END -->
							</table>
						</div>
						<!-- Table END -->
					</div>
					<!-- Card body END -->
		
					<!-- Card footer START -->
					<div class="card-footer bg-transparent">
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
			</div>
			<!-- Student review END -->

		</div> <!-- Row END -->
	</div>
	<!-- Page main content END -->

</div>
<!-- Page content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Popup modal for reviwe START -->
<div class="modal fade" id="viewReview" tabindex="-1" aria-labelledby="viewReviewLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<!-- Modal header -->
			<div class="modal-header bg-dark">
				<h5 class="modal-title text-white" id="viewReviewLabel">Review</h5>
				<button type="button" class="btn btn-sm btn-light mb-0" data-bs-dismiss="modal" aria-label="Close"><i class="bi bi-x-lg"></i></button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
				<div class="d-md-flex">
					<!-- Avatar -->
					<div class="avatar avatar-md me-4 flex-shrink-0">
						<img class="avatar-img rounded-circle" src="assets/images/avatar/09.jpg" alt="avatar">
					</div>
					<!-- Text -->
					<div>
						<div class="d-sm-flex mt-1 mt-md-0 align-items-center">
							<h5 class="me-3 mb-0">Lori Stevens</h5>
							<!-- Review star -->
							<ul class="list-inline mb-0">
								<li class="list-inline-item me-0"><i class="fas fa-star text-warning"></i></li>
								<li class="list-inline-item me-0"><i class="fas fa-star text-warning"></i></li>
								<li class="list-inline-item me-0"><i class="fas fa-star text-warning"></i></li>
								<li class="list-inline-item me-0"><i class="fas fa-star text-warning"></i></li>
								<li class="list-inline-item me-0"><i class="far fa-star text-warning"></i></li>
							</ul>
						</div>
						<!-- Info -->
						<p class="small mb-2">2 days ago</p>
						<p class="mb-2">Handsome met debating sir dwelling age material. As style lived he worse dried. Offered related so visitors we private removed. Moderate do subjects to distance. </p>
						<p class="mb-2">As style lived he worse dried. Offered related so visitors we private removed. Moderate do subjects to distance. </p>
					</div>	
				</div>
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-danger-soft my-0" data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- Popup modal for reviwe END --> 

<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="assets/vendor/choices/js/choices.min.js"></script>
<script src="assets/vendor/apexcharts/js/apexcharts.min.js"></script>
<script src="assets/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

<!-- Template Functions -->
<script src="assets/js/functions.js"></script>

</body>

<!-- Mirrored from eduport.webestica.com/admin-instructor-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:21:11 GMT -->
</html>
