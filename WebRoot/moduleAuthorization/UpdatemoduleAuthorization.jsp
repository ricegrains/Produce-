<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>ģ����Ȩ</title>
    
  </head>
  <body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="�û�����>>�޸�ģ����Ȩ">
		</div>
		<a href="MainModuleAuthor" style="text-decoration:none;">������һҳ</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>ģ����Ϣ</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>�޸�ģ����Ȩ</legend>
									<form action="AddModuleAuthor" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<td align="right" height="40"> �û��˻��ţ� </td>
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
											<td align="right"> ģ��ID�� </td>
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
								    	<td align="right" height="40">��ע:</td>
								    	<td colspan="3" >
								    	 <textarea name="note" style="width:400px;height:40px;">${author.note }</textarea>
								    	</td>
								    </tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit" name="save" value="�޸�"/>
								    		<input type="reset" value="����"/> 
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
