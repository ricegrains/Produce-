<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="my" uri="/MySelectTag"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<style>
		.table {margin-top: 10%; margin-right: 50px;}
	</style>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe; width: 18%;height: 10%; font-size: 15px;" border="0" type="text" disabled="disabled" value="��ֳ����>>�����ֳ��Ϣ">
			<a href="/Produce/BreedLoopServlet" style="margin-top: 20; margin-left: 38; text-decoration: none;color: #e37c7b; font-size: 30px;">������һҳ</a>
		</div>
		<table class="table" align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>ѭ����ֳ��Ϣ</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;">
									<legend>��ֳ��Ϣ </legend>
									<form action="BreedLoopServlet" method="post" name="form2">
										<table border="1" width="90%" align="center">
											<tr>
												<td align="right">ѭ����ֳ��ţ� </td>
												<td align="left">
	<!--												<input style="background-color: #e8f2fe;" type="text" size="25" disabled="disabled" name="cultivaterotationid">-->
	<!--												<input style="background-color: #e8f2fe;" type="hidden" size="25" name="cultivaterotationid">-->
												</td>
												<td align="right"> �ؿ��ţ� </td>
												<td align="left">
													<my:soil tablename="ContractSignPlots" id="ContractSignPlotsID" columnname="PlotType"/>
												</td>
											</tr>
											<tr>
												<td align="right">����ʱ�䣺 </td>
												<td align="left">
													<select name="fishingdate">
														<c:forEach items="${list1 }" var="list">
															<option value="${list.fishingdate }">${list.fishingdate }</option>
														</c:forEach>
													</select>
<!--													<input style="background-color: #e8f2fe;" type="text" size="25" name="fishingdate">-->
												</td>
												<td align="right"> Ͷ��ʱ�䣺 </td>
												<td align="left">
													<select name="fishingdate">
														<c:forEach items="${list1 }" var="list">
															<option value="${list.putfrydate }">${list.putfrydate }</option>
														</c:forEach>
													</select>
<!--													<input style="background-color: #e8f2fe;" type="text" size="25" name="putfrydate">-->
												</td>
											</tr>
											<tr>
												<td align="right">��ֳ� </td>
												<td align="left">
													<my:soil tablename="Objects" id="ObjectID" columnname="ObjectName"/>
<!--													<input style="background-color: #e8f2fe;" type="text" size="25" name="objectid">-->
												</td>
												<td align="right">��&nbsp;ע�� </td>
												<td align="left">
													<textarea style="background-color: #e8f2fe;" rows="2" cols="24" name="note"></textarea>
												</td>
											</tr>
											<tr>
												<td colspan="4">
													<div align="right">
														<input type="submit" style="background-color: #b1d3ff;" size="20" value="ȷ��">
														&nbsp;&nbsp;&nbsp;
													</div>
												</td>
											</tr>
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
