<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<style>
    .form-container {
        max-width: 600px;
        margin: 50px auto;
        padding: 30px;
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
    .form-group select {
        width: 100%;
        padding: 10px;
        font-size: 1rem;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .form-group button {
        padding: 10px 20px;
        background-color: #003366;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .form-group button:hover {
        background-color: #0055a5;
    }
</style>

<div class="form-container">
    <h1>Add New School</h1>
    <form action="${pageContext.request.contextPath}/schools/save" method="post" class="styled-form">
        <div class="form-group">
            <label for="name">School Name:</label>
            <input type="text" name="name" id="name" class="form-input" required>
        </div>
        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" name="location" id="location" class="form-input" required>
        </div>
        <div class="form-group">
            <label for="status">Status:</label>
            <select name="status" id="status" class="form-select">
                <option value="Active">Active</option>
                <option value="Inactive">Inactive</option>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" value="Save School" class="form-submit-btn">
        </div>
    </form>
</div>

<%@ include file="footer.jsp" %>
 --%>
 
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<c:if test="${empty userRole or userRole != 'ADMIN'}">
    <div style="color: red; text-align: center; font-size: 1.5rem;">
        You do not have the necessary permissions to add a school. Please contact an administrator.
    </div>
    <br>
    <c:redirect url="${pageContext.request.contextPath}/dashboard"/> <!-- Redirect to another page (e.g., dashboard) -->
</c:if>

<style>
    .form-container {
        max-width: 600px;
        margin: 50px auto;
        padding: 30px;
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
    .form-group select {
        width: 100%;
        padding: 10px;
        font-size: 1rem;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .form-group button {
        padding: 10px 20px;
        background-color: #003366;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .form-group button:hover {
        background-color: #0055a5;
    }
</style>

<div class="form-container">
    <h1>Add New School</h1>
    <form action="${pageContext.request.contextPath}/schools/save" method="post" class="styled-form">
        <div class="form-group">
            <label for="name">School Name:</label>
            <input type="text" name="name" id="name" class="form-input" required>
        </div>
        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" name="location" id="location" class="form-input" required>
        </div>
        <div class="form-group">
            <label for="status">Status:</label>
            <select name="status" id="status" class="form-select">
                <option value="Active">Active</option>
                <option value="Inactive">Inactive</option>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" value="Save School" class="form-submit-btn">
        </div>
    </form>
</div>

<%@ include file="footer.jsp" %>

 