<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>Work.jsp</title>
	</head>
	<style>
		.table {margin-top: 10%; margin-right: 50px;}
	</style>
	<script>
		function check(cultivateoperationid)
		{
			var bln = confirm("��ȷ��Ҫ����ɾ��" + cultivateoperationid + "������")
			if(bln==true){
				location.href = "${pageContext.request.contextPath}/WorkDeleteServlet?cultivateoperationid="+cultivateoperationid;
			}
		 }
		
	</script>	
	<body bgcolor="#dfe8f4">
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe; width: 18%;height: 10%; font-size: 15px;" border="0" type="text" disabled="disabled" value="��ֳ����>>�鿴��ֳ����">
		</div>
		<table class="table" border="0" width="100%" bgcolor="#a9c7ed">
			<tr>
				<td bgcolor="#adccef" width="100%">
					<div style="font-size: 15px; color: #6780dd">
						<B>��ֳ����</B>
						<a href="/Produce/ServletAdd?name=putfry" style="text-decoration: none;color: #a1eee4;">
							<img src="../image/tianjia.jpg" width="60" height="25" border="0" alt="�����ֳ����">
						</a>
					</div>
				</td>
			</tr>
			<tr>
				<td bgcolor="#e3f1fe" valign="middle" width="100%">
					<form action="WorkSerlvet" method="get" name="from1">
					<table border="0" width="100%">
						<tr>
							<td width="100%">
								<fieldset style="width:100%;">
									<legend>��ֳ������Ͷ��Ʒ��</legend>
									<table border="1" width="100%">
										<tr bgcolor="#e4e9f2">
											<td align="center">��ֳ�������</td>
											<td align="center">Ͷ��������</td>
											<td align="center">����ʱ��</td>
											<td align="center">������</td>
											<td align="center">��ֳ����</td>
											<td align="center">Ͷ��Ʒ����</td>
											<td align="center">Ͷ��Ʒ</td>
											<td align="center">��������</td>
											<td align="center">��&nbsp;��</td>
											<td align="center">��������</td>
											<td align="center">����ԭ��</td>
											<td align="center">��&nbsp;ע</td>
											<td align="center">��&nbsp;��</td>
										</tr>
										<c:forEach items="${list}" var="list">
											<tr>
												<td align="center">${list.cultivateoperationid}</td>
												<td align="center">${list.putfryid}</td>
												<td align="center">${list.operatetime}</td>
												<td align="center">${list.operateperson}</td>
												<td align="center">${list.operateid}</td>
												<td align="center">${list.categoryid}</td>
												<td align="center">${list.objectid}</td>
												<td align="center">${list.operationmethod}</td>
												<td align="center">${list.weigh}</td>
												<td align="center">${list.diseasename}</td>
												<td align="center">${list.brokeOuttime}</td>
												<td align="center">${list.note}</td>
												<td align="center">
													<a href="../WorkUpdateServlet?cultivateoperationid=${list.cultivateoperationid}" style="text-decoration: none;color: #a1eee4;">�޸�</a>&nbsp;|
	<!--												<a href="" onclick="check()" style="text-decoration: none;color: #a1eee4;">ɾ��</a>-->
													<input type="button" value="ɾ��" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.cultivateoperationid}')">											
												</td>
											</tr>
										</c:forEach>
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
