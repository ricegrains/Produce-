<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<script>
		function check(dateid)
		{
			var bln = confirm("��ȷ��Ҫ����ɾ��" + cultivatelogid + "������")
			if(bln==true){
				location.href = "${pageContext.request.contextPath}/LookLogDeleteServlet?cultivatelogid="+cultivatelogid;
			}
		}
		
	</script>
	<style>
		.table {margin-top: 10%; margin-right: 50px;}
	</style>
	<body bgcolor="#dfe8f4">
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="��ֳ����>>��ֳ��־">
		</div>
		<form class="table" action="LookLogServler" method="get" name="form1">
		
			<table align="center" border="0" width="80%" bgcolor="#a9c7ed">
				<tr>
					<td bgcolor="#adccef" width="80%">
						<div style="font-size: 15px; color: #6780dd">
							<B>��ֳ��־</B>
							<a href="/Produce/Breed/AddLog.jsp" style="text-decoration: none;color: #a1eee4;">
								<img src="../image/tianjia.jpg" width="60" height="25" border="0" alt="�����ֳ��־">
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
						<fieldset style="width: 100%;">
							<legend>������ֳ��־</legend>
							<table border="0" width="100%">
								<tr align="center">
									<td align="center">��ֳ��־���</td>
									<td align="center">Ͷ��������</td>
									<td align="center">��¼ʱ��</td>
									<td align="center">��&nbsp;��</td>
									<td align="center">HP&nbsp;ֵ</td>
									<td align="center">��&nbsp;��</td>
									<td align="center">��������</td>
									<td align="center">������</td>
									<td align="center">��&nbsp;ע</td>
									<td align="center">��&nbsp;��</td>
									
								</tr>
								<c:forEach items="${list}" var="list">
									<tr align="center">
										<td align="center">${list.cultivatelogid }</td>
										
										<td align="center">${list.putfryid }</td>
										
										<td align="center">${list.logdate }</td>
										
										<td align="center">${list.logdate }</td>
										
										<td align="center">${list.ph }</td>
										
										<td align="center">${list.nhn }</td>
										
										<td align="center">${list.nit }</td>
										
										<td align="center">${list.dissolvedoxygen }</td>
										
										<td align="center">${list.note }</td>
										
										<td align="center">
											<a href="../LookLogUpdateServlet?cultivatelogid=${list.cultivatelogid}" style="text-decoration: none;color: #a1eee4;">�޸�</a>&nbsp;|
	<!--										<a href="" onclick="check()" style="text-decoration: none;color: #a1eee4;">ɾ��</a>-->
											<input type="button" value="ɾ��" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.cultivatelogid}')">
										</td>
									</tr>
								</c:forEach>
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
