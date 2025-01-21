<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>TVPSS Management System - Choose Role</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
            padding: 20px;
        }
        .role-selection-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .role-selection-container h2 {
            color: #003366;
            margin-bottom: 20px;
        }
        .role-selection-container .role-options {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }
        .role-selection-container a {
            display: inline-block;
            padding: 15px 25px;
            background: #003366;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            transition: background 0.3s ease;
        }
        .role-selection-container a:hover {
            background: #0055a5;
        }
    </style>
</head>
<body>
<div class="role-selection-container">
    <h2>Welcome to TVPSS Management System</h2>
    <p>Please choose your role to proceed:</p>
    <div class="role-options">
    <a href="${pageContext.request.contextPath}/login?role=admin">Admin</a>
    <a href="${pageContext.request.contextPath}/login?role=teacher">Teacher</a>
    <a href="${pageContext.request.contextPath}/login?role=student">Student</a>
</div>

</div>
</body>
</html>

