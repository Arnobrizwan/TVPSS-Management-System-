<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<style>
    .dashboard-container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .dashboard-container h1 {
        color: #003366;
        margin-bottom: 20px;
    }

    .dashboard-container p {
        font-size: 1.2rem;
    }

    .assignment-list {
        margin-top: 20px;
        list-style-type: none;
        padding-left: 0;
    }

    .assignment-item {
        padding: 10px;
        margin-bottom: 10px;
        background-color: #e0f7fa;
        border-radius: 5px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .assignment-item a {
        text-decoration: none;
        color: #003366;
        font-weight: bold;
    }

    .assignment-item a:hover {
        text-decoration: underline;
    }
</style>

<div class="dashboard-container">
    <h1>Student Dashboard</h1>
    <p>Welcome to your dashboard! Here are your current assignments:</p>

    <ul class="assignment-list">
        <c:forEach var="assignment" items="${assignments}">
            <li class="assignment-item">
                <a href="${pageContext.request.contextPath}/student/viewAssignment?assignmentId=${assignment.id}">
                    ${assignment.title}
                </a> 
                - Due: ${assignment.dueDate}
            </li>
        </c:forEach>
    </ul>

    <a href="${pageContext.request.contextPath}/student/profile" class="action-button">View Profile</a>
</div>

<%@ include file="footer.jsp" %>
