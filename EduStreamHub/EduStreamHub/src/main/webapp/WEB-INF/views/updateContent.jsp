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
    .form-group textarea {
        width: 100%;
        padding: 10px;
        font-size: 1rem;
        border: 1px solid #ccc;
        border-radius: 5px;
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
    <h1>Update Content</h1>
    <form action="${pageContext.request.contextPath}/content/update" method="post">
        <input type="hidden" name="id" value="${content.id}" />
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" value="${content.title}" required />
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <textarea id="description" name="description" required>${content.description}</textarea>
        </div>
        <div class="form-actions">
            <button type="submit">Update</button>
            <a href="${pageContext.request.contextPath}/content/library">Cancel</a>
        </div>
    </form>
</div>
<%@ include file="footer.jsp" %>
