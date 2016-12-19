<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>My JSP 'xiuLabors.jsp' starting page</title>
	</head>
	<body>
	<form action="${pageContext.request.contextPath}/ServletPage?method=savelaodong" method="post">
		<legend>
			<font color=red>承包户劳动力</font>
		</legend>
		<table cellspacing="1" cellpadding="0" border="0"
			style="width: 100%; background-color: #99CC99;">
			<tr bgcolor="#99DDFF" height="26"
				style="color: blue; font-size: 19px;" align="center">
				
				<th width="100">
					姓名
				</th>
				<th width="100">
					与承包户之间的关系
				</th>
				<th width="100">
					出生日期
				</th>
				<th width="70">
					性 别
				</th>
				<th width="170">
					备注
				</th>

			</tr>
			<c:forEach items="${labors}" var="labor">
				<tr style="font-size: 18px; color: black;" bgcolor="white"
					align="center">
					    <input type="hidden"  style="border: white;border-spacing: 0px" name="identityid" value="${labor.identityid}" />
						<input type="hidden"  style="border: white;border-spacing: 0px" name="laborsid" value="${labor.laborsid}" />
				
					<td width="100">
					    <input type="text" style="border: white;border-spacing: 0px" name="name" value="${labor.name}"/>
				
					</td>
					<td width="100">
					   <input type="text"  style="border: white;border-spacing: 0px" name="relation" value="${labor.relation}"/>
						
					</td>
					<td width="100">
				     <input type="text" style="border: white;border-spacing: 0px" name="birthday" value="${labor.birthday}" readonly="readonly"/>
					</td>
					<td width="70">
						<c:if test="${labor.gender==0}">女</c:if>
						<c:if test="${labor.gender==1}">男</c:if>
						<input type="hidden" style="border: white;border-spacing: 0px" name="gender" value="${labor.gender}"/>
						
					</td>
					<td width="170">
					<input type="text"  style="border: white;border-spacing: 0px" name="note" value="${labor.note}"/>
						
					</td>

				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td></td>
				<td colspan="2">
					<input type="submit" value="提交">

				</td>
				<td colspan="2">
					<a href="${pageContext.request.contextPath}/ServletPage?method=laodong">返回前页</a>
				</td>
			</tr>
		</table>
</form>
	</body>
</html>
