<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>�ޱ����ĵ�</title>
</head>
<body>

<form action="../ServletPage?method=saveorg" method="post">
<center>
<table width="620" border="1">
<input type="hidden" name="orgid">
  <tr>
    <td width="110" bgcolor="#99CCFF">�����</td>
    <td width="200" bgcolor="#CCCC99">
    <select name="orgtypeid">
        <c:forEach items="${orgtype}" var="orgtype">
          <option value="${orgtype.orgtypeid}">${orgtype.orgtypename}</option>
        </c:forEach>
    </select>
   </td>
    <td width="110" bgcolor="#99CCFF">��֯�ڲ����</td>
    
    <td width="200" bgcolor="#CCCC99">
        <input type="text" name="orgcode" style="border: white;border-spacing: 0px">
    </td>
    
  </tr>
  <tr>
    <td bgcolor="#99CCFF">��֯����</td>
    <td bgcolor="#CCCC99"><input type="text" name="orgname" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">��ַ</td>
    <td bgcolor="#CCCC99"><input type="text" name="address" style="border: white;border-spacing: 0px"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">���ܸ�����</td>
    <td bgcolor="#CCCC99"><input type="text" name="director" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">��ϵ�绰</td>
    <td bgcolor="#CCCC99"><input type="text" name="telephone" style="border: white;border-spacing: 0px"></td>
  
  </tr>
  <tr>
    <td bgcolor="#99CCFF">����</td>
    <td bgcolor="#CCCC99"><input type="text" name="fax" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">��������</td>
    <td bgcolor="#CCCC99"><input type="text" name="postcode" style="border: white;border-spacing: 0px"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">��վ</td>
    <td bgcolor="#CCCC99"><input type="text" name="web" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">���ü���</td>
    <td bgcolor="#CCCC99"><input type="text" name="safelevelid" style="border: white;border-spacing: 0px"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">�������</td>
    <td bgcolor="#CCCC99"><input type="text" name="firmlandarea" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">ˮ�����</td>
    <td bgcolor="#CCCC99"><input type="text" name="waterlandarea" style="border: white;border-spacing: 0px"></td>
   
  </tr>
  <tr>
    <td bgcolor="#99CCFF">��ֳˮ�����</td>
    <td bgcolor="#CCCC99"><input type="text" name="pondarea" style="border: white;border-spacing: 0px"></td>
    <td bgcolor="#99CCFF">�ֹ����</td>
    <td bgcolor="#CCCC99"><input type="text" name="forestandorchardarea" style="border: white;border-spacing: 0px"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">��ע</td>
    <td bgcolor="#CCCC99" colspan="3"><textarea rows="" name="note" cols="70"></textarea></td>
   
   
  </tr>
  <tr bgcolor="pink">
  

      <td colspan="2">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="submit" value="�ύ" style="border: white;border-spacing: 0px">
      </td>
      <td colspan="2">
          <a href="../ServletPage?method=org">����ǰҳ</a>
      </td>
      
  </tr>
</table>
</center>
</form>


</body>
</html>
