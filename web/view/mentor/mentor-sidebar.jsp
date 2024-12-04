<%-- 
    Document   : mentor-sidebar.jsp
    Created on : Dec 3, 2024, 2:18:39 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Left sidebar START -->

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
                        <a class="list-group-item active" href="mentor-dashboard"><i class="bi bi-ui-checks-grid fa-fw me-2"></i>Dashboard</a>
                        <a class="list-group-item" href="mentor-mentee-list"><i class="bi bi-people fa-fw me-2"></i>Mentees</a>
                        <a class="list-group-item" href="mentor-review"><i class="bi bi-star fa-fw me-2"></i>Reviews</a>
                        <a class="list-group-item" href="profile"><i class="bi bi-pencil-square fa-fw me-2"></i>Edit Profile</a>
                        <a class="list-group-item" href="instructor-delete-account.html"><i class="bi bi-trash fa-fw me-2"></i>Delete Profile</a>
                        <a class="list-group-item text-danger bg-danger-soft-hover" href="sign-in"><i class="fas fa-sign-out-alt fa-fw me-2"></i>Sign Out</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- Responsive offcanvas body END -->
</div>
<!-- Left sidebar END -->
