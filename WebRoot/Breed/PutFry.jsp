<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<script>
		function check(putfryid)
		{
			var bln = confirm("你确定要永久删除" + putfryid + "？？？")
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
			<input style="margin-top: 20; background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="养殖管理>>投放鱼苗">
		</div>
		<form action="PutFryServlet" method="get" name="form1">
			
			<table class="table" align="center" border="0" width="100%" bgcolor="#a9c7ed">
				<tr>
					<td bgcolor="#adccef" width="80%">
						<div style="font-size: 15px; color: #6780dd">
							<B>投放鱼苗</B>
							<a href="/Produce/Breed/AddPutFry.jsp" style="text-decoration: none;color: #a1eee4;">
								<img src="../image/tianjia.jpg" width="60" height="25" border="0" alt="添加新的鱼苗">
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
						<fieldset style="width: 100%;">
							<legend>鱼苗投放情况</legend>
							<table border="0" width="100%">
								<tr align="center">
									<td align="center">投放鱼苗编号</td>
									<td align="center">地块编号</td>
									<td align="center">捕捞时间</td>
									<td align="center">投入品种</td>
									<td align="center">投放时间</td>
									<td align="center">投放数量</td>
									<td align="center">投放规格</td>
									<td align="center">重&nbsp;量</td>
									<td align="center">种苗来源</td>
									<td align="center">是否检疫</td>
									<td align="center">备&nbsp;注</td>
									<td align="center">操&nbsp;作</td>
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
											<a href="../PutFryUpdateServlet?pondid=${list.putfryid}" style="text-decoration: none;color: #a1eee4;">修改</a>&nbsp;|
<!--											<a href="../PutFryDeleteServlet?pondid=${list.putfryid}" onclick="check()" style="text-decoration: none;color: #a1eee4;">删除</a>-->
											<input type="button" value="删除" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.putfryid}')">
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
