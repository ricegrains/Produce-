<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>�ޱ����ĵ�</title>
</head>

<body>
<form action="${pageContext.request.contextPath}/ServletPage?method=saveOrg" method="post">
<center>
<table width="900" border="1">
  <tr>
   
    <td width="40" bgcolor="#99CCFF">�����</td>
     <td width="60" bgcolor="#99CCFF">��֯�ڲ����</td>
     <td width="40" bgcolor="#99CCFF">��֯����</td>
     <td width="20" bgcolor="#99CCFF">��ַ</td>
     <td width="60" bgcolor="#99CCFF">���ܸ�����</td>
     <td width="40" bgcolor="#99CCFF">��ϵ�绰</td>
     <td width="20" bgcolor="#99CCFF">����</td>
     <td width="40" bgcolor="#99CCFF">��������</td>
     <td width="20" bgcolor="#99CCFF">��վ</td>
     <td width="40" bgcolor="#99CCFF">���ü���</td>
     <td width="40" bgcolor="#99CCFF">�������</td>
     <td width="40" bgcolor="#99CCFF">ˮ�����</td>
     <td width="70" bgcolor="#99CCFF">��ֳˮ�����</td>
     <td width="40" bgcolor="#99CCFF">�ֹ����</td>
     <td width="60" bgcolor="#99CCFF">��ע</td>
     <td width="180" bgcolor="#99CCFF">����</td>
  </tr>
  <c:forEach items="${Org}" var="org">
  <tr>
   
         <input type="hidden" size="7" style="border: white;border-spacing: 0px" name="orgid" value="${org.orgid}"/>
   
     <td  width="40" bgcolor="#CCCC99">
      <input type="text" size="7" style="border: white;border-spacing: 0px" name="orgtypeid" value="${org.orgtypeid}"/>
     </td>
     <td  width="60" bgcolor="#CCCC99">
      <input type="text" size="10" style="border: white;border-spacing: 0px" name="orgcode" value="${org.orgcode}"/>

     </td>
     <td  width="100" bgcolor="#CCCC99">
      <input type="text" size="10" style="border: white;border-spacing: 0px" name="orgname" value="${org.orgname}"/>
 
     </td>
     <td  width="40" bgcolor="#CCCC99">
      <input type="text" size="7" style="border: white;border-spacing: 0px" name="address" value="${org.address}"/>
   </td>
     <td  width="60" bgcolor="#CCCC99">
        <input type="text" size="10" style="border: white;border-spacing: 0px" name="director" value="${org.director}"/>
    
     </td>
     <td  width="40" bgcolor="#CCCC99">
        <input type="text" size="7" style="border: white;border-spacing: 0px" name="telephone" value="${org.telephone}"/>

     </td>
     <td  width="20" bgcolor="#CCCC99">
        <input type="text" size="7" style="border: white;border-spacing: 0px" name="fax" value="${org.fax}"/>
  
     </td>
     <td  width="40" bgcolor="#CCCC99">
        <input type="text" size="7" style="border: white;border-spacing: 0px" name="postcode" value="${org.postcode}"/>
   
     </td>
     <td  width="20"  bgcolor="#CCCC99">
        <input type="text" size="7" style="border: white;border-spacing: 0px" name="web" value="${org.web}"/>

     </td>
     <td  width="40" bgcolor="#CCCC99">
         <input type="text" size="7" style="border: white;border-spacing: 0px" name="safelevelid" value="${org.safelevelid}"/>
    
     </td>
     <td  width="20" bgcolor="#CCCC99">
       <input type="text" size="7" style="border: white;border-spacing: 0px" name="firmlandarea" value="${org.firmlandarea}"/>
     
     </td>
     <td  width="40" bgcolor="#CCCC99">
      <input type="text" size="7" style="border: white;border-spacing: 0px" name="waterlandarea" value="${org.waterlandarea}"/>
   
     </td>
     <td  width="40" bgcolor="#CCCC99">
      <input type="text" size="7" style="border: white;border-spacing: 0px" name="pondarea" value="${org.pondarea}"/>
     
     </td>
     <td  width="40" bgcolor="#CCCC99">
      <input type="text" size="7" style="border: white;border-spacing: 0px" name="forestandorchardarea" value="${org.forestandorchardarea}"/>
 
     </td>
     <td  width="40" bgcolor="#CCCC99">
      <input type="text" size="10" style="border: white;border-spacing: 0px" name="note" value="${org.note}"/>
    
     </td>
     <td  width="70" bgcolor="#CCCC99">
           <input type="image" src="images/baocun.gif" alt="����">
     </td>
  </tr>
  </c:forEach>
  
 

</table>
</center>
</form>
<dl>
  <dt>&nbsp;</dt>
</dl>
</body>
</html>
