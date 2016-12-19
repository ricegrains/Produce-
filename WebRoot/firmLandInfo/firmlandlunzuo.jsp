<%@ page language="java" import="java.util.*" pageEncoding="GBK"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


		<title>My JSP 'firmlandlunzuo.jsp' starting page</title>

	</head>

	<body>
		<form action="${pageContext.request.contextPath}/Group?method=savelunzuo&id=${contractsignplotsid}" method="post">
			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>地块轮作信息</font>
				</legend>
				<table cellspacing="1" cellpadding="0" border="0"
					style="width: 100%; background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26"
						style="color: blue; font-size: 19px;">
						<th width="13%">
							地块编号
						</th>
						<th width="13%">
							采摘日期
						</th>
						<th width="13%">
							播种日期
						</th>
						<th width="15%">
							农作物
						</th>
						<th width="15%">
							前茬农作物
						</th>
						<th width="15%">
							备注
						</th>

					</tr>

					<tr style="font-size: 18px; color: black;" bgcolor="white"
						align="center">
						<input type="hidden" name="plotrotationsid"
							style="border: white; border-spacing: 0px"
							value="${lunzuo.plotrotationsid}">
						<td>
							<input type="text" name="contractsignplotsid"
								style="border: white; border-spacing: 0px"
								value="${lunzuo.contractsignplotsid}">
						</td>
						<td>
							<input type="text" name="pluckdate"
								style="border: white; border-spacing: 0px"
								value="${lunzuo.pluckdate}">
						</td>
						<td>
							<input type="text" name="sowingdate"
								style="border: white; border-spacing: 0px"
								value="${lunzuo.sowingdate}">
						</td>
						<td>
							<c:forEach items="${object}" var="o">
								<c:if test="${o.objectid==lunzuo.objectid}">
									<input type="hidden" name="objectid"
										style="border: white; border-spacing: 0px"
										value="${lunzuo.objectid}">
										${o.objectname}
								</c:if>
							</c:forEach>

						</td>
						<td>
						
						<c:forEach items="${object}" var="o">
								<c:if test="${o.objectid==lunzuo.prcedingobjectid}">
									<input type="hidden" name="prcedingobjectid"
										style="border: white; border-spacing: 0px"
										value="${lunzuo.prcedingobjectid}">
										${o.objectname}
								</c:if>
						</c:forEach>
							
						</td>
						<td>
							<input type="text" name="note"
								style="border: white; border-spacing: 0px"
								value="${lunzuo.note}">
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
								href="${pageContext.request.contextPath}/Group?method=fanhui&id=${contractsignplotsid}">返回前页</a>
						</td>
						<td></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</body>
</html>
