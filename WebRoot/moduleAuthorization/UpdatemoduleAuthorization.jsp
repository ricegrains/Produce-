<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>模块授权</title>
    
  </head>
  <body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="用户管理>>修改模块授权">
		</div>
		<a href="MainModuleAuthor" style="text-decoration:none;">返回上一页</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>模块信息</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>修改模块授权</legend>
									<form action="AddModuleAuthor" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<td align="right" height="40"> 用户账户号： </td>
											<td>
											<select name="userid">
								  				<c:forEach items="${emplist}" var="emplist">
														<option value="${emplist.empid }">${emplist.empname}</option>
											 	</c:forEach>
											    </select>
								  			  <!-- <input type="text" name="userid" value="${emplist.empname}" disabled="disabled">
											<input type="hidden" name="userid" value="${emplist.empid }" />  -->
								  			</td>
											<!-- <td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="moduleid" value="${author.userid }">
											</td> -->
											<td align="right"> 模块ID： </td>
											<td align="left">
											<select name="moduleid">
											<c:forEach items="${modlist}" var="modlist">
									     		<option value="${modlist.moduleid}">${modlist.modulename }</option>
									     	</c:forEach>
									     	</select>
												<!-- <input style="background-color: #e8f2fe;" type="text"  size="25" name="modulename" value="${author.moduleid }"> -->
											</td>
											
										</tr>
								    <tr>
								    	<td align="right" height="40">备注:</td>
								    	<td colspan="3" >
								    	 <textarea name="note" style="width:400px;height:40px;">${author.note }</textarea>
								    	</td>
								    </tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit" name="save" value="修改"/>
								    		<input type="reset" value="重置"/> 
								    	</td>
								    </tr>
									</table>
									</form>
								</fieldset>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
