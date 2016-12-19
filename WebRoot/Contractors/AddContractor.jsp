<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加承包户</title>
  </head>
  <body> 
  <form action=".././ServletPage?method=add" method="post">
  	<font color="blue" style="font-size:18px;font: bold;">承包户管理&nbsp;&nbsp;&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;">添加承包户</font>
	<br><br><br>
  <fieldset style="font-size:19px;font: bold;">
  	
	  <legend>添加承包户</legend>
	 
		  	 <table cellspacing="1" cellpadding="0" border="0" border="0" style="width: 70%;" >
		  		<tr  style="color:blue;font-size:19px;" height="50px">
		  		<img src="../images/editContractor.jpg"/>
		  			<td align="center">承包户姓名</td>
		  			<td><input name="name" /></td>
		  			<td align="center">组织名称</td>
		  			<td>
		  				<select name="belongOrgID">
		  				  <c:forEach items="${org}" var="org">
		  				   <option value=${org.orgid}>${org.orgname}</option>
		  				   </c:forEach>
		  				</select>
		  			
		  			</td>
		  		</tr>
		  		<tr  style="color:blue;font-size:19px;"  height="50px">
		  			<td align="center">身份证号</td>
		  			<td><input name="identityid" /></td>
		  			<td align="center">联系电话</td>
		  			<td><input name="telephone" /></td>
		  		</tr>
		  		<tr  style="color:blue;font-size:19px;"  height="50px">
		  			<td align="center">地址</td>
		  			<td><input name="address" /></td>
		  			<td align="center">备注</td>
		  			<td><input name="note"/></td>
		  		</tr>
		  		<tr  style="color:blue;font-size:19px;"  height="50px">
		  			<td align="center" colspan="4"><input type="submit" value="提交"></td>
		  		</tr>
		  	</table>
  </fieldset>
  </form>
  </body>
</html>
