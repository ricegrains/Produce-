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
			var bln = confirm("你确定要永久删除" + cultivateoperationid + "？？？")
			if(bln==true){
				location.href = "${pageContext.request.contextPath}/WorkDeleteServlet?cultivateoperationid="+cultivateoperationid;
			}
		 }
		
	</script>	
	<body bgcolor="#dfe8f4">
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe; width: 18%;height: 10%; font-size: 15px;" border="0" type="text" disabled="disabled" value="养殖管理>>查看养殖操作">
		</div>
		<table class="table" border="0" width="100%" bgcolor="#a9c7ed">
			<tr>
				<td bgcolor="#adccef" width="100%">
					<div style="font-size: 15px; color: #6780dd">
						<B>养殖操作</B>
						<a href="/Produce/ServletAdd?name=putfry" style="text-decoration: none;color: #a1eee4;">
							<img src="../image/tianjia.jpg" width="60" height="25" border="0" alt="添加养殖操作">
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
									<legend>养殖操作（投入品）</legend>
									<table border="1" width="100%">
										<tr bgcolor="#e4e9f2">
											<td align="center">养殖操作编号</td>
											<td align="center">投放鱼苗编号</td>
											<td align="center">操作时间</td>
											<td align="center">操作人</td>
											<td align="center">养殖操作</td>
											<td align="center">投入品种类</td>
											<td align="center">投入品</td>
											<td align="center">操作方法</td>
											<td align="center">用&nbsp;量</td>
											<td align="center">病害名称</td>
											<td align="center">发病原因</td>
											<td align="center">备&nbsp;注</td>
											<td align="center">操&nbsp;作</td>
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
													<a href="../WorkUpdateServlet?cultivateoperationid=${list.cultivateoperationid}" style="text-decoration: none;color: #a1eee4;">修改</a>&nbsp;|
	<!--												<a href="" onclick="check()" style="text-decoration: none;color: #a1eee4;">删除</a>-->
													<input type="button" value="删除" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.cultivateoperationid}')">											
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
