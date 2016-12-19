<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>无标题文档</title>
</head>

<body>
<c:if test="${typexinxi==null}">
<script>
     alert("已找到子记录，不能删除");
</script>
</c:if>

<font color="blue" style="font-size:18px;font: bold;">组织类型&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		<legend><font color=red style="font-size:20px;font: bold;">组织信息</font></legend>
 			 <fieldset style="font-size:19px;font: bold;">
<table width="760" border="1" cellspacing="2" cellpadding="0" border="0"
						style="width: 100%; background-color: #99CC99;">
  <tr>
    <td height="45" bgcolor="#99CCFF">类别编号</td>
    <td bgcolor="#99CCFF">类别名称</td>
    <td width="140" bgcolor="#99CCFF">备注</td>
   
    <td bgcolor="#99CCFF"><a href="Type/addOrgType.jsp">添加</a></td>
  </tr>
 <c:forEach items="${type}" var="type">
  <tr>
    <td height="5" bgcolor="#CCCC99">${type.orgtypeid}</td>
    <td bgcolor="#CCCC99">${type.orgtypename}</td>
    <td bgcolor="#CCCC99">${type.note}</td>
   
    <td bgcolor="#CCCC99"><p><a href="ServletPage?method=xiutype&orgtypeid=${type.orgtypeid}">※修改</a></p>
    <p><a href="ServletPage?method=deltype&orgtypeid=${type.orgtypeid}">※删除</a></p></td>
  </tr>
  </c:forEach>
</table>
  </fieldset>
</body>
</html>
