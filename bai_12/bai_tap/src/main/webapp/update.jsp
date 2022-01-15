<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/15/2022
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user?action=update" method="post">
    <input type="hidden" name="id" value="${user.id}">
    <p>Name:</p>
    <input type="text" name="name" value="${user.name}">
    <p>Email: </p>
    <input type="text" name="email" value="${user.email}">
    <p>Country: </p>
    <input type="text" name="country" value="${user.country}">
    <button type="submit">Update</button>
</form>
</body>
</html>
