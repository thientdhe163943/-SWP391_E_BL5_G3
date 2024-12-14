<%-- 
    Document   : mentor-cv
    Created on : Dec 1, 2024, 9:45:40 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from eduport.webestica.com/instructor-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:19:58 GMT -->
    <head>
        <title>Update CV of mentor</title>

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
        <link rel="stylesheet" type="text/css" href="assets/vendor/tiny-slider/tiny-slider.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/aos/aos.css">

        <!--D:\Project_SWP391_BL5\-SWP391_E_BL5_G3\web\assets\vendor-->
        <!-- Theme CSS -->
        <link id="style-switch" rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>

    <body>

        <!--Header-->
        <jsp:include page="../../Header.jsp"></jsp:include>

        <!-- **************** MAIN CONTENT START **************** -->
        <main>

            <!-- =======================
            Page content START -->
            <section class="pt-5 pb-0">
                <div class="container">
                    <div class="row g-0 g-lg-5">

                        <!-- Left sidebar START -->
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-md-6 col-lg-12">
                                    <!-- Instructor image START -->
                                    <div class="card shadow p-2 mb-4 text-center">
                                        <div class="rounded-3">
                                            <!-- Image -->
                                            <img src="assets/images/instructor/07.jpg" class="card-img" alt="course image">
                                        </div>

                                        <!-- Card body -->
                                        <div class="card-body px-3">
                                            <h1 class="mb-0">${requestScope.mentor.name}</h1>
                                            <!-- Rating -->
                                            <ul class="list-inline mb-3">
                                                <li class="list-inline-item me-2 small">
                                                    <i class="fas fa-star text-warning"></i>
                                                </li>
                                                <li class="list-inline-item h6 fw-light mb-0">${starRate}/5.0</li>

                                                <li class="list-inline-item me-2 small">
                                                    <i class="fas fa-user-graduate text-info"></i>
                                                </li>
                                                <li class="list-inline-item h6 fw-light mb-0">${totalMentee}+</li>
                                            </ul>
                                        </div>
                                        <!-- Counter END -->
                                    </div>
                                </div>
                                <!-- Instructor image END -->
                            </div>

                            <div class="col-md-6 col-lg-12">
                                <div class="card card-body shadow p-4 mb-4">

                                    <!-- Education START -->
                                    <!-- Title -->
                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                        <!-- Title -->
                                        <h4 class="mb-0">Education</h4>

                                        <!-- Buttons -->
                                        <!-- Add Button -->
                                        <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#addEducationModal" title="Add Education">
                                            <i class="fas fa-plus"></i>
                                        </button>
                                    </div>


                                    <!-- Education item -->
                                    <c:forEach items="${cv.eduList}" var="edu">
                                        <div class="d-flex align-items-center justify-content-between mb-4">
                                            <span class="icon-md text-dark mb-0 bg-light rounded-3">
                                                <i class="fas fa-graduation-cap"></i>
                                            </span>
                                            <div class="ms-3 flex-grow-1">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <h6 class="mb-0">${edu.schoolName}</h6>
                                                    <!-- Buttons for Edit and Remove -->
                                                    <div>
                                                        <button type="button" 
                                                                class="btn btn-light p-0" 
                                                                title="Edit" 
                                                                data-bs-toggle="modal" 
                                                                data-bs-target="#editEducationModal" 
                                                                onclick="populateEditModal('${edu.eduId}', '${edu.schoolName}', '${edu.major}')">
                                                            <i class="fas fa-edit"></i>
                                                        </button>
                                                        <button type="button" 
                                                                class="btn btn-light p-0 ms-2" 
                                                                title="Remove"
                                                                data-bs-toggle="modal" 
                                                                data-bs-target="#removeEducationModal" 
                                                                onclick="populateRemoveModal('${edu.eduId}')">
                                                            <i class="fas fa-trash"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                <p class="mb-0 small">${edu.major}</p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <!-- Education END -->
                                    <hr> <!-- Divider -->

                                    <!-- Title -->
                                    <!-- Skills START -->
                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                        <!-- Title -->
                                        <h4 class="mb-3">Skills</h4>

                                        <!-- Buttons -->
                                        <!-- Add Button -->
                                        <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#addSkillModal" title="Add Skill">
                                            <i class="fas fa-plus"></i>
                                        </button>
                                    </div>
                                    <!-- Progress item -->
                                    <c:forEach items="${cv.cvSkillList}" var="skill">
                                        <div class="overflow-hidden mb-4">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <h6 class="uppercase">${skill.skill.skillName}</h6>
                                                <button type="button" 
                                                        class="btn btn-light p-0 ms-2" 
                                                        title="Remove"
                                                        data-bs-toggle="modal" 
                                                        data-bs-target="#removeSkillModal" 
                                                        onclick="removeSkillModal('${skill.cvSkillId}')">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <!-- Progress item -->
                                    <!-- Skills END -->

                                </div>
                            </div>
                        </div> <!-- Row End -->

                        <!-- Left sidebar END -->

                        <!-- Main content START -->
                        <div class="col-lg-8">
                            <!-- Title -->
                            <c:if test="${!cv.getIntroduction().isEmpty()}">
                                <h5 class="mb-0">Hi, I am</h5>
                                <div class="d-flex align-items-center justify-content-between">
                                    <h1 class="mb-0">${requestScope.mentor.name}</h1>

                                    <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#editIntroductionModal">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </div>
                                <!-- Content -->
                                <p class="mt-4">${cv.getIntroduction()}</p>
                            </c:if>    
                            <c:if test="${cv.getIntroduction().isEmpty()}">
                                <button type="button" class="btn btn-light p-2" data-bs-toggle="modal" data-bs-target="#addIntroductionModal">
                                    <i class="fas fa-plus"></i>
                                </button>
                            </c:if>
                            <!-- Personal info -->
                            <ul class="list-group list-group-borderless">
                                <li class="list-group-item px-0">
                                    <span class="h6 fw-light"><i class="fas fa-fw fa-map-marker-alt text-primary me-1 me-sm-3"></i>Address:</span>
                                    <span>${mentor.address}</span>
                                </li>
                                <li class="list-group-item px-0">
                                    <span class="h6 fw-light"><i class="fas fa-fw fa-envelope text-primary me-1 me-sm-3"></i>Email:</span>
                                    <span>${mentor.email}</span>
                                </li>
                                <li class="list-group-item px-0">
                                    <span class="h6 fw-light"><i class="fas fa-fw fa-headphones text-primary me-1 me-sm-3"></i>Phone number:</span>
                                    <span>${mentor.phone}</span>
                                </li>
                                <!--                                <li class="list-group-item px-0">
                                                                    <span class="h6 fw-light"><i class="fas fa-fw fa-globe text-primary me-1 me-sm-3"></i>Website:</span>
                                                                    <span>https://eduport.webestica.com/</span>
                                                                </li>-->
                            </ul>
                        </div>
                        <!-- Main content END -->
                    </div>
                </div><!-- Row END -->
            </section>
            <!-- =======================
            Page content END -->

            <!--Add introduction Modal--> 
            <div class="modal fade" id="addIntroductionModal" tabindex="-1" aria-labelledby="addIntroductionLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addIntroductionModalLabel">Add Introduction</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="addIntroductionForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="addIntro">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.userId}">
                                <div class="form-group">
                                    <label for="introduction">Introduction</label>
                                    <input type="text" class="form-control" id="introduction" name="introduction" placeholder="Enter introduction" required>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="addIntroductionForm" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Edit introduction Modal--> 
            <div class="modal fade" id="editIntroductionModal" tabindex="-1" aria-labelledby="editIntroductionModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editIntroductionModalLabel">Edit Introduction</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="editIntroductionForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="editIntro">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.userId}">
                                <div class="form-group">
                                    <label for="introduction">Introduction:</label>
                                    <textarea name="introduction" style="height: 200px;width: 466px;" required="">${cv.getIntroduction()}</textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="editIntroductionForm" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Add Education Modal START-->
            <div class="modal fade" id="addEducationModal" tabindex="-1" aria-labelledby="addEducationModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addEducationModalLabel">Add Education</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="addEducationForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="addEdu">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.userId}">
                                <div class="form-group">
                                    <label for="schoolName">School Name</label>
                                    <input type="text" class="form-control" id="schoolName" name="schoolName" placeholder="Enter school name" required>
                                </div>
                                <div class="form-group mt-3">
                                    <label for="major">Major</label>
                                    <input type="text" class="form-control" id="major" name="major" placeholder="Enter major" required>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="addEducationForm" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Add Education Modal END-->

            <!--Edit Education Model START-->
            <div class="modal fade" id="editEducationModal" tabindex="-1" aria-labelledby="editEducationModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editEducationModalLabel">Edit Education</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="editEducationForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="editEdu">
                                <input type="hidden" id="editEduID" name="eduID">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.userId}">
                                <div class="form-group">
                                    <label for="editSchoolName">School Name</label>
                                    <input type="text" class="form-control" id="editSchoolName" name="schoolName" required>
                                </div>
                                <div class="form-group mt-3">
                                    <label for="editMajor">Major</label>
                                    <input type="text" class="form-control" id="editMajor" name="major" required>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="editEducationForm" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Edit Education Model END-->

            <!--Remove Education Model START-->
            <div class="modal fade" id="removeEducationModal" tabindex="-1" aria-labelledby="removeEducationModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="removeEducationModalLabel">Remove Education</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="removeEducationForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="removeEdu">
                                <input type="hidden" id="removeEduID" name="eduID">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.userId}">
                                Are you sure to remove this?
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="removeEducationForm" class="btn btn-primary">Yes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Remove Education Model END-->


            <!--Skill Model-->
            <!--Add skill Modal -->
            <div class="modal fade" id="addSkillModal" tabindex="-1" aria-labelledby="addSkillModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addSkillModalLabel">Select Skill</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="addSkillForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="addSkill">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.userId}">
                                <input type="hidden" name="cvID" value="${cv.cvId}">
                                <!-- Dropdown list for skills -->
                                <select class="form-select" id="skillSelect" aria-label="Select a skill" name="skillId">
                                    <option selected>Select a skill</option>
                                    <c:forEach items="${skills}" var="skill">
                                        <option value="${skill.skillId}">${skill.skillName}</option>
                                    </c:forEach>
                                </select>
                            </form>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" form="addSkillForm">Save Skill</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Remove Skill Model-->
            <div class="modal fade" id="removeSkillModal" tabindex="-1" aria-labelledby="removeSkillModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="removeSkillModalLabel">Remove Skill</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="removeSkillForm" action="viewCV" method="POST">
                                <input type="hidden" name="action" value="removeSkill">
                                <input type="hidden" id="removeSkillID" name="cvSkillId">
                                <input type="hidden" name="mentorID" value="${requestScope.mentor.userId}">
                                Are you sure to remove this?
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" form="removeSkillForm" class="btn btn-primary">Yes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- =======================
            Related instructor START -->
            <section>
                <div class="container">
                    <!-- Title -->
                    <div class="row mb-4">
                        <h2 class="mb-0">Related Mentors</h2>
                    </div>

                    <!-- Slider START -->
                    <div class="tiny-slider arrow-round arrow-creative arrow-blur arrow-hover">
                        <div class="tiny-slider-inner" data-autoplay="false" data-arrow="true" data-dots="false" data-items="4" data-items-lg="3" data-items-md="2" data-items-xs="1">

                            <!-- Card item START -->
                            <!--1-->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/02.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>25</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>15</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Jacqueline Miller</a></h5>
                                    <p class="mb-2">Web Developer</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->
                            <!--2-->
                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/01.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>118</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>09</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Samuel Bishop</a></h5>
                                    <p class="mb-2">Marketing Instructor</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->
                            <!--3-->
                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/08.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>92</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>38</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Dennis Barrett</a></h5>
                                    <p class="mb-2">Maths Instructor</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->
                            <!--4-->
                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/04.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>82</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>05</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Carolyn Ortiz</a></h5>
                                    <p class="mb-2">Economics Teacher</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->
                            <!--5-->
                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/03.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>50</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>10</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Billy Vasquez</a></h5>
                                    <p class="mb-2">UI/UX Designer</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->
                            <!--6-->
                            <!-- Card item START -->
                            <div class="card bg-transparent">
                                <div class="position-relative">
                                    <!-- Image -->
                                    <img src="assets/images/instructor/03.jpg" class="card-img" alt="course image">
                                    <!-- Overlay -->
                                    <div class="card-img-overlay d-flex flex-column p-3">
                                        <div class="w-100 mt-auto text-end">
                                            <!-- Card category -->
                                            <a href="#" class="badge text-white bg-info rounded-1"><i class="fas fa-user-graduate me-2"></i>50</a>
                                            <a href="#" class="badge text-white bg-orange rounded-1"><i class="fas fa-clipboard-list me-2"></i>10</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body text-center">
                                    <!-- Title -->
                                    <h5 class="card-title"><a href="#">Billy Vasquez</a></h5>
                                    <p class="mb-2">UI/UX Designer</p>
                                    <!-- Rating -->
                                    <ul class="list-inline hstack justify-content-center">
                                        <li class="list-inline-item ms-2 h6 mb-0 fw-normal">4.5/5.0</li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
                                        <li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Card item END -->

                        </div>
                    </div>
                    <!-- Slider END -->

                </div>
            </section>
            <!-- =======================
            Related instructor END -->

        </main>
        <!-- **************** MAIN CONTENT END **************** -->
        <!-- Back to top -->
        <div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

        <!-- Bootstrap JS -->
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Bootstrap JavaScript Bundle (bao gồm Popper.js) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Vendors -->
        <script src="assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
        <script src="assets/vendor/tiny-slider/tiny-slider.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>

        <!-- Template Functions -->
        <script src="assets/js/functions.js"></script>
        <script>
                                                            function populateEditModal(id, schoolName, major) {
                                                                document.getElementById('editEduID').value = id;
                                                                document.getElementById('editSchoolName').value = schoolName;
                                                                document.getElementById('editMajor').value = major;
                                                            }
                                                            function populateRemoveModal(id) {
                                                                document.getElementById('removeEduID').value = id;
                                                            }
                                                            function removeSkillModal(id) {
                                                                document.getElementById('removeSkillID').value = id;
                                                            }
        </script>
    </body>

    <!-- Mirrored from eduport.webestica.com/instructor-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Jan 2022 19:19:59 GMT -->
</html>