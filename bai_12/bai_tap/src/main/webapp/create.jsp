<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/15/2022
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Create student</h2>
<p style="color: red">${msg}</p>
<form action="/user?action=create"  method="post">
    <p>Id:</p>
    <input type="text" name="id">
    <p>Name:</p>
    <input type="text" name="name">
    <p>Email: </p>
    <input type="text" name="email">
    <p>Country: </p>
    <input type="text" name="country">
    <button type="submit">Create</button>
</form>
</body>
</html>
