<%@ page language="java" import="java.util.*" pageEncoding="GBK"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>My JSP 'addgrow.jsp' starting page</title>
	</head>

	<body>
	<form action="../Group?method=saveaddgrow" method="post">
		<font color="blue" style="font-size: 18px; font: bold;">种植添加&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		<font color="red" style="font-size: 22px; font: bold;">
			种植信息--种植日志--种植操作</font>
		<br>
		<br>
		<br>
		<fieldset style="font-size: 5px; font: bold;">
			<table cellspacing="1" cellpadding="0" border="0"
				style="width: 100%; background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26"
					style="color: blue; font-size: 19px;">

					<th width="8%">
						地块编号
					</th>
					<td>
						<select name="contractsignplotsid">
							<c:forEach items="${consign}" var="grow">
								<option value="${grow.contractsignplotsid}">
									${grow.contractsignplotsid}
								</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr  bgcolor="#99DDFF" height="26"
					style="color: blue; font-size: 19px;">
					<th width="8%">
						温室大棚数量
					</th>
					<td>
						<input type="text" name="greenhousequantity"
							style="border: white; border-spacing: 0px">
					</td>
				</tr>
				<tr  bgcolor="#99DDFF" height="26"
					style="color: blue; font-size: 19px;">
					<th width="15%">
						温室大棚面积
					</th>
					<td>
						<input type="text" name="greenhousearea"
							style="border: white; border-spacing: 0px">
					</td>
				</tr>
				<tr  bgcolor="#99DDFF" height="26"
					style="color: blue; font-size: 19px;">
					<th width="18%">
						土壤特征
					</th>
					<td>
						<input type="text" name="soilcharacterize"
							style="border: white; border-spacing: 0px">
					</td>
				</tr>
				<tr  bgcolor="#99DDFF" height="26"
					style="color: blue; font-size: 19px;">
					<th width="27%">
						备注
					</th>
					<td>
						<textarea rows="" cols="" name="note"></textarea>

					</td>
				</tr>
				<tr  bgcolor="#99DDFF" height="26"
					style="color: blue; font-size: 19px;">
					
					<td >
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" value="提交"
							style="border: white; border-spacing: 0px">
					</td>
					<td >
						<a href="../Group?method=zonzixinxi">返回前页</a>
					</td>
					
				</tr>
			</table>
		</fieldset>
		</form>
	</body>
</html>
