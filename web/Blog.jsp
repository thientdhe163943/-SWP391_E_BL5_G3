<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Admin Dashboard - Manage Blogs</title>

        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="Webestica.com">
        <meta name="description" content="Admin Dashboard - Manage Blogs">

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&family=Roboto:wght@400;500;700&display=swap">

        <!-- Plugins CSS -->
        <link rel="stylesheet" type="text/css" href="assets/vendor/font-awesome/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/choices/css/choices.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">

        <!-- Theme CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <style>
            /* Blog card container */
            .blog-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                gap: 30px;
            }

            /* Individual card styling */
            .card {
                flex: 0 0 calc(33.33% - 20px);
                box-sizing: border-box;
                border-radius: 8px;
                overflow: hidden;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                background-color: #fff;
                transition: transform 0.3s ease;
            }

            .card:hover {
                transform: scale(1.02);
            }

            .fixed-size {
                height: 180px;
                object-fit: cover;
            }

            .card-body {
                padding: 15px;
                text-align: center;
            }

            .card-title {
                font-size: 18px;
                font-weight: bold;
                color: #333;
            }

            .card p {
                font-size: 14px;
                color: #666;
                margin: 10px 0;
            }

            .badge {
                font-size: 12px;
                padding: 5px 8px;
            }

            /* Responsive Design */
            @media (max-width: 992px) {
                .card {
                    flex: 0 0 calc(50% - 20px);
                }
            }

            @media (max-width: 576px) {
                .card {
                    flex: 0 0 100%;
                }
            }
        </style>
    </head>

    <body>
        <%@ include file="./Header.jsp" %>

        <!-- Main content START -->
        <main>
            <!-- Sidebar START -->
            <nav class="navbar sidebar navbar-expand-xl navbar-dark bg-dark">
                <div class="d-flex align-items-center">
                    <a class="navbar-brand" href="home">
                        <img class="navbar-brand-item" src="assets/images/logo-light.svg" alt="">
                    </a>
                </div>

                <div class="offcanvas offcanvas-start custom-scrollbar h-100" data-bs-backdrop="true" tabindex="-1" id="offcanvasSidebar">
                    <div class="offcanvas-body sidebar-content d-flex flex-column bg-dark">
                        <ul class="navbar-nav flex-column" id="navbar-sidebar">
                            <li class="nav-item"><a href="admin-dashboard.html" class="nav-link"><i class="bi bi-house fa-fw me-2"></i>Dashboard</a></li>
                            <li class="nav-item ms-2 my-2">Pages</li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="collapse" href="#collapsepage" role="button" aria-expanded="true">
                                    <i class="bi bi-basket fa-fw me-2"></i>Admin Manager
                                </a>
                                <ul class="nav collapse flex-column show" id="collapsepage">
                                    <li class="nav-item"> <a class="nav-link " href="admin">Manage User</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="blog">Manage Blog</a></li>
                                    <li class="nav-item"> <a class="nav-link active" href="skill">Manage Skill</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Sidebar END -->

            <!-- Page content START -->
            <div class="page-content">
                <div class="page-content-wrapper border">
                    <div class="row mb-3">
                        <div class="col-12 d-sm-flex justify-content-between align-items-center">
                            <h1 class="h3 mb-2 mb-sm-0">Manage Blogs</h1>
                        </div>
                    </div>

                    <!-- Blog List START -->
                    <a href="blog?action=add">Add New Blog</a>
                    <div class="blog-container">
                        
                        <c:forEach items="${listBlog}" var="o">
                            <div class="card">
                                <div class="position-relative">
                                    <img src="${o.image}" class="card-img fixed-size" alt="Blog Image">
                                    <div class="card-img-overlay d-flex flex-column p-2">
                                        <div class="w-100 mt-auto text-end">
                                            <a href="#" class="badge text-white bg-info rounded-1">
                                                <i class="fas fa-user-graduate me-2"></i>25
                                            </a>
                                            <a href="#" class="badge text-white bg-orange rounded-1">
                                                <i class="fas fa-clipboard-list me-2"></i>15
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title"><a</a></h5>
                                    <p>${o.content}</p>
                                    <p>${o.full_content}</p>
                                    <div class="d-flex justify-content-center mt-3">
                                        <!-- Edit Button -->
                                        <a href="blog?action=edit&id=${o.blogId}" 
                                           class="btn btn-success-soft btn-round me-2" 
                                           data-bs-toggle="tooltip" 
                                           data-bs-placement="top" 
                                           title="Edit">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>

                                        <!-- Delete Button -->
                                        <a href="blog?action=delete&id=${o.blogId}" 
                                           class="btn btn-secondary-soft" 
                                           onclick="return confirm('Are you sure?')" 
                                           title="Delete">
                                            <i class="fas fa-trash"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!-- Blog List END -->

                </div>
            </div>
            <!-- Page content END -->
        </main>
        <!-- Main content END -->

        <!-- Back to top -->
        <div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

        <!-- Bootstrap JS -->
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/choices/js/choices.min.js"></script>
        <script src="assets/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>
        <script src="assets/js/functions.js"></script>
    </body>
</html>
