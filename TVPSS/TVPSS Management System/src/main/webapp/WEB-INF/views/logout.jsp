<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Logout - TVPSS Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .logout-container {
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #003366;
            margin-bottom: 10px;
        }
        p {
            font-size: 1rem;
            margin-bottom: 20px;
        }
        .redirect {
            font-size: 0.9rem;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="logout-container">
        <h2>Logged Out</h2>
        <p>You have successfully logged out of the TVPSS Management System.</p>
        <p class="redirect">Redirecting you to the login page...</p>
    </div>
    <%
        // Invalidate the current session to log the user out
        session.invalidate();

        // Set a delay before redirection
        response.setHeader("Refresh", "3; URL=" + request.getContextPath() + "/login");
    %>
</body>
</html>
