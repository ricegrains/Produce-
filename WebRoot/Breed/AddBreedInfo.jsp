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
			<a href="/Produce/BreedServlet" style="margin-top: 20; margin-left: 38; text-decoration: none;color: #e37c7b; font-size: 30px;">返回上一页</a>
		</div>
		<table class="table" align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>养殖信息</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;">
									<legend>养殖信息 </legend>
									<form action="../BreedAddServlet" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<td align="right"> 池塘编号： </td>
											<td align="left">
<!--												<input style="background-color: #e8f2fe;" type="text" disabled="disabled" size="25" name="pondid">-->
<!--												<input style="background-color: #e8f2fe;" type="hidden" size="25" name="pondid">-->
											</td>
											<td align="right"> 地块编号： </td>
											<td align="left">
												<my:soil tablename="ContractSignPlots" id="ContractSignPlotsID" columnname="PlotType"/>
											</td>
										</tr>
										<tr>
											<td align="right"> 水域特征： </td>
											<td align="left">
												<textarea style="background-color: #e8f2fe;" rows="2" cols="24" name="watercharacterize"></textarea>
											</td>
											<td align="right"> 备&nbsp;注： </td>
											<td align="left">
												<textarea style="background-color: #e8f2fe;" rows="2" cols="24" name="note"></textarea>
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
