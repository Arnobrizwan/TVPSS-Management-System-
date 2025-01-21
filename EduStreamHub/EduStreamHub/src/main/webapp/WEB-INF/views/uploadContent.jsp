<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<style>
    .form-container {
        max-width: 600px;
        margin: 30px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        font-family: Arial, sans-serif;
    }

    .form-container h1 {
        text-align: center;
        color: #003366;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #333;
    }

    .form-group input[type="text"],
    .form-group textarea,
    .form-group input[type="file"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1rem;
        box-sizing: border-box;
    }

    .form-group input[type="submit"] {
        width: 100%;
        padding: 10px 20px;
        font-size: 1rem;
        background-color: #003366;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .form-group input[type="submit"]:hover {
        background-color: #0055a5;
    }
</style>
<div class="form-container">
    <h1>Upload New Content</h1>
    <form action="${pageContext.request.contextPath}/content/save" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="title">Content Title:</label>
            <input type="text" name="title" id="title" placeholder="Enter content title" required>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <textarea name="description" id="description" placeholder="Enter content description" required></textarea>
        </div>
        <div class="form-group">
            <label for="file">Select File (optional):</label>
            <input type="file" name="file" id="file" accept="video/*,image/*,application/pdf">
        </div>
        <div class="form-group">
            <input type="submit" value="Upload Content">
        </div>
    </form>
</div>
<%@ include file="footer.jsp" %>
