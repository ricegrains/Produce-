<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<script>
		function check(putfryid)
		{
			var bln = confirm("��ȷ��Ҫ����ɾ��" + putfryid + "������")
			if(bln==true){
				location.href = "${pageContext.request.contextPath}/PutFryDeleteServlet?putfryid="+putfryid;
			}
		 }
		
	</script>	
	<style>
		.table {margin-top: 10%; margin-right: 50px;}
	</style>
	<body bgcolor="#dfe8f4">
		<div style="font-family: inherit;margin-top: 20; margin-right: 50px;">
			<input style="margin-top: 20; background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="��ֳ����>>Ͷ������">
		</div>
		<form action="PutFryServlet" method="get" name="form1">
			
			<table class="table" align="center" border="0" width="100%" bgcolor="#a9c7ed">
				<tr>
					<td bgcolor="#adccef" width="80%">
						<div style="font-size: 15px; color: #6780dd">
							<B>Ͷ������</B>
							<a href="/Produce/Breed/AddPutFry.jsp" style="text-decoration: none;color: #a1eee4;">
								<img src="../image/tianjia.jpg" width="60" height="25" border="0" alt="����µ�����">
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
						<fieldset style="width: 100%;">
							<legend>����Ͷ�����</legend>
							<table border="0" width="100%">
								<tr align="center">
									<td align="center">Ͷ��������</td>
									<td align="center">�ؿ���</td>
									<td align="center">����ʱ��</td>
									<td align="center">Ͷ��Ʒ��</td>
									<td align="center">Ͷ��ʱ��</td>
									<td align="center">Ͷ������</td>
									<td align="center">Ͷ�Ź��</td>
									<td align="center">��&nbsp;��</td>
									<td align="center">������Դ</td>
									<td align="center">�Ƿ����</td>
									<td align="center">��&nbsp;ע</td>
									<td align="center">��&nbsp;��</td>
								</tr>
								<c:forEach items="${list}" var="list">
									<tr>
										<td align="center">${list.putfryid}</td>
										
										<td align="center">${list.contractsignplotsid}</td>
										
										<td align="center">${list.fishingdate};</td>
										
										<td align="center">${list.objectid}</td>
										
										<td align="center">${list.putfrydate}</td>
										
										<td align="center">${list.quantity}</td>
										
										<td align="center">${list.type};</td>
										
										<td align="center">${list.weight}</td>
										
										<td align="center">${list.comefrom}</td>
										
										<td align="center">${list.quarantine}</td>
										
										<td align="center">${list.note};</td>
										
										<td align="center">
											<a href="../PutFryUpdateServlet?pondid=${list.putfryid}" style="text-decoration: none;color: #a1eee4;">�޸�</a>&nbsp;|
<!--											<a href="../PutFryDeleteServlet?pondid=${list.putfryid}" onclick="check()" style="text-decoration: none;color: #a1eee4;">ɾ��</a>-->
											<input type="button" value="ɾ��" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.putfryid}')">
										</td>
									</tr>
								</c:forEach>
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</html>
