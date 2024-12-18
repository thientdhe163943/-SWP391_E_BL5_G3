<%-- 
    Document   : mentor-mentee-list
    Created on : Dec 4, 2024, 2:58:58 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <link rel="stylesheet" type="text/css" href="assets/vendor/choices/css/choices.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/aos/aos.css">

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
        <!-- **************** MAIN CONTENT START **************** -->
        <main>
            <jsp:include page="../../Header.jsp"></jsp:include>
                <!-- =======================
                Main Banner START -->
            <jsp:include page="mentor-banner.jsp"/>
            <!-- =======================
            Main Banner END -->

            <!-- =======================
            Inner part START -->
            <section class="pt-0">
                <div class="container">
                    <div class="row">
                        <!--Sidebar-->
                        <jsp:include page="mentor-sidebar.jsp"/>
                        <!-- Main content START -->
                        <div class="col-xl-9">
                            <!-- Card START -->
                            <div class="card border bg-transparent rounded-3">
                                <!-- Card header START -->
                                <div class="card-header bg-transparent border-bottom d-flex">
                                    <h3 class="mb-0">My Free Time List</h3>
                                    <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#addTimeModal" title="Add Free Time">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                </div>
                                <!-- Card header END -->

                                <!-- Card body START -->
                                <div class="card-body">

                                    <!-- Search and select START -->
                                    <div class="row g-3 align-items-center justify-content-between mb-4">
                                        <!-- Search -->
                                        <div class="col-md-8">
                                            <form class="rounded position-relative">
                                                <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                                <button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                            </form>
                                        </div>

                                        <!-- Select option -->
                                        <div class="col-md-3">
                                            <!-- Short by filter -->
                                            <form>
                                                <select class="form-select js-choice border-0 z-index-9 bg-transparent" aria-label=".form-select-sm">
                                                    <option value="">Sort by</option>
                                                    <option>Free</option>
                                                    <option>Newest</option>
                                                    <option>Oldest</option>
                                                </select>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- Search and select END -->

                                    <!-- Student list table START -->
                                    <div class="table-responsive border-0">
                                        <table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
                                            <!-- Table head -->
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-0 rounded-start">ID</th>
                                                    <th scope="col" class="border-0">Time</th>
                                                    <th scope="col" class="border-0">Date</th>
                                                    <th scope="col" class="border-0">Status</th>
                                                    <th scope="col" class="border-0 rounded-end">Action</th>
                                                </tr>
                                            </thead>

                                            <!-- Table body START -->
                                            <tbody>
                                                <c:forEach items="${freetimeList}" var="freetime" varStatus="status">
                                                    <!-- Table item -->
                                                    <tr>
                                                        <!-- Table data -->
                                                        <td>
                                                            <div class="d-flex align-items-center position-relative">
                                                                <div class="mb-0 ms-2">
                                                                    <!-- Name -->
                                                                    <h6 class="mb-0">${status.index + 1}</h6>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <!-- Table data -->
                                                        <!--Completed Requests-->
                                                        <td class="text-center text-sm-start">
                                                            <div class=" overflow-hidden">
                                                                <h6 class="mb-0">${freetime.startTime} - ${freetime.endtime}</h6>
                                                            </div>
                                                        </td>
                                                        <!-- Table data -->
                                                        <!--Requests-->
                                                        <td>${freetime.date}</td>
                                                        <td>
                                                            <c:if test="${freetime.status == true}">
                                                                <div class="badge bg-primary bg-opacity-10 text-primary">Available</div>
                                                            </c:if>
                                                            <c:if test="${freetime.status == false}">
                                                                <div class="badge bg-warning bg-opacity-10 text-warning">Not Available</div>
                                                            </c:if>
                                                        </td>
                                                        <!-- Table data -->
                                                        <td>
                                                            <!--Edit Button-->
                                                            <button 
                                                                type="button" 
                                                                title="Edit Time" 
                                                                class="btn btn-success-soft btn-round mb-0"
                                                                data-bs-toggle="modal" 
                                                                data-bs-target="#editTimeModal"
                                                                <c:if test="${freetime.date.isBefore(currentDate)}">
                                                                    disabled
                                                                </c:if>
                                                                onclick="editTimeModal('${freetime.timeId}', '${freetime.startTime}', '${freetime.endtime}', '${freetime.date}')">
                                                                <i class="far fas fa-fw fa-pen"></i>
                                                            </button>
                                                            <!--Delete Button-->
                                                            <button 
                                                                type="button" 
                                                                title="Edit Time" 
                                                                class="btn btn-danger-soft btn-round mb-0"
                                                                data-bs-toggle="modal" 
                                                                data-bs-target="#deleteTimeModal"
                                                                <c:if test="${freetime.date.isBefore(currentDate)}">
                                                                    disabled
                                                                </c:if>
                                                                onclick="deleteTimeModal('${freetime.timeId}')">
                                                                <i class="far fas fa-fw fa-trash"></i>
                                                            </button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                            <!-- Table body END -->
                                        </table>
                                    </div>
                                    <!-- Student list table END -->

                                    <!-- Pagination START -->
                                    <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                                        <!-- Content -->
                                        <p class="mb-0 text-center text-sm-start"></p>
                                        <!-- Pagination -->
                                        <nav class="d-flex justify-content-center mb-0" aria-label="navigation">
                                            <ul class="pagination pagination-sm pagination-primary-soft mb-0 pb-0">
                                                <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
                                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                                    <li class="page-item mb-0 page-number ${i == index ? 'active' : ''}"><a class="page-link" href="mentor-mentee-list?index=${i}">${i}</a></li>
                                                    </c:forEach>
                                                <li class="page-item mb-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Pagination END -->
                                </div>
                                <!-- Card body START -->
                            </div>
                            <!-- Card END -->
                        </div>
                        <!-- Main content END -->
                    </div><!-- Row END -->
                </div>
            </section>
            <!-- =======================
            Inner part END -->
        </main>
        <!-- **************** MAIN CONTENT END **************** -->

        <!--Add Time Modal-->
        <div class="modal fade" id="addTimeModal" tabindex="-1" aria-labelledby="addTimeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addTimeModalLabel">Add Free Time</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="editTimeForm" action="mentor-freetime" method="post">
                            <input type="hidden" name="action" value="add">
                            <div class="form-group">
                                <label for="editDate">Date</label>
                                <input type="date" class="form-control" id="date" min="${currentDate}" name="date" required="">
                            </div>
                            <div class="form-group mt-3">
                                <label for="editStartTime">Start Time</label> 
                                <input type="time" class="form-control" id="editStartTime" name="startTime" required="">
                            </div>
                            <div class="form-group mt-3">
                                <label for="editEndTime">End Time</label>
                                <input type="time" class="form-control" id="editEndTime" name="endTime" required="">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" form="editTimeForm" class="btn btn-primary">Save changes</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!--Edit Time Modal-->
        <div class="modal fade" id="editTimeModal" tabindex="-1" aria-labelledby="editTimeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editTimeModalLabel">Free Time Detail</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="editTimeForm" action="mentor-freetime" method="post">
                            <input type="hidden" name="action" value="edit">
                            <input type="hidden" id="timeId" name="timeId">
                            <div class="form-group">
                                <label for="editDate">Date</label>
                                <input type="date" class="form-control" id="date" min="${currentDate}" name="date" required="">
                            </div>
                            <div class="form-group mt-3">
                                <label for="editStartTime">Start Time</label> 
                                <input type="time" class="form-control" id="editStartTime" name="startTime" required="">
                            </div>
                            <div class="form-group mt-3">
                                <label for="editEndTime">End Time</label>
                                <input type="time" class="form-control" id="editEndTime" name="endTime" required="">
                            </div>
                            <div class="form-group mt-3">
                                <label for="viewStatus">Status:</label>
                                <input type="text" class="form-control" id="viewStatus" name="status" readonly="">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" form="editTimeForm" class="btn btn-primary">Save changes</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!--Delete Time Modal-->
        <div class="modal fade" id="deleteTimeModal" tabindex="-1" aria-labelledby="deleteTimeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteTimeModalLabel">Delete Free Time</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="deleteTimeForm" action="mentor-freetime" method="post">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" id="delTimeId" name="timeId">
                            <div class="form-group">
                                <label for="editDate">Are you sure to delete this time</label>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" form="deleteTimeForm" class="btn btn-primary">Delete</button>
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
        <script src="assets/vendor/aos/aos.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>
        <script>
                                                                    function editTimeModal(id, startTime, endTime, date) {
                                                                        document.getElementById('timeId').value = id;
                                                                        document.getElementById('date').value = date;
                                                                        document.getElementById('editStartTime').value = startTime;
                                                                        document.getElementById('editEndTime').value = endTime;
                                                                        document.getElementById('viewStatus').value = 'Available';
                                                                    }
                                                                    function deleteTimeModal(id) {
                                                                        document.getElementById('delTimeId').value = id;
                                                                    }
        </script>
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
</html>
