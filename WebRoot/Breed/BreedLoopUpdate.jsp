<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="my" uri="/MySelectTag"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<style>
		.table {margin-top: 10%; margin-right: 50px;}
	</style>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="margin-top: 20;background-color: #e8f2fe; width: 18%;height: 10%; font-size: 15px;" border="0" type="text" disabled="disabled" value="养殖管理>>添加养殖信息">
			<a href="BreedInfo.jsp" style="margin-top: 20; margin-left: 38; text-decoration: none;color: #e37c7b; font-size: 30px;">返回上一页</a>
		</div>
		<table class="table" align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>循环养殖信息</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;">
									<legend>养殖信息 </legend>
									<form action="BreedLoopServlet" method="post" name="form2">
										<table border="1" width="90%" align="center">
											<tr>
												<td align="right">循环养殖编号： </td>
												<td align="left">
													<input style="background-color: #e8f2fe;" type="hidden" size="25" name="cultivaterotationid" value="${List.cultivaterotationid}">
												</td>
												<td align="right"> 地块编号： </td>
												<td align="left">
													<my:breed table="ContractSignPlots" id="ContractSignPlotsID" name="PlotType"/>
												</td>
											</tr>
											<tr>
												<td align="right">捕捞时间： </td>
												<td align="left">
													<input style="background-color: #e8f2fe;" type="text" size="25" name="fishingdate" value="${List.fishingdate }">
												</td>
												<td align="right"> 投放时间： </td>
												<td align="left">
													<input style="background-color: #e8f2fe;" type="text" size="25" name="putfrydate" value="${List.putfrydate }">
												</td>
											</tr>
											<tr>
												<td align="right">养殖项： </td>
												<td align="left">
													<input style="background-color: #e8f2fe;" type="text" size="25" name="objectid" value="${List.objectid }">
												</td>
												<td align="right">备&nbsp;注： </td>
												<td align="left">
													<textarea style="background-color: #e8f2fe;" rows="2" cols="24" name="note">${List.note }</textarea>
												</td>
											</tr>
											<tr>
												<td colspan="4">
													<div align="right">
														<input type="submit" style="background-color: #b1d3ff;" size="20" value="确定">
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
