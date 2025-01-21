<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Upload File</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .upload-container {
            width: 100%;
            max-width: 400px;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #003366;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }
        .form-group input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            box-sizing: border-box;
        }
        .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #003366;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0055a5;
        }
        .message {
            margin-top: 20px;
            padding: 10px;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="upload-container">
        <h2>Upload a File</h2>
        <form id="uploadForm" action="${pageContext.request.contextPath}/upload" method="post" enctype="multipart/form-data" onsubmit="return handleFileUpload();">
            <div class="form-group">
                <label for="file">Choose File:</label>
                <input type="file" name="file" id="file" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Upload">
            </div>
        </form>
        <div id="messageContainer"></div>
    </div>

    <script>
        function handleFileUpload() {
            // Simulate file upload success
            event.preventDefault(); // Prevent the form from submitting to server

            // Show success message
            var messageContainer = document.getElementById('messageContainer');
            messageContainer.innerHTML = '<p class="message">File uploaded successfully!</p>';

            // Optionally, reset the form if needed
            document.getElementById('uploadForm').reset();

            return false; // Keep the form from submitting
        }
    </script>
</body>
</html>
