<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
	<head>
		<title>Work.jsp</title>
	</head>
	<style>
		.table {margin-top: 10%;margin-left: 12%;margin-right: 50px;}
	</style>
	<body bgcolor="#dfe8f4">
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe; width: 18%;height: 10%; font-size: 15px;" border="0" type="text" disabled="disabled" value="��ֳ����>>�����ֳ����">
			<a href="/Produce/WorkFeiServlet" style="margin-top: 20; margin-left: 38; text-decoration: none;color: #e37c7b; font-size: 30px;">������һҳ</a>
		</div>
		<table class="table" border="0" width="100%" bgcolor="#a9c7ed">
			<tr>
				<td bgcolor="#adccef" width="100%">
					<div style="font-size: 15px; color: #6780dd">
						<B>��ֳ����</B>
					</div>
				</td>
			</tr>
			<tr>
				<td bgcolor="#e3f1fe" valign="middle" width="100%">
					<form action="" method="post" name="from2">
					<table style="margin-top: 50px;" border="0" width="100%">
						<tr>
							<td width="70%">
								<fieldset style="width:100%;">
									<legend>��ֳ������(��Ͷ��Ʒ)</legend>
									<table border="1" width="100%">
										<tr>
											<td align="center">��ͬ���</td>
											<td align="center">
												<input type="text" size="25" name="cultivateotheroperationid">
											</td>
										
											<td align="center">Ͷ��������</td>
											<td align="center">
												<input type="text" size="25" name="putfryid">
											</td>
											
											<td align="center">����ʱ��</td>
											<td align="center">
												<input type="text" size="25" name="fishingdate">
											</td>
											
										</tr>
										<tr>
										
											<td align="center">��¼ʱ��</td>
											<td align="center">
												<input type="text" size="25" name="logdate">
											</td>
										
											<td align="center">����ʱ��</td>
											<td align="center">
												<input type="text" size="25" name="operatetime">
											</td>
											
											<td align="center">��������</td>
											<td align="center">
												<input type="text" size="25" name="operatename">
											</td>
											
										</tr>
										<tr>
											
											<td align="center">������</td>
											<td align="center">
												<input type="text" size="25" name="operateperson">
											</td>
											<td align="center">��������</td>
											<td align="center">
												<input type="text" size="25" name="oxygenationtime">
											</td>
											<td align="center">����ˮ����</td>
											<td align="center">
												<input type="text" size="25" name="exchangepower">
											</td>
											
											
										</tr>
										<tr>
											<td align="center">��ˮʱ��</td>
											<td align="center">
												<input type="text" size="25" name="intime">
											</td>
											
											<td align="center">��ˮʱ��</td>
											<td align="center">
												<input type="text" size="25" name="draintime">
											</td>
											
											<td align="center">��&nbsp;ע</td>
											<td align="center">
												<input type="text" size="25" name="note">
											</td>
											
										</tr>
										<tr>
											<td colspan="6">
												<div align="right">
													
													<input type="submit" style="background-color: #b1d3ff;" size="20" value="ȷ�����">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
											</td>
										</tr>
									</table>
								</fieldset>
							</td>
						</tr>
					</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
