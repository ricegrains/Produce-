<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>�ޱ����ĵ�</title>
</head>

<body>
<c:if test="${typexinxi==null}">
<script>
     alert("���ҵ��Ӽ�¼������ɾ��");
</script>
</c:if>

<font color="blue" style="font-size:18px;font: bold;">��֯����&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		<legend><font color=red style="font-size:20px;font: bold;">��֯��Ϣ</font></legend>
 			 <fieldset style="font-size:19px;font: bold;">
<table width="760" border="1" cellspacing="2" cellpadding="0" border="0"
						style="width: 100%; background-color: #99CC99;">
  <tr>
    <td height="45" bgcolor="#99CCFF">�����</td>
    <td bgcolor="#99CCFF">�������</td>
    <td width="140" bgcolor="#99CCFF">��ע</td>
   
    <td bgcolor="#99CCFF"><a href="Type/addOrgType.jsp">���</a></td>
  </tr>
 <c:forEach items="${type}" var="type">
  <tr>
    <td height="5" bgcolor="#CCCC99">${type.orgtypeid}</td>
    <td bgcolor="#CCCC99">${type.orgtypename}</td>
    <td bgcolor="#CCCC99">${type.note}</td>
   
    <td bgcolor="#CCCC99"><p><a href="ServletPage?method=xiutype&orgtypeid=${type.orgtypeid}">���޸�</a></p>
    <p><a href="ServletPage?method=deltype&orgtypeid=${type.orgtypeid}">��ɾ��</a></p></td>
  </tr>
  </c:forEach>
</table>
  </fieldset>
</body>
</html>
