<%@ page language="java" import="java.util.*" pageEncoding="GBK"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>My JSP 'addgrow.jsp' starting page</title>
	</head>

	<body>
	<form action="${pageContext.request.contextPath}/Group?method=savexiu" method="post">
		<font color="blue" style="font-size: 18px; font: bold;">种植修改操作&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		<font color="red" style="font-size: 22px; font: bold;">
			种植信息--种植日志--种植操作</font>
		<br>
		<br>
		<br>
		<fieldset style="font-size: 19px; font: bold;">
			<table cellspacing="1" cellpadding="0" border="0"
				style="width: 100%; background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26"
					style="color: blue; font-size: 19px;">

					<th width="8%">
						地块编号
					</th>
					<th width="8%">
						温室大棚数量
					</th>
					<th width="15%">
						温室大棚面积
					</th>
					<th width="18%">
						土壤特征
					</th>
					<th width="27%">
						备注
					</th>

				</tr>
				
					<tr style="font-size: 18px; color: black;" bgcolor="white"
						align="center">
						<input type="hidden" name="firmlandid"
							style="border: white; border-spacing: 0px" value="${growxinxi.firmlandid}">
						<td>
							<input type="text" name="contractsignplotsid"
								style="border: white; border-spacing: 0px" value="${growxinxi.contractsignplotsid}">
						</td>
						<td>
							<input type="text" name="greenhousequantity"
								style="border: white; border-spacing: 0px" value="${growxinxi.greenhousequantity}">
						</td>
						<td>
							<input type="text" name="greenhousearea"
								style="border: white; border-spacing: 0px" value="${growxinxi.greenhousearea}">
						</td>
						<td>
							<input type="text" name="soilcharacterize"
								style="border: white; border-spacing: 0px" value="${growxinxi.soilcharacterize}">
						</td>
						<td>
							<input type="text" name="note"
								style="border: white; border-spacing: 0px" value="${growxinxi.note}">
						</td>
					</tr>
				
				<tr>
					<td></td>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" value="提交"
							style="border: white; border-spacing: 0px">
					</td>
					<td colspan="2">
						<a href="${pageContext.request.contextPath}/Group?method=zonzixinxi">返回前页</a>
					</td>
					<td></td>
				</tr>
			</table>
		</fieldset>
		</form>
	</body>
</html>
