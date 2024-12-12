<%@ page import="Model.Blog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Blog</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                margin: 0;
                padding: 0;
            }

            .container {
                width: 60%;
                margin: 50px auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            h1 {
                text-align: center;
                color: #333;
            }

            label {
                font-size: 14px;
                font-weight: bold;
                color: #555;
                margin-bottom: 5px;
                display: inline-block;
            }

            input[type="text"], input[type="number"], textarea {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }

            textarea {
                height: 150px;
                resize: vertical;
            }

            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
                width: 100%;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #45a049;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group input, .form-group textarea {
                font-size: 14px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Edit Blog</h1>
            <form action="blog" method="post">
                <input type="hidden" name="action" value="update">
                <input type="hidden" name="id" value="${blog.blogId}">

                <div class="form-group">
                    <label for="user_id">User ID:</label>
                    <input type="number" id="user_id" name="user_id" value="${blog.userId}" required>
                </div>

                <div class="form-group">
                    <label for="image">Image URL:</label>
                    <input type="text" id="image" name="image" value="${blog.image}" required>
                </div>

                <div class="form-group">
                    <label for="content">Content:</label>
                    <textarea id="content" name="content" required>${blog.content}</textarea>
                </div>

                <div class="form-group">
                    <label for="fullContent">Full Content:</label>
                    <textarea id="fullContent" name="fullContent" required>${blog.full_content}</textarea>
                </div>

                <input type="submit" value="Update Blog">
            </form>
        </div>
    </body>
</html>
