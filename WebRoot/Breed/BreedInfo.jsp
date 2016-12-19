<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<script>
		function check(pondid)
		{
			var bln = confirm("你确定要永久删除" + pondid + "？？？")
			if(bln==true){
				location.href = "${pageContext.request.contextPath}/BreedDeleteServlet?pondid="+pondid;
			}
		 }
		
	</script>	
	<style>
		.table {margin-top: 10%; margin-right: 50px;}
	</style>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe; width: 18%;height: 10%; font-size: 15px;" border="0" type="text" disabled="disabled" value="养殖管理>>查看养殖信息">
		</div>
		<table class="table" align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>养殖信息</B>
									<a href="/Produce/Breed/AddBreedInfo.jsp" style="text-decoration: none;color: #a1eee4;">
										<img src="/Produec/Breed/image/tianjia.jpg" width="60" height="25" border="0" alt="添加养殖信息">
									</a>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;">
									<legend>养殖信息 </legend>
									<form action="BreedServlet" method="get" name="form1">
										<table border="1" width="90%" align="center">
											<tr>
												<td align="center"> 池塘编号  </td>
												<td align="center"> 地块编号  </td>
												<td align="center"> 水域特征 </td>
												<td align="center"> 备&nbsp;注  </td>
												<td align="center"> 操&nbsp;作  </td>
											</tr>
											<c:forEach items="${list}" var="list">
												<tr>
													<td align="center">${list.pondid}</td>
													
													<td align="center">${list.contractsignplotsid}</td>
													
													<td align="center">${list.watercharacterize};</td>
													
													<td align="center">${list.note}</td>
													
													<td align="center">
														<a href="../Produce/BreedUpdateServlet?pondid=${list.pondid}" style="text-decoration: none;color: #a1eee4;">修改</a>&nbsp;|
<!--															<a href="../Produce/BreedDeleteServlet?pondid=${list.pondid}" onclick="check('${list.pondid}')" style="text-decoration: none;color: #a1eee4;">删除</a>-->
														<input type="button" value="删除" style="color: #a1eee4; background-color: #e3f1fe;" onclick="check('${list.pondid}')">
													</td>
												</tr>
											</c:forEach>
										</table>
									</form>
								</fieldset>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
