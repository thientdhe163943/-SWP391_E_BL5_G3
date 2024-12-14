<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/admin-course-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:21:10 GMT -->
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
        <link rel="stylesheet" type="text/css" href="assets/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">

    </head>

    <body>
        <%@include file="./Header.jsp" %>   

        <!-- **************** MAIN CONTENT START **************** -->
        <main>

            <!-- Sidebar START -->
            <nav class="navbar sidebar navbar-expand-xl navbar-dark bg-dark">

                <!-- Navbar brand for xl START -->
                <div class="d-flex align-items-center">
                    <a class="navbar-brand" href="home">
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
                                <a class="nav-link" data-bs-toggle="collapse" href="#collapsepage" role="button" aria-expanded="true" aria-controls="collapsepage">
                                    <i class="bi bi-basket fa-fw me-2"></i>ADMIN MANAGER
                                </a>
                                <!-- Submenu -->
                                <ul class="nav collapse flex-column show" id="collapsepage" data-bs-parent="#navbar-sidebar">
                                    <li class="nav-item"> <a class="nav-link active" href="admin">MANAGE USER</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="blog">MANAGE BLOG</a></li>
                                    
                                </ul>
                            </li>
                    </div>
                </div>
            </nav>
            <!-- Sidebar END -->

            <!-- Page content START -->
            <div class="page-content">

                <!-- Top bar START -->

                <!-- Top bar END -->

                <!-- Page main content START -->
                <div class="page-content-wrapper border">

                    <!-- Title -->
                    <div class="row mb-3">
                        <div class="col-12 d-sm-flex justify-content-between align-items-center">
                            <h1 class="h3 mb-2 mb-sm-0">User</h1>

                        </div>
                    </div>


                    <!-- Course boxes END -->

                    <!-- Card START -->
                    <div class="card bg-transparent border">

                        <!-- Card header START -->
                        <div class="card-header bg-light border-bottom">
                            <!-- Search and select START -->
                            <div class="row g-3 align-items-center justify-content-between">
                                <!-- Search bar -->
                                <div class="col-md-8">
                                    <form class="rounded position-relative">
                                        <input class="form-control bg-body" type="search" placeholder="Search" aria-label="Search">
                                        <button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                    </form>
                                </div>

                                <!-- Select option -->
                                <div class="col-md-3">
                                    <!-- Short by filter -->
                                    <form>
                                        <select class="form-select js-choice border-0 z-index-9" aria-label=".form-select-sm">
                                            <option value="">Sort by</option>
                                            <option>Newest</option>
                                            <option>Oldest</option>
                                            <option>Accepted</option>
                                            <option>Rejected</option>
                                        </select>
                                    </form>
                                </div>
                            </div>
                            <!-- Search and select END -->
                        </div>
                        <!-- Card header END -->

                        <!-- Card body START -->
                        <div class="card-body">
                            <a href="user?action=add">Add New User</a>
                            <!-- Course table START -->
                            <div class="table-responsive border-0 rounded-3">
                                <!-- Table START -->
                                <table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
                                    <!-- Table head -->
                                    <thead>
                                        <tr>
                                            <th scope="col" class="border-0 rounded-start">Name</th>
                                            <th scope="col" class="border-0">gender</th>
                                            <th scope="col" class="border-0">DOB</th>
                                            <th scope="col" class="border-0">Phone</th>
                                            <th scope="col" class="border-0">Address</th>
                                            <th scope="col" class="border-0">Email</th>
                                            <th scope="col" class="border-0">Status</th>
                                            <th scope="col" class="border-0 rounded-end">Action</th>
                                        </tr>
                                    </thead>

                                    <!-- Table body START -->
                                    <tbody>
                                        <c:forEach var="user" items="${listA}">
                                            <!-- Table row -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>
                                                    <div class="d-flex align-items-center position-relative">
                                                        <div class="avatar avatar-xs flex-shrink-0">
                                                            <img class="avatar-img rounded-circle" src="${user.avatar}" alt="avatar">
                                                        </div>
                                                        <!-- Title -->
                                                        <h6 class="mb-0 ms-1">
                                                            <a href="#" class="stretched-link">${user.name}</a>
                                                        </h6>
                                                    </div>
                                                </td>

                                                <td>
                                                    <div class="d-flex align-items-center mb-1">
                                                        <!-- Info -->
                                                        <div class="ms-2">
                                                            <h6 class="mb-0 fw-light">
                                                                <c:choose>
                                                                    <c:when test="${user.gender == true}">Male</c:when>
                                                                    <c:otherwise>Female</c:otherwise>
                                                                </c:choose>
                                                            </h6>
                                                        </div>
                                                    </div>
                                                </td>

                                                <!-- Table data -->
                                                <td>${user.DOB}</td>

                                                <!-- Table data -->
                                                <td> 
                                                    <span class="badge bg-primary text-white">${user.phone}</span>
                                                </td>
                                                <td>${user.address}</td>

                                                <!-- Table data -->
                                                <td>${user.email}</td>

                                                <!-- Table data -->
                                                <td>
                                                    <span class="badge bg-warning bg-opacity-15 text-warning">
                                                        <c:choose>
                                                            <c:when test="${user.status == true}">Active</c:when>
                                                            <c:otherwise>Inactive</c:otherwise>
                                                        </c:choose>
                                                    </span>
                                                </td>

                                                <!-- Table data -->
                                                <td>

                                                    <a href="admin?action=edit&id=${user.userId}" class="btn btn-success-soft btn-round me-1 mb-1 mb-md-0" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Edit">
                                                        <i class="bi bi-pencil-square"></i>
                                                    </a>

                                                    <a href="admin?action=delete&id=${user.userId}" 
                                                       class="btn btn-sm btn-secondary-soft mb-0" 
                                                       onclick="return confirm('Are you sure?')" 
                                                       title="Delete">
                                                        <i class="fas fa-trash"></i>
                                                    </a>


                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>

                                    <!-- Table body END -->
                                </table>
                                <!-- Table END -->
                            </div>
                            <!-- Course table END -->
                        </div>
                        <!-- Card body END -->

                        <!-- Card footer START -->
                        <div class="card-footer bg-transparent pt-0">
                            <!-- Pagination START -->
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <c:forEach begin="1" end="${endP}" var="i">
                                        <li class="page-item ${i == currentPage ? 'active' : ''}">
                                            <a class="page-link" href="admin?index=${i}">${i}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </nav>
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

        <!-- Vendors -->
        <script src="assets/vendor/choices/js/choices.min.js"></script>
        <script src="assets/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>

    </body>

    <!-- Mirrored from eduport.webestica.com/admin-course-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:21:10 GMT -->
</html>