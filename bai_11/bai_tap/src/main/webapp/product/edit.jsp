<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/5/2022
  Time: 8:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Cập nhật sản phẩm</h1>
<form action="/product?action=edit" method="post">
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="text" name="id" value="${product.id}"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" value="${product.name}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" value="${product.price}"></td>
            </tr>
            <tr>
                <td>Status: </td>
                <td><input type="text" name="status" value="${product.status}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="cập nhật"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
