<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage="" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�ޱ����ĵ�</title>
		<style type="text/css">
.STYLE3 {
	font-size: 20px;
	color: #CC0000;
}

.STYLE4 {
	font-size: 16px
}

.STYLE5 {
	font-size: 26px
}
</style>
	</head>
	<body>
		<center>
			<form action="../Password" method="post" name="">
				<table width="434" height="455" border="1" cellspacing="1"
					bordercolor="#99CCFF">
					<tr>
						<td colspan="2">
							<div align="center" class="STYLE1 STYLE3 STYLE5">
								�޸�����
							</div>
						</td>
					</tr>
					<tr>
						<td width="194">
							<div align="right" class="STYLE2 STYLE4">��¼�˻��ţ�</div>
						</td>
						<td width="220">
							<input type="text" name="EmpID" value="${empid}" disabled="disabled"/>
							<input type="hidden" name="EmpID" value="${empid}" />
						</td>
					</tr>
					<tr>
						<td>
							<div align="right" class="STYLE2 STYLE4">��¼���룺</div>
						</td>
						<td>
							<input type="password" name="password" value="${pwd}" />
						</td>
					</tr>
					<tr>
						<td>
							<div align="right" class="STYLE2 STYLE4">�����룺</div>
						</td>
						<td>
							<input type="text" name="EmpPassWord"/>
						</td>
					</tr>

					<!-- <tr>
						<td>
							<div align="right" class="STYLE2 STYLE4">
								�������룺
							</div>
						</td>
						<td>
							<input type="text" name="password" id="newpwd2" value="" />
						</td>
					</tr>
					 -->
					<tr>
						<td>
							<div align="center">
								<input type="submit" name="Submit" value="ȷ���޸�" />
							</div>
						</td>
						<td>
							<div align="center">
								<input type="reset" name="Submit2" value="����" />
							</div>
						</td>
					</tr>
				</table>
			</form>
		</center>
	</body>
</html>
