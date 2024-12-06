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
                            <h4>Create New Request</h4>
                        </div>
                        
                        <div class="card-body">
                            <form action="menteeNewRequest" method="POST">
                                <div class="row g-4">
                                    <div class="col-12">
                                        <label class="form-label">Title</label>
                                        <input class="form-control" type="text" placeholder="Enter request title">
                                    </div>
                                </div>
                                <div class="row g-4">
                                    <div class="col-12">
                                        <label class="form-label">Deadline</label>
                                        <input class="form-control" type="date">
                                    </div>
                                </div>
                                <div class="row g-4">
                                    <div class="col-12">
                                        <label class="form-label">content</label>  
                                        <textarea class="form-control" rows="3" placeholder="Enter content of the request"></textarea>
                                    </div>
                                </div>
                                <div class="row g-4">
                                    <div class="col-12">
                                        
                                    </div>
                                </div>
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