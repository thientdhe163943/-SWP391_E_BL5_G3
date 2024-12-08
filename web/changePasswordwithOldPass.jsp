
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Change Password</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }
            .container {
                max-width: 500px;
                margin: 50px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            }
            h2 {
                text-align: center;
                color: #333;
            }
            .form-group {
                margin-bottom: 20px;
            }
            label {
                display: block;
                font-weight: bold;
            }
            input[type="password"], input[type="text"] {
                width: 100%;
                padding: 10px;
                font-size: 16px;
                border: 1px solid #ddd;
                border-radius: 4px;
                margin-top: 5px;
            }
            .error {
                color: red;
                font-size: 14px;
                margin-top: 10px;
            }
            .success {
                color: green;
                font-size: 14px;
                margin-top: 10px;
            }
            button {
                width: 100%;
                padding: 12px;
                font-size: 16px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
         <%@include file="./Header.jsp" %>   
        <div class="container">
            <h2>Change Password</h2>
            
            <!-- Display messages (success or error) -->
            <c:choose>
                <c:when test="${not empty mess}">
                    <div class="${not empty isSuccess and isSuccess == true ? 'success' : 'error'}">
                        ${mess}
                    </div>
                </c:when>
            </c:choose>

            <!-- Password change form -->
            <form action="changePasswordwithOldPass" method="POST">
                <input type="hidden" name="Service" value="updatePassword" />
                
                <div class="form-group">
                    <label for="currentPassword">Current Password:</label>
                    <input type="password" id="currentPassword" name="currentPassword" required placeholder="Enter your current password">
                </div>

                <div class="form-group">
                    <label for="newPassword">New Password:</label>
                    <input type="password" id="newPassword" name="newPassword" required placeholder="Enter your new password">
                </div>

                <div class="form-group">
                    <label for="confirmPassword">Confirm New Password:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required placeholder="Confirm your new password">
                </div>

                <div class="form-group">
                    <button type="submit">Update Password</button>
                </div>
            </form>
        </div>
<%@include file="./Footer.jsp" %>
    </body>
</html>
