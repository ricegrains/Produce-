<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�޸Ĳ�ҵ����</title>
    

  </head>
  <body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="ϵͳ����>>�޸Ĳ�ҵ����">
		</div>
		<a href="MainModule" style="text-decoration:none;">������һҳ</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>�޸Ĳ�ҵ����</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend></legend>
									<form action=".././AddModule" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="hidden"  size="25" name="subtypeid" value="${subtypeset.subtypeid }">
											</td>
											<td align="right">�������ƣ� </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text" disabled="disabled" size="25" name="typeid" value="${subtypeset. }">
											</td>
										</tr>
								    <tr>
								    	<td align="right" height="40">���ƣ�</td>
								    	<td colspan="3" >
								    	 <textarea name="subtypename" style="width:400px;height:40px;">${subtypeset.subtypename }</textarea>
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
