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
		function check(cultivateotheroperationid)
		{
			var bln = confirm("��ȷ��Ҫ����ɾ��" + cultivateotheroperationid + "������")
			if(bln==true){
				location.href = "${pageContext.request.contextPath}/WorkFeiDeleteServlet?cultivateotheroperationid="+cultivateotheroperationid;
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
						<a href="/Produce/Breed/AddWorkFei.jsp" style="text-decoration: none;color: #a1eee4;">
							<img src="../image/tianjia.jpg" width="60" height="25" border="0" alt="�����ֳ����">
						</a>
					</div>
				</td>
			</tr>
			<tr>
				<td bgcolor="#e3f1fe" valign="middle" width="100%">
					<form action="WorkFeiServlet" method="get" name="from2">
					<table style="margin-top: 50px;" border="0" width="100%">
						<tr>
							<td width="70%">
								<fieldset style="width:100%;">
									<legend>��ֳ������(��Ͷ��Ʒ)</legend>
									<table border="1" width="100%">
										<tr bgcolor="#e4e9f2">
											<td align="center">��ͬ���</td>
											<td align="center">Ͷ��������</td>
											<td align="center">����ʱ��</td>
											<td align="center">��¼ʱ��</td>
											<td align="center">����ʱ��</td>
											
											<td align="center">��������</td>
											<td align="center">������</td>
											<td align="center">��������</td>
											<td align="center">����ˮ����</td>
											<td align="center">��ˮʱ��</td>
											<td align="center">��ˮʱ��</td>
											
											<td align="center">��&nbsp;ע</td>
											<td align="center">��&nbsp;��</td>
										</tr>
										<c:forEach items="${list }" var="list">
											<tr>
												<td align="center">${list.cultivateotheroperationid}</td>
												<td align="center">${list.putfryid}</td>
												<td align="center">${list.fishingdate}</td>
												<td align="center">${list.logdate}</td>
												<td align="center">${list.operatetime}</td>
												
												<td align="center">${list.operatename}</td>
												<td align="center">${list.operateperson}</td>
												<td align="center">${list.oxygenationtime}</td>
												<td align="center">${list.exchangepower}</td>
												<td align="center">${list.intime}</td>
												<td align="center">${list.draintime}</td>
												
												<td align="center">${list.note}</td>
												<td align="center">
													<a href="../WorkFeiUpdateServlet?cultivateotheroperationid=${list.cultivateotheroperationid}" style="text-decoration: none;color: #a1eee4;">�޸�</a>&nbsp;|
<!--													<a href="" onclick="check()" style="text-decoration: none;color: #a1eee4;">ɾ��</a>-->
													<input type="button" value="ɾ��" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.cultivateotheroperationid}')">											
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
