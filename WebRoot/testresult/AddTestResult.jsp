<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>��Ӽ����</title>

  </head>
  <body bgcolor="#dfe8f4">
		<div style="font-family: inherit">&nbsp;  
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="������ȫ���>>��Ӽ����">
		</div>
		<a href="MainTestResult" style="text-decoration:none;">������һҳ</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>��Ӽ����</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;"  >
									<legend> </legend>
									<form action="AddTestResult" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<input type="hidden" name="testresultid" />
										
											<td align="right" height="40">����� </td>
											<td>
												<input type="text" name="operationperson">
								  			</td>
											<td align="right">���ʱ��</td>
											<td align="left">
												<input type="text" name="operationtime">
											</td>
										</tr>
								        <tr>
									    	<td align="right" height="40">�����</td>
									    	<td >
									    		<select name="result">
									    			<option value="�ϸ�">�ϸ�</option>
									    			<option value="���ϸ�">���ϸ�</option>
									    		</select>
									    	</td>
									    	<td align="right" height="40">��ⷶΧ</td>
											<td>
								  			   <input type="text" name="category" >
								  			</td>
								      </tr>
								      <tr>
										  <td align="right">���Ʒ�� </td>
										  <td align="left">
										  	<select name="objectname">
												<c:forEach items="${objectlist}" var="objectlist">
										  			<option value="${objectlist.objectid }">${objectlist.objectname }</option>
										  		</c:forEach>
										  	</select>
										  </td>
										  <td align="right">��⼶ </td>
										  <td align="left">
										  	<select name="testsetid">
												<c:forEach items="${subtypesetlist}" var="subtypesetlist">
										  			<option value="${subtypesetlist.subtypeid}">${subtypesetlist.subtypename }</option>
										  		</c:forEach>
										  	</select>
											  
										  </td>
									</tr>
									<tr>
										  <td align="right"> ���ָ�� </td>
										  <td align="left">
											 <select name="testIndexID"> 
												<c:forEach items="${indexlist}" var="indexlist">
										  			<option value="${indexlist.testIndexID}">${indexlist.testIndexName }</option>
										  		</c:forEach>
										  	</select>
										  </td>
										  <td align="right"> ����豸 </td>
										  <td align="left">
											  <select name="instrumentid">
												<c:forEach items="${instrumentlist}" var="instrumentlist">
										  			<option value="${instrumentlist.instrumentid}">${instrumentlist.instrumentname }</option>
										  		</c:forEach>
										  	</select>
										  </td>
									</tr>
									<tr>
										<td align="right"> ��ע</td>
										<td colspan="3" align="left">
											<textarea cols="40" rows="3" name="note"></textarea>
										</td>
									</tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit"  value="ȷ��"/>
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
