<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Model.User" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Update Profile</title>

        <!-- Meta Tags -->
        <meta name="author" content="Webestica.com">
        <meta name="description" content="Eduport - LMS, Education and Course Theme">

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&family=Roboto:wght@400;500;700&display=swap">

        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/vendor/font-awesome/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" href="assets/vendor/tiny-slider/tiny-slider.css">
        <link rel="stylesheet" href="assets/vendor/glightbox/css/glightbox.css">

        <!-- Theme CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

        <style>

            .container {
                background: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                max-width: 500px;
                width: 100%;
            }
            h2 {
                text-align: center;
                color: #333;
                margin-bottom: 20px;
            }
            label {
                font-weight: bold;
                display: block;
                margin-bottom: 5px;
                color: #555;
            }
            input, select {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ddd;
                border-radius: 5px;
                box-sizing: border-box;
                font-size: 14px;
            }
            input[type="submit"] {
                background-color: #007bff;
                color: #fff;
                border: none;
                cursor: pointer;
                font-weight: bold;
                font-size: 16px;
                transition: background-color 0.3s ease;
            }
            input[type="submit"]:hover {
                background-color: #0056b3;
            }
            .message {
                text-align: center;
                color: green;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <%@ include file="./Header.jsp" %>

        <div class="container">
            <h2>Update Your Profile</h2>
            <form action="profile" method="post">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" value="<%= user.getName() %>" required>

                <label for="gender">Gender:</label>
                <select id="gender" name="gender">
                    <option value="true" <%= user.getGender() ? "selected" : "" %>>Male</option>
                    <option value="false" <%= !user.getGender() ? "selected" : "" %>>Female</option>
                </select>

                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="dob" value="<%= user.getDOB() != null ? user.getDOB().toString() : "" %>">

                <label for="phone">Phone Number:</label>
                <input type="text" id="phone" name="phone" value="<%= user.getPhone() %>" required>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" value="<%= user.getAddress() %>" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%= user.getEmail() %>" required>

                <label for="avatar">Avatar URL:</label>
                <input type="text" id="avatar" name="avatar" value="<%= user.getAvatar() %>">

                <input type="submit" value="Update Profile">
            </form>

            <div class="message">
                <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
            </div>
        </div>
          
            
    </body>
</html>
