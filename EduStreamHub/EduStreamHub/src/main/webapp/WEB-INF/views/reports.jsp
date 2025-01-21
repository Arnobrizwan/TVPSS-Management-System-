<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<style>
    .reports-container {
        max-width: 1200px;
        margin: 20px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        font-family: Arial, sans-serif;
    }
    .reports-container h1 {
        text-align: center;
        color: #003366;
        margin-bottom: 20px;
    }
    .stats-table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    .stats-table th, .stats-table td {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: center;
    }
    .stats-table th {
        background-color: #003366;
        color: white;
    }
    .stats-table td {
        background-color: #fff;
    }
</style>
<div class="reports-container">
    <h1>Reports</h1>
    <table class="stats-table">
        <thead>
            <tr>
                <th>Statistic</th>
                <th>Count</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Total Contents</td>
                <td>${totalContents}</td>
            </tr>
            <tr>
                <td>Images</td>
                <td>${totalImages}</td>
            </tr>
            <tr>
                <td>Videos</td>
                <td>${totalVideos}</td>
            </tr>
            <tr>
                <td>PDFs</td>
                <td>${totalPdfs}</td>
            </tr>
        </tbody>
    </table>
</div>
<%@ include file="footer.jsp" %>
