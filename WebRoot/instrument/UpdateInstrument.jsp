<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�豸����</title>

  </head>
  <body bgcolor="#dfe8f4">
		<div style="font-family: inherit">&nbsp; 
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="ϵͳ����>>�޸��豸">
		</div>
		<a href="MainInstrument" style="text-decoration:none;">������һҳ</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>�豸��Ϣ</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;"  >
									<legend>�豸���� </legend>
									<form action="AddInstrument" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<input type="hidden" name="instrumentid" value="${instrument.instrumentid }"/>
										
											<td align="right" height="40">�豸���� </td>
											<td>
								  			   <input type="text" name="instrumentname" value="${instrument.instrumentname }">
								  			</td>
											<td align="right"> �ͺ� </td>
											<td align="left">
												<input type="text" name="type" value="${instrument.type }">
											</td>
										</tr>
								        <tr>
									    	<td align="right" height="40">�۸�</td>
									    	<td align="left">
									    	 	 <input type="text" name="price" value="${instrument.price }">
									    	</td>
									    	<td align="right" height="40">���������� </td>
											<td align="left">
								  			   <input type="text" name="vendorname" value="${instrument.vendorname }">
								  			</td>
								      </tr>
								      <tr>
										  <td align="right"> �ɹ����� </td>
										  <td align="left">
											  <input type="text" name="purchaseddate" value="${instrument.purchaseddate }">
										  </td>
										  <td align="right"> ������ </td>
										  <td align="left">
											  <input type="text" name="custodian" value="${instrument.custodian }">
										  </td>
									</tr>
									<tr>
										<td align="right"> ��ע</td>
										<td colspan="3" align="left">
											<textarea cols="40" rows="3" name="note">${instrument.note }</textarea>
										</td>
									</tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit"  name="save" value="ȷ��"/>
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
