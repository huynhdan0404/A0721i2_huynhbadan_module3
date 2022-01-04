<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/4/2022
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Tạo mới sản phẩm</h1>
<p>${msg}</p>
<form action="/product?action=create" method="post">
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>Status: </td>
                <td><input type="text" name="status"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="tạo sản phẩm"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
