<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/4/2022
  Time: 9:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        td{
            padding: 10px;
        }
    </style>
</head>
<body>
<h1>Product list</h1>
<p>
    <a href="/product/create.jsp">Tạo sản phẩm mới</a>
</p>
<table border="1">
    <tr>
        <td>id</td>
        <td>Name Product</td>
        <td>Price</td>
        <td>Status</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${productList}" var="productList">
        <tr>
            <td>${productList.id}</td>
            <td>${productList.name}</td>
            <td>${productList.price}</td>
            <td>${productList.status}</td>
            <td><a href="">Edit</a></td>
            <td><a href="">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
