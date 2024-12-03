<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="styles.css"> <!-- Assuming you have a CSS file for styling -->
</head>
<body>

<%-- Header Section --%>
<header>
    <h1>User Profile</h1>
    <nav>
        <ul>
            <li><a href="ProfileControler?Service=User info">User Info</a></li>
            <li><a href="ProfileControler?Service=Change password">Change Password</a></li>
        </ul>
    </nav>
</header>

<%-- Main Content Section --%>
<main>
    <div class="container">
        
        <%-- Display error or success messages --%>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <c:if test="${not empty message}">
            <div class="success">${message}</div>
        </c:if>

        <c:choose>
            <c:when test="${current == 'User info'}">
                <%-- Display User Info Form --%>
                <h2>User Information</h2>
                <form action="ProfileControler" method="post">
                    <input type="hidden" name="Service" value="updateInfo">
                    <label for="name">Full Name:</label>
                    <input type="text" id="name" name="name" value="${User.name}" required>

                    <label for="gender">Gender:</label>
                    <input type="radio" id="gender_male" name="gender" value="true" ${User.gender ? 'checked' : ''}> Male
                    <input type="radio" id="gender_female" name="gender" value="false" ${!User.gender ? 'checked' : ''}> Female

                    <label for="dob">Date of Birth:</label>
                    <input type="date" id="dob" name="dob" value="${User.DOB}" required>

                    <label for="phone">Phone:</label>
                    <input type="text" id="phone" name="phone" value="${User.phone}" required>

                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" value="${User.address}" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="${User.email}" required>

                    <label for="avatar">Avatar URL:</label>
                    <input type="text" id="avatar" name="avatar" value="${User.avatar}">

                    <button type="submit">Update Info</button>
                </form>
            </c:when>

            <c:when test="${current == 'Change password'}">
                <%-- Display Change Password Form --%>
                <h2>Change Password</h2>
                <form action="ProfileControler" method="post">
                    <input type="hidden" name="Service" value="updatePassword">

                    <label for="currentPassword">Current Password:</label>
                    <input type="password" id="currentPassword" name="currentPassword" required>

                    <label for="newPassword">New Password:</label>
                    <input type="password" id="newPassword" name="newPassword" required>

                    <label for="confirmPassword">Confirm New Password:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>

                    <button type="submit">Change Password</button>
                </form>
            </c:when>
        </c:choose>
    </div>
</main>

<%-- Footer Section --%>
<footer>
    <p>&copy; 2024 User Profile Management</p>
</footer>

</body>
</html>
