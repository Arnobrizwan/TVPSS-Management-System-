<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

Check if user is admin
<c:if test="${not empty userRole and userRole eq 'ADMIN'}">
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
            justify-content: space-between;
        }

        .form-actions button {
            padding: 10px 20px;
            font-size: 1rem;
            background-color: #003366;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin: 0 10px;
        }

        .form-actions button:hover {
            background-color: #0055a5;
        }

        .cancel-link {
            text-decoration: none;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            background-color: #ccc;
            color: #333;
            transition: background-color 0.3s;
            display: inline-block;
        }

        .cancel-link:hover {
            background-color: #bbb;
        }
    </style>

    <div class="delete-container">
        <h1>Delete School</h1>
        <p>Are you sure you want to delete the school "<strong>${school.name}</strong>"?</p>
        <form action="${pageContext.request.contextPath}/schools/delete" method="post">
            <input type="hidden" name="id" value="${school.id}">
            <div class="form-actions">
                <button type="submit">Yes, Delete</button>
                <a href="${pageContext.request.contextPath}/schools" class="cancel-link">Cancel</a>
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
            justify-content: space-between;
        }
        .form-actions button {
            padding: 10px 20px;
            font-size: 1rem;
            background-color: #003366;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin: 0 10px;
        }
        .form-actions button:hover {
            background-color: #0055a5;
        }
        .cancel-link {
            text-decoration: none;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            background-color: #ccc;
            color: #333;
            transition: background-color 0.3s;
            display: inline-block;
        }
        .cancel-link:hover {
            background-color: #bbb;
        }
    </style>

    <div class="delete-container">
        <h1>Delete School</h1>
        <p>Are you sure you want to delete the school "<strong>${school.name}</strong>"?</p>
        <form action="${pageContext.request.contextPath}/schools/delete" method="post">
            <input type="hidden" name="id" value="${school.id}">
            <div class="form-actions">
                <button type="submit">Yes, Delete</button>
                <a href="${pageContext.request.contextPath}/schools" class="cancel-link">Cancel</a>
            </div>
        </form>
    </div>
</c:if>

<c:if test="${empty userRole or userRole ne 'ADMIN'}">
    <p>You are not authorized to access this page. Please log in as an admin.</p>
</c:if>

<%@ include file="footer.jsp" %>
 