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
        <style>
            .toast-container {
                position: fixed;
                top: 10px;
                right: 10px;
                z-index: 1050;
            }
        </style>
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
                                    <li class="nav-item"> <a class="nav-link" href="admin">MANAGE USER</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="blog">MANAGE BLOG</a></li>
                                    <li class="nav-item"> <a class="nav-link active" href="skill">MANAGE SKILL</a></li>
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
                            <h1 class="h3 mb-2 mb-sm-0">Skill</h1>
                            <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#addSkillModal" title="Add Skill">
                                <i class="fas fa-plus"></i>
                            </button>
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
                            <!-- Course table START -->
                            <div class="table-responsive border-0 rounded-3">
                                <!-- Table START -->
                                <table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
                                    <!-- Table head -->
                                    <thead>
                                        <tr>
                                            <th scope="col" class="border-0 rounded-start">ID</th>
                                            <th scope="col" class="border-0">Name</th>
                                            <th scope="col" class="border-0">Status</th>
                                            <th scope="col" class="border-0 rounded-end">Action</th>
                                        </tr>
                                    </thead>

                                    <!-- Table body START -->
                                    <tbody>
                                        <c:forEach var="skill" items="${skills}" varStatus="status">
                                            <!-- Table row -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>${(page - 1) * 5 + (status.index + 1)}</td>

                                                <!-- Table data -->
                                                <td> 
                                                    <span class="badge bg-primary text-white">${skill.skillName}</span>
                                                </td>
                                                <td>
                                                    <c:if test="${skill.status == false}">Inactive</c:if>
                                                    <c:if test="${skill.status == true}">Active</c:if>
                                                    </td>

                                                    <!-- Table data -->
                                                    <td>
                                                        <!--Edit Button-->
                                                        <button 
                                                            type="button" 
                                                            title="Edit Time" 
                                                            class="btn btn-success-soft btn-round mb-0"
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#editSkillModal"
                                                            onclick="editSkillModal('${skill.skillId}', '${skill.skillName}', '${skill.status}')">
                                                        <i class="far fas fa-fw fa-pen"></i>
                                                    </button>

                                                    <!--Delete Button-->
                                                    <button 
                                                        type="button" 
                                                        title="Delete Skill" 
                                                        class="btn btn-danger-soft btn-round mb-0"
                                                        data-bs-toggle="modal" 
                                                        data-bs-target="#deleteSkillModal"
                                                        onclick="deleteSkillModal('${skill.skillId}')">
                                                        <i class="far fas fa-fw fa-trash"></i>
                                                    </button>
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
                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                        <li class="page-item ${i == page ? 'active' : ''}">
                                            <a class="page-link" href="skill?page=${i}">${i}</a>
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
        <!--Add Skill Modal-->
        <div class="modal fade" id="addSkillModal" tabindex="-1" aria-labelledby="addTimeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addSkillModalLabel">Add Skill</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="addSkillForm" action="skill" method="post">
                            <input type="hidden" name="action" value="add">
                            <div class="form-group">
                                <label for="skillName">Skill Name</label>
                                <input type="text" class="form-control" name="skillName" required="" maxlength="50">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" form="addSkillForm" class="btn btn-primary">Save changes</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!--Edit Skill Modal-->
        <div class="modal fade" id="editSkillModal" tabindex="-1" aria-labelledby="editTimeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editSkillModalLabel">Edit Skill</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="editSkillForm" action="skill" method="post">
                            <input type="hidden" name="action" value="edit">
                            <input type="hidden" id="editSkillId" name="skillId">
                            <div class="form-group">
                                <label for="skillName">Skill Name</label>
                                <input type="text" class="form-control" id="skillName" name="skillName" required="" maxlength="50">
                            </div>
                            <div class="form-group mt-3">
                                <label for="editStartTime">Status</label> 
                                <select class="form-control" id="editStatus" name="skillStatus" required=""> 
                                    <option value="true">Active</option>
                                    <option value="false">Inactive</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" form="editSkillForm" class="btn btn-primary">Save changes</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!--Delete Skill Modal-->
        <div class="modal fade" id="deleteSkillModal" tabindex="-1" aria-labelledby="deleteTimeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteTimeModalLabel">Delete Skill</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="deleteSkillForm" action="skill" method="post">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" id="delSkillId" name="skillId">
                            <div class="form-group">
                                <label for="editDate">Are you sure to delete this skill?</label>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" form="deleteSkillForm" class="btn btn-danger">Delete</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Toast notification -->
        <div class="toast-container">
            <div id="toastNotification" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-header">
                    <strong class="me-auto">Notification</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
                <div class="toast-body" id="toastMessage">
                    <!-- Message will be injected here -->
                </div>
            </div>
        </div>
        <!-- Back to top -->
        <div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

        <!-- Bootstrap JS -->
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Vendors -->
        <script src="assets/vendor/choices/js/choices.min.js"></script>
        <script src="assets/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>
        <script>
                                                            function editSkillModal(id, skillName, status) {
                                                                document.getElementById('editSkillId').value = id;
                                                                document.getElementById('skillName').value = skillName;
                                                                document.getElementById('editStatus').value = status;

                                                            }
                                                            function deleteSkillModal(id) {
                                                                document.getElementById('delSkillId').value = id;
                                                            }
        </script>
        <!--Thông báo-->
        <script>
            document.addEventListener('DOMContentLoaded', () => {
                // Get the message and status from the server
                const message = '${message}';
                const status = '${status}';

                if (message && status) {
                    // Select elements
                    const toastEl = document.getElementById('toastNotification');
                    const toastMessage = document.getElementById('toastMessage');
                    const toastIcon = document.getElementById('toastIcon');

                    // Set the message
                    toastMessage.textContent = message;

                    // Add styles based on status
                    if (status === 'success') {
                        toastEl.classList.add('bg-success', 'text-white');
//                        toastIcon.innerHTML = '<i class="fas fa-check-circle"></i>';
                    } else if (status === 'error') {
                        toastEl.classList.add('bg-danger', 'text-white');
//                        toastIcon.innerHTML = '<i class="fas fa-times-circle"></i>';
                    }

                    // Show the toast with auto-hide enabled and timeout set to 3 seconds
                    const toast = new bootstrap.Toast(toastEl, {
                        autohide: true, // Auto hide the toast
                        delay: 3000      // 3000ms = 3 seconds
                    });

                    toast.show();
                }
            });
        </script>

    </body>

    <!-- Mirrored from eduport.webestica.com/admin-course-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:21:10 GMT -->
</html>