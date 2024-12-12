<%-- 
    Document   : newRequest
    Created on : Dec 3, 2024, 1:53:52 PM
    Author     : Hayashi
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Create New Request</title>

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
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <style>
            #popupBox {
                position: absolute;
                border: 1px solid #ccc;
                width: 300px;
                max-height: 200px;
                overflow-y: auto;
                display: none;
                z-index: 1000;
            }

            #popupBox p {
                margin: 0;
                padding: 8px;
                font-size: 14px;
                cursor: pointer;
            }

            #popupBox p:hover {
                background-color: #f1f1f1;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <main>
            <!-- =======================
            Page Banner START -->
            <section class="py-0 bg-blue h-100px align-items-center d-flex h-200px rounded-0" 
                     style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
            </section>

            <section>
                <div class="container">
                    <div class="card bg-transparent border rounded-3 mb-5">
                        <div class="card-header bg-light border-bottom px-lg-5">
                            <br>
                            <h4>Create New Request</h4>
                        </div>

                        <div class="card-body">
                            <form action="new-request" method="POST">
                                <div class="form-group">
                                    <label for="title">Title</label>
                                    <input class="form-control" type="text" id="title" name="title" placeholder="Enter request title" required>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="deadline">Deadline</label>
                                    <input class="form-control" type="date" id="deadline" name="deadline" required>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="content">Content</label>  
                                    <textarea class="form-control" rows="3" id="content" name="content" placeholder="Enter content of the request" required></textarea>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="skill">Skills</label>  
                                    <c:forEach items="${skillList}" var="s">
                                        <br>
                                        <input type="checkbox" name="skill" id="skill" value="${s.skillId}" />${s.skillName}
                                    </c:forEach>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="mentorEmail">Preferred Mentor (Not required):</label>
                                    <input type="text" class="form-control" id="mentorEmail" name="mentorEmail" placeholder="Enter mentor's email" value="${mentorEmail == null ? mentorEmail : ''}" />
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary">Create</button>
                                <button type="button" class="btn btn-secondary" onclick="window.history.back();">Cancel</button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- =======================
            Page Banner END -->
        </main>

        <jsp:include page="footer.jsp" />

        <!-- Bootstrap JS -->
        <script src="./assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Vendors -->
        <script src="./assets/vendor/choices/js/choices.min.js"></script>
        <script src="./assets/vendor/aos/aos.js"></script>

        <!-- Template Functions -->
        <script src="./assets/js/functions.js"></script>
    </body>
</html>
