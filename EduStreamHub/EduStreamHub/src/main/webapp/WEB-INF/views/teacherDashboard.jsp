<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<style>
    .dashboard-container {
        max-width: 1200px;
        margin: 20px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        font-family: Arial, sans-serif;
    }
    .dashboard-container h1 {
        text-align: center;
        color: #003366;
        margin-bottom: 20px;
    }
    .stats-cards {
        display: flex;
        gap: 20px;
        justify-content: space-around;
    }
    .card {
        flex: 1;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    .card h3 {
        margin-bottom: 10px;
        color: #003366;
    }
    .card p {
        font-size: 1.5rem;
        font-weight: bold;
        color: #333;
    }
    .teacher-actions {
        margin-top: 30px;
    }
    .teacher-actions h2 {
        color: #003366;
        margin-bottom: 15px;
    }
    .teacher-actions ul {
        list-style: none;
        padding: 0;
        display: flex;
        gap: 20px;
        justify-content: center;
    }
    .teacher-actions ul li {
        flex: 1;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        text-align: center;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    .teacher-actions ul li a {
        text-decoration: none;
        color: #003366;
        font-weight: bold;
        font-size: 1.2rem;
        display: block;
        margin-top: 10px;
        padding: 10px;
        border-radius: 5px;
        background-color: #003366;
        color: #fff;
        transition: background-color 0.3s;
    }
    .teacher-actions ul li a:hover {
        background-color: #0055a5;
    }
</style>
<div class="dashboard-container">
    <h1>Teacher Dashboard</h1>
    <div class="stats-cards">
        <div class="card">
            <h3>Total Classes</h3>
            <p>${totalClasses}</p>
        </div>
        <div class="card">
            <h3>Uploaded Content</h3>
            <p>${uploadedContent}</p>
        </div>
        <div class="card">
            <h3>Pending Approvals</h3>
            <p>${pendingApprovals}</p>
        </div>
    </div>
    <div class="teacher-actions">
        <h2>Actions</h2>
        <ul>
            <li>
                <h3>Upload Content</h3>
                <a href="${pageContext.request.contextPath}/content/upload">Upload Now</a>
            </li>
            <li>
                <h3>View Classes</h3>
                <a href="${pageContext.request.contextPath}/classes">View Classes</a>
            </li>
            <li>
                <h3>Manage Students</h3>
                <a href="${pageContext.request.contextPath}/students/manage">Manage Now</a>
            </li>
        </ul>
    </div>
</div>
<%@ include file="footer.jsp" %>
