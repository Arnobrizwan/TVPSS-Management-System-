<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        /* General Body Styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Main Content Styles */
        .main-content {
            flex: 1; /* Ensures content stretches to fill the space */
        }

        /* Footer Styles */
        .footer {
            text-align: center;
            padding: 15px;
            background-color: #003366;
            color: white;
            font-size: 0.9rem;
        }

        .footer p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="main-content">
        <!-- Main content dynamically loaded here -->
    </div>
    <div class="footer">
        <p>&copy; 2025 TVPSS Management System. All rights reserved.</p>
        <p>Powered by TVPSS Technology Team</p>
    </div>
</body>
</html>
