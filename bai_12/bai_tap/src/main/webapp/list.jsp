<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/15/2022
  Time: 8:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p style="color: red">${msg}</p>
<a href="/user?action=create">Create new uer</a>
<h2>List user</h2>
<table style="width: 700px;" border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
    </tr>
    <c:forEach var="userList" items="${userList}">
        <tr>
            <td><c:out value="${userList.id}"></c:out></td>
            <td><c:out value="${userList.name}"></c:out></td>
            <td><c:out value="${userList.email}"></c:out></td>
            <td><c:out value="${userList.country}"></c:out></td>
            <td><a href="/user?action=update&id=${userList.id}">Update</a></td>
            <td><a href="/user?action=delete&id=${userList.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
