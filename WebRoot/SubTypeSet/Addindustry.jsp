<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ϵͳ����</title>
  </head>
  <body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="ϵͳ����>>��Ӳ�ҵ����">
		</div>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>��Ӳ�ҵ����</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>��Ӳ�ҵ���� </legend>
									<form action=".././SubTypeSetAll?type=addindudtry" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<td>
												<input type="hidden" name="subtypeid">
											</td>
											<td align="right" height="40">�������ƣ�</td>
											<td align="left">
												<select name="typeid">
													<option value="${setlist.typeid }">${setlist.typename }</option>
												</select>
											</td>
											<td align="right">����</td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="subtypename">
											</td>
										</tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit" value="ȷ��"/>
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
