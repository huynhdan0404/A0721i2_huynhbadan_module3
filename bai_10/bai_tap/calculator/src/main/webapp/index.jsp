<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/3/2022
  Time: 8:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Simple Calculator</h1>
  <form action="/calculator" method="get">
    <div>
      <label>First operrand</label>
      <input type="number" name="first-operrand">
    </div>
    <div>
      <label>Operand</label>
      <select name="calculator">
        <option name="addition" value="addition">addition</option>
        <option name="Subtraction" value="Subtraction">Subtraction</option>
        <option name="multiplication" value="multiplication">multiplication</option>
        <option name="division" value="division">division</option>
      </select>
    </div>
    <div>
      <label>Second operand</label>
      <input type="number" name="second-operand">
    </div>
    <input type="submit" value="Calculator">
  </form>
  </body>
</html>
