<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
    <h2>User List</h2>
    <a href="user?action=add">Add New User</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td>${user.userId}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.phone}</td>
                <td>
                    <a href="user?action=edit&id=${user.userId}">Edit</a>
                    <a href="user?action=delete&id=${user.userId}" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
