<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="my" uri="/MySelectTag"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<style>
		.table {margin-top: 10%; margin-right: 50px;}
	</style>
	<body bgcolor="#dfe8f4">
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="��ֳ����>>��ֳ��־">
			<a href="/Produce/LookLogServlet" style="margin-top: 20; margin-left: 38; text-decoration: none;color: #e37c7b; font-size: 30px;">������һҳ</a>
		</div>
		<form action="" method="post" name="form1">
			<table class="table" align="center" border="0" width="80%" bgcolor="#a9c7ed">
				<tr>
					<td bgcolor="#adccef" width="80%">
						<div style="font-size: 15px; color: #6780dd">
							<B>��ֳ��־</B>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
						<fieldset style="width: 100%;">
							<legend>������ֳ��־</legend>
							<table border="0" width="100%">
								<tr align="center">
									<td align="right">��ֳ��־���</td>
									
									<td align="left">
										<input style="background-color: #e8f2fe;" type="text" disabled="disabled" size="25" name="dateid">
										<input style="background-color: #e8f2fe;" type="hidden" size="25" name="dateid">
									</td>
									<td align="right">Ͷ��������</td>
									
									<td align="left">
										<my:soil tablename="PutFry" id="PutFryID" columnname="ObjectID"/>
									</td>
									
								</tr>
								<tr align="center">
									<td align="right">��¼ʱ��</td>
									
									<td align="left">
										<input type="text" size="25" name="logtime">
									</td>
									<td align="right">�¶�</td>
									
									<td align="left">
										<input type="text" size="25" name="puttype">
									</td>
								</tr>
								<tr align="center">
									<td align="right">HPֵ</td>
									
									<td align="left">
										<input type="text" size="25" name="puttime">
									</td>
									<td align="right">����</td>
									
									<td align="left">
										<input type="text" size="25" name="putnumber">
									</td>
								
								</tr>
								<tr align="center">
									<td align="right">��������</td>
									
									<td align="left">
										<input type="text" size="25" name="putspec">
									</td>
									<td align="right">������</td>
									
									<td align="left">
										<input type="text" size="25" name="weight">
									</td>
								</tr>
								<tr align="center">	
									<td align="right">��ע</td>
									<td align="left">
										<input type="text" size="25" name="origin">
									</td>
									<td>
										<div align="left">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="submit" style="background-color: #b1d3ff;" size="20" value="ȷ��">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</html>
