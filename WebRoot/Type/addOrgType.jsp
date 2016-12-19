<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>无标题文档</title>
</head>

<body>
<form action="../ServletPage?method=addtype" method="post">
<table width="600" border="1">
<input type="hidden" name="orgtypeid">
  <tr>
    <td bgcolor="#99CCFF">类别名称</td>
    <td width="140" bgcolor="#99CCFF">备注</td>
  </tr>
  <tr>
    <td bgcolor="#CCCC99"><input type="text" name="orgtypename"  style="border: white;border-spacing: 0px;"></td>
    <td bgcolor="#CCCC99"><input type="text" name="note" style="border: white;border-spacing: 0px;"></td>
  </tr>

  <tr bgcolor="pink">
  <td></td>
   <td colspan="2">
       <input type="submit" value="保存">
  </td>
 
  </tr>
</table>
</form>
</body>
</html>
