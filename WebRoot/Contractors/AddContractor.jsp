<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��ӳа���</title>
  </head>
  <body> 
  <form action=".././ServletPage?method=add" method="post">
  	<font color="blue" style="font-size:18px;font: bold;">�а�������&nbsp;&nbsp;&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;">��ӳа���</font>
	<br><br><br>
  <fieldset style="font-size:19px;font: bold;">
  	
	  <legend>��ӳа���</legend>
	 
		  	 <table cellspacing="1" cellpadding="0" border="0" border="0" style="width: 70%;" >
		  		<tr  style="color:blue;font-size:19px;" height="50px">
		  		<img src="../images/editContractor.jpg"/>
		  			<td align="center">�а�������</td>
		  			<td><input name="name" /></td>
		  			<td align="center">��֯����</td>
		  			<td>
		  				<select name="belongOrgID">
		  				  <c:forEach items="${org}" var="org">
		  				   <option value=${org.orgid}>${org.orgname}</option>
		  				   </c:forEach>
		  				</select>
		  			
		  			</td>
		  		</tr>
		  		<tr  style="color:blue;font-size:19px;"  height="50px">
		  			<td align="center">���֤��</td>
		  			<td><input name="identityid" /></td>
		  			<td align="center">��ϵ�绰</td>
		  			<td><input name="telephone" /></td>
		  		</tr>
		  		<tr  style="color:blue;font-size:19px;"  height="50px">
		  			<td align="center">��ַ</td>
		  			<td><input name="address" /></td>
		  			<td align="center">��ע</td>
		  			<td><input name="note"/></td>
		  		</tr>
		  		<tr  style="color:blue;font-size:19px;"  height="50px">
		  			<td align="center" colspan="4"><input type="submit" value="�ύ"></td>
		  		</tr>
		  	</table>
  </fieldset>
  </form>
  </body>
</html>
