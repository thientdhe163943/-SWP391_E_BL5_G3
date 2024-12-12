<%@ page import="java.util.List" %>
<%@ page import="Model.Blog" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Blogs</title>
</head>
<body>
    <h1>Blog Management</h1>
    <a href="addBlog.jsp">Add New Blog</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>User ID</th>
            <th>Image</th>
            <th>Content</th>
            <th>full content</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${blogs}" var="blog">
            <tr>
                <td>${blog.blogId}</td>
                <td>${blog.userId}</td>
                <td><img src="${blog.image}" alt="Image" width="50"></td>
                <td>${blog.content}</td>
                 <td>${blog.full_content}</td>
                <td>
                    <a href="blog?action=edit&blogId=${blog.blogId}">Edit</a>
                    <a href="blog?action=delete&blogId=${blog.blogId}" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
