<%@ page language="java" import="java.util.*" pageEncoding="GBK"
	isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>修改地块信息</title>
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
		<script type="text/javascript">
    </script>
	</head>
	<body>
		<form action="${pageContext.request.contextPath}/ServletPage?method=savehetondikuai&id=${contractid}" method="post">
			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>合同地块信息</font>
				</legend>
				<table cellspacing="1" cellpadding="0" border="0"
					style="width: 100%; background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26"
						style="color: blue; font-size: 19px;">
						<th width="70">
							合同编号
						</th>
						<th width="80">
							地块编号
						</th>
						<th width="80">
							地块面积
						</th>
						<th width="100">
							地块位置
						</th>
						<th width="100">
							地块类型
						</th>
						<th width="100">
							隶属大队
						</th>
						<th width="160">
							备注
						</th>
					
					</tr>
					
						<tr style="font-size: 18px; color: black;" bgcolor="white"
							align="center">
							
							<input type="hidden" name="contractsignplotsid"
								style="border: white; border-spacing: 0px"
								value="${dikuai.contractsignplotsid}">
								
							<td>
						<input type="text" name="contractid"
							style="border: white; border-spacing: 0px"
							value="${dikuai.contractid}">
					</td>
							<td>
							 <input type="text" name="plotid"
								style="border: white; border-spacing: 0px"
								value="${dikuai.plotid}">
								
							</td>
							<td>
							
							<input type="text" name="plotarea"
								style="border: white; border-spacing: 0px"
								value="${dikuai.plotarea}">
							
							</td>
							<td>
							<input type="text" name="plotlocation"
								style="border: white; border-spacing: 0px"
								value="${dikuai.plotlocation}">
								
							</td>
							<td>
							<input type="text" name="plottype"
								style="border: white; border-spacing: 0px"
								value="${dikuai.plottype}">
								
							</td>
							<td>
							<input type="text" name="groupid"
								style="border: white; border-spacing: 0px"
								value="${dikuai.groupid}">
								
							</td>
							<td>
							<input type="text" name="note"
								style="border: white; border-spacing: 0px"
								value="${dikuai.note}">
								
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
							<a
								href="${pageContext.request.contextPath}/ServletPage?method=fanhui&id=${contractid}">返回前页</a>
						</td>
						<td></td>
					</tr>
				</table>
			</fieldset>
			</form>
	</body>
</html>
