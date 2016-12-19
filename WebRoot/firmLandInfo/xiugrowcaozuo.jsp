
<%@ page language="java" import="java.util.*" pageEncoding="GBK"
	isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>种植信息</title>
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/script/icon.css"
			type="text/css"></link>
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/script/easyui.css"
			type="text/css"></link>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/script/jquery-1.4.4.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/script/jquery.easyui.min.js"></script>

	</head>
	<body>
		<form
			action="${pageContext.request.contextPath}/Group?method=savexiucaozuo"
			method="post">
			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=blue>种植操作信息</font>
				</legend>
				<br>
				<br>
				<table cellspacing="1" cellpadding="0" border="0"
					style="width: 100%; background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26"
						style="color: blue; font-size: 19px;">

						<th width="5%">
							种植信息编号
						</th>
						<th width="8%">
							日志时间
						</th>
						<th width="8%">
							操作时间
						</th>
						<th width="6%">
							操作人
						</th>
						<th width="5%">
							操作编号
						</th>
						<th width="5%">
							投入品种类
						</th>
						<th width="5%">
							投入品
						</th>
						<th width="5%">
							用途
						</th>
						<th width="5%">
							操作方法
						</th>
						<th width="5%">
							亩用量
						</th>
						<th width="5%">
							棚用量
						</th>
						<th width="5%">
							总用量
						</th>
						<th width="5%">
							安全期(天)
						</th>
						<th width="8%">
							有效期限
						</th>
						<th width="8%">
							备注
						</th>
					</tr>

					<tr style="font-size: 18px; color: black;" bgcolor="white"
						align="center">
						<input type="hidden" size="13" name="plantoperationsid"
							style="border: white; border-spacing: 0px"
							value="${plants.plantoperationsid}">
							
						<td>
							<input type="text" size="13" name="firmlandid"
								style="border: white; border-spacing: 0px"
								value="${plants.firmlandid}">
						</td>
						<td>
							<input type="text" size="13" name="logdate"
								style="border: white; border-spacing: 0px"
								value="${plants.logdate}">
						</td>
						<td>
							<input type="text" size="13" name="operatetime"
								style="border: white; border-spacing: 0px"
								value="${plants.operatetime}">
						</td>
						<td>
							<input type="text" size="13" name="operateperson"
								style="border: white; border-spacing: 0px"
								value="${plants.operateperson}">
						</td>
						<td>
							<input type="text" size="13" name="subtypeid"
								style="border: white; border-spacing: 0px"
								value="${plants.subtypeid}">
						</td>
						<td>
							<input type="text" size="13" name="subtypeid1"
								style="border: white; border-spacing: 0px"
								value="${plants.subtypeid1}">
						</td>
						<td>
							<input type="text" size="13" name="objectid"
								style="border: white; border-spacing: 0px"
								value="${plants.objectid}">
						</td>
						<td>
							<input type="text" size="13" name="purpose"
								style="border: white; border-spacing: 0px"
								value="${plants.purpose}">
						</td>
						<td>
							<input type="text" size="13" name="operationmethod"
								style="border: white; border-spacing: 0px"
								value="${plants.operationmethod}">
						</td>
						<td>
							<input type="text" size="13" name="quantityperarea"
								style="border: white; border-spacing: 0px"
								value="${plants.quantityperarea}">
						</td>
						<td>
							<input type="text" size="13" name="quantityperhouse"
								style="border: white; border-spacing: 0px"
								value="${plants.quantityperhouse}">
						</td>
						<td>
							<input type="text" size="13" name="quantity"
								style="border: white; border-spacing: 0px"
								value="${plants.quantity}">
						</td>
						<td>
							<input type="text" size="13" name="safeperiod"
								style="border: white; border-spacing: 0px"
								value="${plants.safeperiod}">
							${plants.safeperiod }
						</td>
						<td>
							<input type="text" size="13" name="safedate"
								style="border: white; border-spacing: 0px"
								value="${plants.safedate}">
						</td>
						<td>
							<input type="text" size="13" name="note"
								style="border: white; border-spacing: 0px"
								value="${plants.note}">
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
							<a href="${pageContext.request.contextPath}/Group?method=growcaozuo">返回前页</a>
						</td>
						<td></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</body>
</html>
