<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<script>
		function check(dateid)
		{
			var bln = confirm("你确定要永久删除" + cultivatelogid + "？？？")
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
			<input style="margin-top: 20;background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="养殖管理>>养殖日志">
		</div>
		<form class="table" action="LookLogServler" method="get" name="form1">
		
			<table align="center" border="0" width="80%" bgcolor="#a9c7ed">
				<tr>
					<td bgcolor="#adccef" width="80%">
						<div style="font-size: 15px; color: #6780dd">
							<B>养殖日志</B>
							<a href="/Produce/Breed/AddLog.jsp" style="text-decoration: none;color: #a1eee4;">
								<img src="../image/tianjia.jpg" width="60" height="25" border="0" alt="添加养殖日志">
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
						<fieldset style="width: 100%;">
							<legend>新增养殖日志</legend>
							<table border="0" width="100%">
								<tr align="center">
									<td align="center">养殖日志编号</td>
									<td align="center">投放鱼苗编号</td>
									<td align="center">记录时间</td>
									<td align="center">温&nbsp;度</td>
									<td align="center">HP&nbsp;值</td>
									<td align="center">氨&nbsp;氮</td>
									<td align="center">亚硝酸盐</td>
									<td align="center">溶氧量</td>
									<td align="center">备&nbsp;注</td>
									<td align="center">操&nbsp;作</td>
									
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
											<a href="../LookLogUpdateServlet?cultivatelogid=${list.cultivatelogid}" style="text-decoration: none;color: #a1eee4;">修改</a>&nbsp;|
	<!--										<a href="" onclick="check()" style="text-decoration: none;color: #a1eee4;">删除</a>-->
											<input type="button" value="删除" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.cultivatelogid}')">
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
