<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<style>
    .content-library-container {
        max-width: 1200px;
        margin: 20px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .filters {
        display: flex;
        justify-content: space-between;
        gap: 10px;
        margin-bottom: 20px;
    }

    .filters select, .filters input, .filters button {
        padding: 10px;
        font-size: 1rem;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .content-list {
        list-style: none;
        padding: 0;
    }

    .content-item {
        background: #f9f9f9;
        padding: 15px;
        margin-bottom: 15px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .content-actions a {
        padding: 8px 15px;
        border-radius: 5px;
        font-size: 0.9rem;
        font-weight: bold;
        color: white;
    }

    .content-actions a.edit-btn {
        background-color: #0055a5;
    }

    .content-actions a.delete-btn {
        background-color: #c82333;
    }

    .pagination a {
        text-decoration: none;
        padding: 8px 12px;
        border-radius: 5px;
        font-size: 1rem;
        color: #003366;
        background-color: #f4f6f8;
        border: 1px solid #ccc;
    }

    .pagination a:hover {
        background-color: #003366;
        color: white;
    }
</style>

<div class="content-library-container">
    <h1>Content Library</h1>

    <div class="filters">
        <form action="${pageContext.request.contextPath}/content/library" method="get">
            <select name="category">
                <option value="">All Categories</option>
                <option value="Admin">Admin</option>
                <option value="Teacher">Teacher</option>
            </select>
            <select name="sort">
                <option value="date">Sort by Date</option>
                <option value="title">Sort by Title</option>
            </select>
            <input type="text" name="query" placeholder="Search content..." />
            <button type="submit">Apply</button>
        </form>
    </div>

    <ul class="content-list">
        <c:forEach var="content" items="${contents}">
            <li class="content-item">
                <h3>${content.title}</h3>
                <p>${content.description}</p>
                <div class="content-actions">
                    <a href="${pageContext.request.contextPath}/content/edit?id=${content.id}" class="edit-btn">Edit</a>
                    <a href="${pageContext.request.contextPath}/content/delete?id=${content.id}" class="delete-btn">Delete</a>
                </div>
            </li>
        </c:forEach>
    </ul>

    <div class="pagination">
        <a href="#">1</a>
        <a href="#" class="active">2</a>
        <a href="#">3</a>
    </div>
</div>

<%@ include file="footer.jsp" %>
