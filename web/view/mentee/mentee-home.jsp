<%-- 
    Document   : Home
    Created on : Nov 29, 2024, 1:27:05 PM
    Author     : Hayashi
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Home</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="./assets/images/favicon.ico">

        <!-- Google Font -->
        <link rel="preconnect" href="https://fonts.googleapis.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&amp;family=Roboto:wght@400;500;700&amp;display=swap">

        <!-- Plugins CSS -->
        <link rel="stylesheet" type="text/css" href="./assets/vendor/font-awesome/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/choices/css/choices.min.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/aos/aos.css">

        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="./assets/css/style.css">

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <main>
            <jsp:include page="banner.jsp" />

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
                                                <a class="list-group-item" href="mentee-dashboard"><i class="bi bi-basket fa-fw me-2"></i>Dashboard</a>
                                                <a class="list-group-item active" href="mentee-request-list"><i class="bi bi-credit-card-2-front fa-fw me-2"></i>Requests List</a>
                                                <a class="list-group-item" href=""><i class="bi bi-pencil-square fa-fw me-2"></i>Edit Profile</a>
                                                <a class="list-group-item text-danger bg-danger-soft-hover" href="#"><i class="fas fa-sign-out-alt fa-fw me-2"></i>Sign Out</a>
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
                            <div class="card bg-transparent border rounded-3">
                                <!-- Card header START -->
                                <div class="card-header bg-transparent border-bottom">
                                    <h3 class="mb-0">My Requests List&nbsp;&nbsp; <a href="new-request">
                                            <button class="btn btn-primary">
                                                <i class="bi bi-plus"></i>
                                            </button>
                                        </a></h3>

                                </div>
                                <!-- Card header END -->

                                <!-- Card body START -->
                                <div class="card-body">

                                    <!-- Search and select START -->
                                    <div class="row g-3 align-items-center justify-content-between mb-4">
                                        <!-- Content -->
                                        <div class="col-md-8">
                                            <form class="rounded position-relative" action="mentee" method="GET">
                                                <input class="form-control pe-5 bg-transparent" id="requestSearch" name="requestSearch" type="search" placeholder="Search" aria-label="Search" value="${requestSearch}">
                                                <button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                            </form>
                                        </div>

                                        <!-- Select option -->
                                        <div class="col-md-3">
                                            <!-- Short by filter -->
                                            <form id="sortRequest" action="mentee" method="get">
                                                <select class="form-select js-choice border-0 z-index-9 bg-transparent" id="sortOrder" name="sortOrder" aria-label=".form-select-sm" onchange="this.form.submit()">
                                                    <option value="">Sort by</option>
                                                    <option value="title" ${sortOrder == "title" ? 'selected' : ''}>Request Title</option>
                                                    <option value="deadline" ${sortOrder == "deadline" ? 'selected' : ''}>Deadline</option>
                                                </select>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- Search and select END -->

                                    <!-- Course list table START -->
                                    <div id="resultsTable" class="table-responsive border-0">
                                        <table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
                                            <!-- Table head -->
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-0 rounded-start">Request Title</th>
                                                    <th scope="col" class="border-0">Content</th>
                                                    <th scope="col" class="border-0">Mentor</th>
                                                    <th scope="col" class="border-0">Deadline</th>
                                                    <th scope="col" class="border-0">Status</th>
                                                    <th scope="col" class="border-0 rounded-end" style="text-align: center;">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:if test="${requestList == null}">
                                                <h5>${error}</h5>
                                            </c:if>
                                            <c:if test="${requestList != null}">
                                                <c:forEach items="${requestList}" var="re">
                                                    <tr>
                                                        <td>${re.title}</td>
                                                        <td>${re.content}</td>
                                                        <td>${re.mentor.name}</td>
                                                        <td>${re.deadline}</td>
                                                        <td>${re.status == 1 ? 'Open' : 
                                                              re.status == 2 ? 'Processing' : 
                                                              re.status == 3 ? 'Cancel' : 'Closed'}</td>
                                                        <td style="text-align: center;">
                                                            <a href="update-request?requestId=${re.requestId}" class="d-inline">
                                                                <button type="button" class="btn btn-primary">
                                                                    <i class="bi bi-pen"></i>
                                                                </button>
                                                            </a>
                                                            <form action="update-request-status?requestId=${re.requestId}&status=3" method="POST" class="d-inline" onsubmit="return confirmCancelWithPopup(event, this);">
                                                                <button type="submit" class="btn btn-outline-danger">
                                                                    <i class="bi bi-x"></i>
                                                                </button>
                                                            </form>
                                                            <form action="update-request-status?requestId=${re.requestId}&status=0" method="POST" class="d-inline" onsubmit="return confirmDeleteWithPopup(event, this);">
                                                                <button type="submit" class="btn btn-outline-danger">
                                                                    <i class="bi bi-trash"></i>
                                                                </button>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- Card body START -->
                            </div>
                        </div>
                        <!-- Main content END -->
                    </div> <!-- Row END -->
                </div>	
            </section>
            <!-- =======================
            Page content END -->

        </main>
        <!-- **************** MAIN CONTENT END **************** -->

        <jsp:include page="footer.jsp"></jsp:include>

        <script>
            function confirmDeleteWithPopup(event, form) {
                event.preventDefault();

                Swal.fire({
                    title: 'Are you sure?',
                    text: 'Are you sure you want to delete this request?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Delete Request',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) {
                        form.submit();
                    }
                });

                return false;
            }
            
            function confirmCancelWithPopup(event, form) {
                event.preventDefault();
                
                Swal.fire({
                    title: 'Are you sure?',
                    text: 'Are you sure you want to cancel this request?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Cancel Request',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if(result.isConfirmed) {
                        form.submit();
                    }
                });
                
                return false;
            }
        </script>

        <!-- Bootstrap JS -->
        <script src="./assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Vendors -->
        <script src="./assets/vendor/choices/js/choices.min.js"></script>
        <script src="./assets/vendor/aos/aos.js"></script>

        <!-- Template Functions -->
        <script src="./assets/js/functions.js"></script>

    </body>
</html>