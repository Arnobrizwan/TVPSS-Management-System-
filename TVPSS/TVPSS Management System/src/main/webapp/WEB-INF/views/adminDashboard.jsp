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
    }

    .stats-cards {
        display: flex;
        justify-content: space-around;
        gap: 20px;
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
    }

    .card p {
        font-size: 1.5rem;
        font-weight: bold;
        color: #333;
    }

    .recent-activities h2 {
        color: #003366;
    }

    .recent-activities ul {
        list-style: none;
        padding: 0;
    }

    .recent-activities ul li {
        background: #fff;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
</style>

<div class="dashboard-container">
    <h1>Administrator Dashboard</h1>

    <div class="stats-cards">
        <div class="card">
            <h3>Total Schools</h3>
            <p>${totalSchools}</p>
        </div>
        <div class="card">
            <h3>Active Users</h3>
            <p>${activeUsers}</p>
        </div>
        <div class="card">
            <h3>Pending Approvals</h3>
            <p>${pendingApprovals}</p>
        </div>
    </div>

    <div class="recent-activities">
        <h2>Recent Activities</h2>
        <ul>
            <c:forEach var="activity" items="${recentActivities}">
                <li>${activity}</li>
            </c:forEach>
        </ul>
    </div>
</div>

<%@ include file="footer.jsp" %>
