<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>无标题文档</title>
</head>
<body>

<form action="../ServletPage?method=saveorg" method="post">
<center>
<table width="620" border="1">
<input type="hidden" name="orgid">
  <tr>
    <td width="110" bgcolor="#99CCFF">类别编号</td>
    <td width="200" bgcolor="#CCCC99">
    <select name="orgtypeid">
        <c:forEach items="${orgtype}" var="orgtype">
          <option value="${orgtype.orgtypeid}">${orgtype.orgtypename}</option>
        </c:forEach>
    </select>
   </td>
    <td width="110" bgcolor="#99CCFF">组织内部编号</td>
    
    <td width="200" bgcolor="#CCCC99">
        <input type="text" name="orgcode" style="border: white;border-spacing: 0px">
    </td>
    
  </tr>
  <tr>
    <td bgcolor="#99CCFF">组织名称</td>
    <td bgcolor="#CCCC99"><input type="text" name="orgname" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">地址</td>
    <td bgcolor="#CCCC99"><input type="text" name="address" style="border: white;border-spacing: 0px"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">主管负责人</td>
    <td bgcolor="#CCCC99"><input type="text" name="director" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">联系电话</td>
    <td bgcolor="#CCCC99"><input type="text" name="telephone" style="border: white;border-spacing: 0px"></td>
  
  </tr>
  <tr>
    <td bgcolor="#99CCFF">传真</td>
    <td bgcolor="#CCCC99"><input type="text" name="fax" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">邮政编码</td>
    <td bgcolor="#CCCC99"><input type="text" name="postcode" style="border: white;border-spacing: 0px"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">网站</td>
    <td bgcolor="#CCCC99"><input type="text" name="web" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">信用级别</td>
    <td bgcolor="#CCCC99"><input type="text" name="safelevelid" style="border: white;border-spacing: 0px"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">旱地面积</td>
    <td bgcolor="#CCCC99"><input type="text" name="firmlandarea" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">水域面积</td>
    <td bgcolor="#CCCC99"><input type="text" name="waterlandarea" style="border: white;border-spacing: 0px"></td>
   
  </tr>
  <tr>
    <td bgcolor="#99CCFF">养殖水面面积</td>
    <td bgcolor="#CCCC99"><input type="text" name="pondarea" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">林果面积</td>
    <td bgcolor="#CCCC99"><input type="text" name="forestandorchardarea" style="border: white;border-spacing: 0px"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">备注</td>
    <td bgcolor="#CCCC99" colspan="3"><textarea rows="" name="note" cols="70"></textarea></td>
   
   
  </tr>
  <tr bgcolor="pink">
  

      <td colspan="2">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="submit" value="提交" style="border: white;border-spacing: 0px">
      </td>
      <td colspan="2">
          <a href="../ServletPage?method=org">返回前页</a>
      </td>
      
  </tr>
</table>
</center>
</form>


</body>
</html>
