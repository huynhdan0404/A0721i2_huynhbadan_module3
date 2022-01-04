<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/3/2022
  Time: 7:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
      h1{
        text-align: center;
      }
      th,td{
        text-align: center;
        line-height: 80px;
      }

    </style>
  </head>
  <body>
  <h1>Danh Sách Khách Hàng</h1>
  <table class="table">
    <thead>
    <tr>
      <th scope="col">Tên</th>
      <th scope="col">Ngày sinh</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <th>Mai văn Hoàn</th>
      <td>1980-10-10</td>
      <td>Hà Nội</td>
      <td><img height="80px" width="auto" src="https://i.pinimg.com/564x/35/09/33/3509331600a792d6918a366390e07a81.jpg" alt=""></td>
    </tr>
    <tr>
      <th>Nguyễn Văn Nam</th>
      <td>1999-05-03</td>
      <td>Cần Thơ</td>
      <td><img height="80px" width="auto" src="https://i.pinimg.com/564x/35/09/33/3509331600a792d6918a366390e07a81.jpg" alt=""></td>
    </tr>
    <tr>
      <th>Trần Đăng Khoa</th>
      <td>2000-11-11</td>
      <td>Đà Nẵng</td>
      <td><img height="80px" width="auto" src="https://i.pinimg.com/564x/35/09/33/3509331600a792d6918a366390e07a81.jpg" alt=""></td>
    </tr>
    </tbody>
  </table>
  </body>
</html>
