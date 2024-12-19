<%-- 
    Document   : list-recommended-mentors
    Created on : Dec 13, 2024, 3:55:56 PM
    Author     : Hayashi
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Recommended Mentors</title>

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
    </head>
    <body>
        <jsp:include page="../../Header.jsp" />

        <main>
            <jsp:include page="banner.jsp" />

            <!-- =======================
            Page content START -->
            <section class="pt-0">
                <div class="container">
                    <div class="row">
                        <!-- Main content START -->
                        <div class="col-xl-12">
                            <div class="card bg-transparent border rounded-3">
                                <!-- Card header START -->
                                <div class="card-header bg-transparent border-bottom">
                                    <h3 class="mb-0">Recommended Mentors</h3>

                                </div>
                                <!-- Card header END -->

                                <!-- Card body START -->
                                <div class="card-body">

                                    <!-- Search and select START -->
                                    <div class="row g-3 align-items-center justify-content-between mb-4">

                                        <!-- Course list table START -->
                                        <div id="resultsTable" class="table-responsive border-0">
                                            <table class="table table-dark-gray align-middle p-4 mb-0 table-hover">
                                                <!-- Table head -->
                                                <thead>
                                                    <tr>
                                                        <th scope="col" class="border-0 rounded-start">Mentor Name</th>
                                                        <th scope="col" class="border-0">Skills</th>
                                                        <th scope="col" class="border-0 rounded-end" style="text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:if test="${mentorList != null}">
                                                        <c:forEach items="${mentorList}" var="m">
                                                            <tr>
                                                                <td>${m.applicant.name}</td>
                                                                <td>
                                                                    <c:forEach var="skill" items="${m.cvSkillList}" varStatus="status">
                                                                        ${skill.skillName}<c:if test="${!status.last}">, </c:if>
                                                                    </c:forEach>
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <a href="viewCV?mentor=${m.applicant.userId}" class="d-inline">
                                                                        <button type="button" class="btn btn-primary">
                                                                            <i class="bi bi-eye"></i>
                                                                        </button>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </c:if>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- Pagination START -->
                                        <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                                            <!-- Content -->
                                            <!-- Pagination -->
                                            <nav class="d-flex justify-content-center mb-0" aria-label="navigation">
                                                <ul class="pagination pagination-sm pagination-primary-soft mb-0 pb-0">
                                                    <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
                                                    <li class="page-item mb-0 active"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item mb-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                        <!-- Pagination END -->
                                    </div>
                                    <!-- Card body START -->
                                </div>
                            </div>
                            <!-- Main content END -->
                        </div> <!-- Row END -->
                    </div>
                </div>
            </section>
            <!-- =======================
            Page content END -->

        </main>
        <!-- **************** MAIN CONTENT END **************** -->

        <jsp:include page="../../Footer.jsp" />
    </body>
</html>
