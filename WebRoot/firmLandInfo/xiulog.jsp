<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
		<title>My JSP 'log.jsp' starting page</title>
	</head>
	
	<body>
		<form action="${pageContext.request.contextPath}/Group?method=savexiulog"
			method="post">
			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>��ֲ��־��Ϣ</font>
				</legend>
				<br>
				<br>
				<table cellspacing="1" cellpadding="0" border="0"
					style="width: 100%; background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26"
						style="color: blue; font-size: 19px;">

						<th width="3%">
							��ֲ��Ϣ���
						</th>
						<th width="40%">
							����ʱ��
						</th>
						<th width="7%">
							����
						</th>
						<th width="7%">
							ʪ��
						</th>
						<th width="7%">
							����
						</th>
						<th width="7%">
							�¶�
						</th>
						<th width="7%">
							�����¶�
						</th>
						<th width="7%">
							����ʪ��
						</th>
						<th width="7%">
							��������
						</th>
						<th width="15%">
							��ע
						</th>
					</tr>
					<tr style="font-size: 18px; color: black;" bgcolor="white"
						align="center">

						<input type="hidden" name="plantlogsid"
							style="border: white; border-spacing: 0px"
							value="${logs.plantlogsid}">
						<td>
							<input type="text" size="13" name="firmlandid"
								style="border: white; border-spacing: 0px"
								value="${logs.firmlandid}">
						</td>
						<td>
						<input type="text" size="13"  name="logdate"
								style="border: white; border-spacing: 0px"
								readonly="readonly" value="${logs.logdate}">
						
						</td>
						<td>
							<input type="text" size="13"  name="weather"
								style="border: white; border-spacing: 0px"
								value="${logs.weather}">
						</td>
						<td>
							<input type="text" size="13"  name="humidity"
								style="border: white; border-spacing: 0px"
								value="${logs.humidity}">
						</td>
						<td>
							<input type="text"  size="13" name="wind"
								style="border: white; border-spacing: 0px" value="${logs.wind}">
						</td>
						<td>
							<input type="text"  size="13" name="temperature"
								style="border: white; border-spacing: 0px"
								value="${logs.temperature}">
						</td>
						<td>
							<input type="text"  size="13" name="soidtemperature"
								style="border: white; border-spacing: 0px"
								value="${logs.soidtemperature}">

						</td>
						<td>
							<input type="text" size="13"  name="soidhumidity"
								style="border: white; border-spacing: 0px"
								value="${logs.soidhumidity}">
						</td>
						<td>
							<input type="text"  size="13" name="nextweather"
								style="border: white; border-spacing: 0px"
								value="${logs.nextweather}">
						</td>
						<td>
							<input type="text"  size="13" name="note"
								style="border: white; border-spacing: 0px" value="${logs.note}">
						</td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" value="�ύ"
								style="border: white; border-spacing: 0px">
						</td>
						<td colspan="2">
							<a href="${pageContext.request.contextPath}/Group?method=plantlog">����ǰҳ</a>
						</td>
						<td></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</body>
</html>
