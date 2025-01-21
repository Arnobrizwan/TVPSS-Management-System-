<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

Check if user is admin
<c:if test="${not empty userRole and userRole eq 'ADMIN'}">
    <style>
        .edit-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            font-family: Arial, sans-serif;
        }

        .edit-container h1 {
            text-align: center;
            color: #003366;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #333;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            outline: none;
            transition: border-color 0.3s;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #003366;
        }

        .form-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .form-actions button {
            padding: 10px 20px;
            font-size: 1rem;
            background-color: #003366;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-actions button:hover {
            background-color: #0055a5;
        }

        .form-actions a {
            text-decoration: none;
            color: #0055a5;
            font-size: 0.9rem;
        }

        .form-actions a:hover {
            text-decoration: underline;
        }
    </style>

    <div class="edit-container">
        <h1>Edit School</h1>
        <form action="${pageContext.request.contextPath}/schools/update" method="post">
            <div class="form-group">
                <input type="hidden" name="id" value="${school.id}">
            </div>
            <div class="form-group">
                <label for="name">School Name:</label>
                <input type="text" id="name" name="name" value="${school.name}" required>
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" value="${school.location}" required>
            </div>
            <div class="form-group">
                <label for="status">Status:</label>
                <select id="status" name="status">
                    <option value="Active" ${school.status == 'Active' ? 'selected' : ''}>Active</option>
                    <option value="Inactive" ${school.status == 'Inactive' ? 'selected' : ''}>Inactive</option>
                </select>
            </div>
            <div class="form-actions">
                <button type="submit">Save Changes</button>
                <a href="${pageContext.request.contextPath}/schools">Back to List</a>
            </div>
        </form>
    </div>
</c:if>

<c:if test="${empty userRole or userRole ne 'ADMIN'}">
    <p>You are not authorized to access this page. Please log in as an admin.</p>
</c:if>

<%@ include file="footer.jsp" %>
 --%>
 
 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<c:if test="${not empty userRole and userRole eq 'ADMIN'}">
    <style>
        .edit-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            font-family: Arial, sans-serif;
        }
        .edit-container h1 {
            text-align: center;
            color: #003366;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #333;
        }
        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            outline: none;
            transition: border-color 0.3s;
        }
        .form-group input:focus,
        .form-group select:focus {
            border-color: #003366;
        }
        .form-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .form-actions button {
            padding: 10px 20px;
            font-size: 1rem;
            background-color: #003366;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .form-actions button:hover {
            background-color: #0055a5;
        }
        .form-actions a {
            text-decoration: none;
            color: #0055a5;
            font-size: 0.9rem;
        }
        .form-actions a:hover {
            text-decoration: underline;
        }
    </style>

    <div class="edit-container">
        <h1>Edit School</h1>
        <form action="${pageContext.request.contextPath}/schools/update" method="post">
            <div class="form-group">
                <input type="hidden" name="id" value="${school.id}">
            </div>
            <div class="form-group">
                <label for="name">School Name:</label>
                <input type="text" id="name" name="name" value="${school.name}" required>
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" value="${school.location}" required>
            </div>
            <div class="form-group">
                <label for="status">Status:</label>
                <select id="status" name="status">
                    <option value="Active" ${school.status == 'Active' ? 'selected' : ''}>Active</option>
                    <option value="Inactive" ${school.status == 'Inactive' ? 'selected' : ''}>Inactive</option>
                </select>
            </div>
            <div class="form-actions">
                <button type="submit">Save Changes</button>
                <a href="${pageContext.request.contextPath}/schools">Back to List</a>
            </div>
        </form>
    </div>
</c:if>

<c:if test="${empty userRole or userRole ne 'ADMIN'}">
    <p>You are not authorized to access this page. Please log in as an admin.</p>
</c:if>

<%@ include file="footer.jsp" %>
 