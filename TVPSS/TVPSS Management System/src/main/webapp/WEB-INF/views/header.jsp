<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>TVPSS Management System</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #f4f6f8;
        }

        /* Header Styles */
        .header {
            background-color: #003366;
            color: white;
            padding: 20px 0;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .header .logo {
            text-align: center;
        }

        .header .logo h1 {
            margin: 0;
            font-size: 2.5rem;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .nav {
            margin-top: 10px;
            text-align: center;
        }

        .nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: inline-flex;
            gap: 30px;
        }

        .nav ul li {
            display: inline;
        }

        .nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 1.2rem;
            font-weight: 500;
            padding: 10px 15px;
            transition: background-color 0.3s, color 0.3s;
        }

        .nav ul li a:hover {
            background-color: #0055a5;
            border-radius: 5px;
        }

        /* Footer Styles */
        .footer {
            text-align: center;
            padding: 15px;
            background-color: #003366;
            color: white;
            font-size: 0.9rem;
            margin-top: 20px;
        }

        .footer p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
  <div class="header">
      <div class="logo">
          <h1>TVPSS Management System</h1>
      </div>
      <div class="nav">
          <ul>
              <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
              <li><a href="${pageContext.request.contextPath}/schools">Schools</a></li>
              <li><a href="${pageContext.request.contextPath}/content/library">Content Library</a></li>
              <li><a href="${pageContext.request.contextPath}/reports">Reports</a></li>
              <li><a href="${pageContext.request.contextPath}/upload">Upload File</a></li>
              <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
          </ul>
      </div>
  </div>
</body>
</html>
