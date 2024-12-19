<%--
  Created by IntelliJ IDEA.
  User: Hayashi
  Date: 19/12/2024
  Time: 3:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register to be a mentor</title>

    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Eduport- LMS, Education and Course Theme">

    <!-- Favicon -->
    <link rel="shortcut icon" href="./assets/images/favicon.ico">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&amp;family=Roboto:wght@400;500;700&amp;display=swap">

    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="./assets/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="./assets/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="./assets/vendor/tiny-slider/tiny-slider.css">
    <link rel="stylesheet" type="text/css" href="./assets/vendor/glightbox/css/glightbox.css">

    <!-- Theme CSS -->
    <link id="style-switch" rel="stylesheet" type="text/css" href="./assets/css/style.css">
</head>
<body>
    <jsp:include page="../../Header.jsp" />

    <section>
        <div class="container">
            <div class="card bg-transparent border rounded-3 mb-5">
                <div class="card-header bg-light border-bottom px-lg-5">
                    <br>
                    <h4>Register to be a new mentor</h4>
                </div>

                <div class="card-body">
                    <form action="register-mentor" method="POST">
                        <div class="form-group">
                            <label for="fullname">Full Name</label>
                            <input class="form-control" type="text" id="fullname" name="fullname" value="${sessionScope.user.name}" disabled maxlength="50">
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input class="form-control" type="text" id="email" name="email" value="${sessionScope.user.email}" disabled>
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="introduction">Introduction</label>
                            <textarea class="form-control" id="introduction" name="introduction" placeholder="Introduce yourself briefly" required></textarea>
                        </div>
                        <br>
                        <div class="form-group">
                            <label>Experience</label>
                            <br>
                            <input type="radio" id="experienced" name="experience" value="1" required onclick="toggleSkillSection(true)">
                            <label for="experienced">Yes</label>
                            <br>
                            <input type="radio" id="inexperienced" name="experience" value="0" required onclick="toggleSkillSection(false)">
                            <label for="inexperienced">No</label>
                        </div>
                        <br>
                        <div class="form-group" id="skill-section" style="display: none;">
                            <label for="skill">Skills</label>
                            <c:forEach items="${skillList}" var="s">
                                <br>
                                <input type="checkbox" name="skill" id="skill" value="${s.skillId}" />${s.skillName}
                            </c:forEach>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary">Register</button>
                        <button type="button" class="btn btn-secondary" onclick="window.history.back();">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- =======================
    Page Banner END -->

    <jsp:include page="../../Footer.jsp" />

    <script>
        function toggleSkillSection(show) {
            document.getElementById('skill-section').style.display = show ? 'block' : 'none';
        }
    </script>

    <!-- Bootstrap JS -->
    <script src="./assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="./assets/vendor/tiny-slider/tiny-slider.js"></script>
    <script src="./assets/vendor/glightbox/js/glightbox.js"></script>
    <script src="./assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>

    <!-- Template Functions -->
    <script src="./assets/js/functions.js"></script>
</body>
</html>
