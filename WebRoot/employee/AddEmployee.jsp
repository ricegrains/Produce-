<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
	<head>
		<title>����û�</title>
	</head>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="�û�����>>����û�">
		</div>
		
		<a href="MainEmployee" style="text-decoration: none">������һҳ</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>�û���Ϣ</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>����û� </legend>
									<form action=".././AddEmployee" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<td align="left" colspan="4">
												<input style="background-color: #e8f2fe;" type="hidden"  size="25" name="empid" />
											</td>
											
										</tr>
										<tr>
											<td align="right" height="40"> �û������� </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="empname">
											</td>
											<td align="right"> ��¼���룺 </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="emppassword">
											</td>
										</tr>
										<tr>
											<td align="right" height="40"> �Ա� </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="gender">
												
											</td>
											<td align="right"> ְλ�� </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="duty">
											</td>
										</tr>
										
											<tr>
											<td align="right" height="40"> �绰�� </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="tel">
												
											</td>
											<td align="right"> ���֤�ţ� </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="identityid">
											</td>
										</tr>
									<tr>
										<td align="right" height="40"> ��֯ID�� </td>
										<td align="left">
											<input style="background-color: #e8f2fe;" type="text"  size="25" name="orgid">
										</td>
										<td align="right"> �û�״̬�� </td>
										<td align="left">
											<input style="background-color: #e8f2fe;" type="text"  size="25" name="empstatus">
										</td>
								    </tr>
								    <tr>
								    	<td align="right" height="40">��ע:</td>
								    	<td colspan="3" >
								    	 <textarea name="note" style="width:400px;height:40px;"></textarea>
								    	</td>
								    </tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit" value="�ύ"/>
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
