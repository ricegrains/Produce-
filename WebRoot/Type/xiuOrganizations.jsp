<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>无标题文档</title>
</head>

<body>
<form action="${pageContext.request.contextPath}/ServletPage?method=saveOrg" method="post">
<center>
<table width="900" border="1">
  <tr>
   
    <td width="40" bgcolor="#99CCFF">类别编号</td>
     <td width="60" bgcolor="#99CCFF">组织内部编号</td>
     <td width="40" bgcolor="#99CCFF">组织名称</td>
     <td width="20" bgcolor="#99CCFF">地址</td>
     <td width="60" bgcolor="#99CCFF">主管负责人</td>
     <td width="40" bgcolor="#99CCFF">联系电话</td>
     <td width="20" bgcolor="#99CCFF">传真</td>
     <td width="40" bgcolor="#99CCFF">邮政编码</td>
     <td width="20" bgcolor="#99CCFF">网站</td>
     <td width="40" bgcolor="#99CCFF">信用级别</td>
     <td width="40" bgcolor="#99CCFF">旱地面积</td>
     <td width="40" bgcolor="#99CCFF">水域面积</td>
     <td width="70" bgcolor="#99CCFF">养殖水面面积</td>
     <td width="40" bgcolor="#99CCFF">林果面积</td>
     <td width="60" bgcolor="#99CCFF">备注</td>
     <td width="180" bgcolor="#99CCFF">操作</td>
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
           <input type="image" src="images/baocun.gif" alt="保存">
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
