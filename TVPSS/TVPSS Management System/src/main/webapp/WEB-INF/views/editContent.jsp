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
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        font-weight: bold;
        margin-bottom: 5px;
    }

    .form-group input,
    .form-group textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .form-actions {
        text-align: center;
    }

    .form-actions button {
        padding: 10px 20px;
        font-size: 1rem;
        color: white;
        background-color: #003366;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .form-actions button:hover {
        background-color: #0055a5;
    }

    .form-actions a {
        margin-left: 10px;
        text-decoration: none;
        padding: 10px 20px;
        font-size: 1rem;
        background-color: #ccc;
        color: #333;
        border-radius: 5px;
    }

    .form-actions a:hover {
        background-color: #bbb;
    }
</style>

<div class="form-container">
    <h1>Edit Content</h1>
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
