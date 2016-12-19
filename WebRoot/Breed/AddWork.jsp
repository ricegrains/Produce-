<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" uri="/MySelectTag"%>
<html>
	<head>
		<title>Work.jsp</title>
	</head>
	<style>
		.table {margin-top: 10%;margin-left: 5%;margin-right: 150px;}
	</style>
	<body bgcolor="#dfe8f4">
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe; width: 18%;height: 10%; font-size: 15px;" border="0" type="text" disabled="disabled" value="养殖管理>>添加养殖操作">
			<a href="/Produce/WorkServlet" style="margin-top: 20; margin-left: 38; text-decoration: none;color: #e37c7b; font-size: 30px;">返回上一页</a>
		</div>
		<table class="table" border="0" width="100%" bgcolor="#a9c7ed">
			<tr>
				<td bgcolor="#adccef" width="100%">
					<div style="font-size: 15px; color: #6780dd">
						<B>养殖操作</B>
					</div>
				</td>
			</tr>
			<tr>
				<td bgcolor="#e3f1fe" valign="middle" width="100%">
					<form action="/Produce/WorkAddServlet" method="post" name="from1">
					<table border="0" width="100%">
						<tr>
							<td width="100%">
								<fieldset style="width:100%;">
									<legend>养殖操作（投入品）</legend>
									<table border="1" width="100%">
										<tr>
											<td align="right">养殖操作编号</td>
											<td align="left">
												<input type="hidden" size="25" name="cultivateoperationid">
											</td>
											
											<td align="right">投放鱼苗编号</td>
											<td align="left">
												<select name="">
													<c:forEach items="${putfry }" var="putfry">
														<option value="${putfry.putfryid }">${putfry.objectid }</option>
													</c:forEach>
												</select>
<!--												<input type="text" size="25" name="putfryid">-->
											</td>
											
											<td align="center">操作时间</td>
											<td align="left">
												<input type="text" size="25" name="operatetime">
											</td>
											
										</tr>
										<tr>
											
											<td align="right">操作人</td>
											<td align="left">
												<input type="text" size="25" name="operateperson">
											</td>
											
											<td align="right">养殖操作</td>
											<td align="left">
												<input type="text" size="25" name="operateid">
											</td>
											
											<td align="right">投入品种类</td>
											<td align="left">
												<input type="text" size="25" name="oategoryid">
											</td>
											
										</tr>
										<tr>
										
											<td align="right">投入品</td>
											<td align="left">
												<my:soil tablename="Objects" id="ObjectID" columnname="objectName"/>	
<!--												<input type="text" size="25" name="objectid">-->
											</td>
											
											<td align="right">操作方法</td>
											<td align="left">
												<input type="text" size="25" name="operationmethod">
											</td>
											
											<td align="right">用&nbsp;量</td>
											<td align="left">
												<input type="text" size="25" name="weigh">
											</td>
											
										</tr>
										<tr>
										
											<td align="right">病害名称</td>
											<td align="left">
												<input type="text" size="25" name="diseasename">
											</td>
											
											<td align="right">发病原因</td>
											<td align="left">
												<input type="text" size="25" name="brokeOuttime">
											</td>
											
											<td align="right">备&nbsp;注</td>
											<td align="left">
												<input type="text" size="25" name="note">
											</td>
										</tr>
										<tr>
											<td colspan="5" align="right">
												<input type="submit" style="background-color: #b1d3ff;" size="20" value="确定添加">
											</td>
										</tr>
									</table>
								</fieldset>
							</td>
						</tr>
					</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
