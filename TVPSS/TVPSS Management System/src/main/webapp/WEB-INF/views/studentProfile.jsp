<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<style>
    .profile-container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .profile-container h1 {
        color: #003366;
        text-align: center;
        margin-bottom: 20px;
    }

    .profile-container .profile-details {
        margin-bottom: 30px;
    }

    .profile-container .profile-details p {
        font-size: 1.2rem;
        margin: 10px 0;
        color: #333;
    }

    .profile-container .back-button {
        padding: 10px 20px;
        background-color: #003366;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
    }

    .profile-container .back-button:hover {
        background-color: #0055a5;
    }
</style>

<div class="profile-container">
    <h1>Student Profile</h1>

    <div class="profile-details">
        <p><strong>ID:</strong> ${student.id}</p> <!-- Add ID here -->
        <p><strong>Name:</strong> ${student.name}</p>
        <p><strong>Email:</strong> ${student.email}</p>
        <p><strong>Course:</strong> ${student.course}</p>
        <p><strong>Status:</strong> ${student.status}</p>
    </div>

    <a href="${pageContext.request.contextPath}/student/dashboard" class="back-button">Back to Dashboard</a>
</div>

<%@ include file="footer.jsp" %>
