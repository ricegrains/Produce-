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
			var bln = confirm("你确定要永久删除" + cultivateotheroperationid + "？？？")
			if(bln==true){
				location.href = "${pageContext.request.contextPath}/WorkFeiDeleteServlet?cultivateotheroperationid="+cultivateotheroperationid;
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
						<a href="/Produce/Breed/AddWorkFei.jsp" style="text-decoration: none;color: #a1eee4;">
							<img src="../image/tianjia.jpg" width="60" height="25" border="0" alt="添加养殖操作">
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
									<legend>养殖操作表(非投入品)</legend>
									<table border="1" width="100%">
										<tr bgcolor="#e4e9f2">
											<td align="center">合同编号</td>
											<td align="center">投放鱼苗编号</td>
											<td align="center">捕捞时间</td>
											<td align="center">记录时间</td>
											<td align="center">操作时间</td>
											
											<td align="center">操作名称</td>
											<td align="center">操作人</td>
											<td align="center">增氧操作</td>
											<td align="center">进排水功率</td>
											<td align="center">进水时间</td>
											<td align="center">排水时间</td>
											
											<td align="center">备&nbsp;注</td>
											<td align="center">操&nbsp;作</td>
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
													<a href="../WorkFeiUpdateServlet?cultivateotheroperationid=${list.cultivateotheroperationid}" style="text-decoration: none;color: #a1eee4;">修改</a>&nbsp;|
<!--													<a href="" onclick="check()" style="text-decoration: none;color: #a1eee4;">删除</a>-->
													<input type="button" value="删除" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.cultivateotheroperationid}')">											
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
