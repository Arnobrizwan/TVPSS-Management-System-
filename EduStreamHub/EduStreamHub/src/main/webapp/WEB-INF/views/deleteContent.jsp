<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<style>
    .delete-container {
        max-width: 600px;
        margin: 50px auto;
        padding: 30px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        font-family: Arial, sans-serif;
        text-align: center;
    }

    .delete-container h1 {
        color: #003366;
        margin-bottom: 20px;
    }

    .delete-container p {
        font-size: 1.1rem;
        margin-bottom: 30px;
        color: #333;
    }

    .form-actions {
        display: flex;
        justify-content: center;
        gap: 20px;
    }

    .form-actions button {
        padding: 10px 20px;
        font-size: 1rem;
        background-color: #c82333;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .form-actions button:hover {
        background-color: #dc3545;
    }

    .form-actions a {
        text-decoration: none;
        padding: 10px 20px;
        font-size: 1rem;
        border-radius: 5px;
        background-color: #ccc;
        color: #333;
        transition: background-color 0.3s;
    }

    .form-actions a:hover {
        background-color: #bbb;
    }
</style>

<div class="delete-container">
    <h1>Delete Content</h1>
    <p>Are you sure you want to delete the content titled "<strong>${content.title}</strong>"?</p>
    <form action="${pageContext.request.contextPath}/content/delete" method="post">
        <input type="hidden" name="id" value="${content.id}" />
        <div class="form-actions">
            <button type="submit">Yes, Delete</button>
            <a href="${pageContext.request.contextPath}/content/library">Cancel</a>
        </div>
    </form>
</div>

<%@ include file="footer.jsp" %>
