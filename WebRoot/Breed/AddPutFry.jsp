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
			<input style="margin-top: 20;background-color: #e8f2fe; width: 18%;height: 10%; font-size: 15px;" border="0" type="text" disabled="disabled" value="养殖管理>>添加投放鱼饵的信息">
			<a href="/Produce/PutFryServlet" style="margin-top: 20; margin-left: 38; text-decoration: none;color: #e37c7b; font-size: 30px;">返回上一页</a>
		</div>
		
		<form action="/Produce/PutFryAddServlet" method="post" name="form1">
		
			<table class="table" align="center" border="0" width="80%" bgcolor="#a9c7ed">
				<tr>
					<td bgcolor="#adccef" width="80%">
						<div style="font-size: 15px; color: #6780dd">
							<B>投放鱼苗</B>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
						<fieldset style="width: 100%;">
							<legend>鱼苗投放情况</legend>
							<table border="0" width="100%">
								<tr align="center">
									<td align="right">投放鱼苗编号：</td>
									<td align="left">
<!--										<input style="background-color: #e8f2fe;" type="text" disabled="disabled" size="25" name="putfryid">-->
<!--										<input style="background-color: #e8f2fe;" type="hidden" size="25" name="putfryid">-->
									</td>
									<td align="right">地块编号：</td>
									<td align="left">
										<my:soil tablename="ContractSignPlots" columnname="PlotType" id="ContractSignPlotsID"/>
									</td>
									
								</tr>
								<tr align="center">
									<td align="right">捕捞时间：</td>
									<td align="left">
										<input type="text" size="25" name="fishingdate">
									</td>
									<td align="right">投入品种：</td>
									<td align="left">
										<my:soil tablename="Objects" columnname="ObjectName" id="ObjectID"/>
									</td>
								</tr>
								<tr align="center">
									<td align="right">投放时间：</td>
									<td align="left">
										<input type="text" size="25" name="putfrydate">
									</td>
									<td align="right">投放数量：</td>
									<td align="left">
										<input type="text" size="25" name="quantity">
									</td>
								
								</tr>
								<tr align="center">
									<td align="right">投放规格：</td>
									<td align="left">
										<input type="text" size="25" name="type">
									</td>
									<td align="right">重量：</td>
									<td align="left">
										<input type="text" size="25" name="weight">
									</td>
								</tr>
								<tr align="center">	
									<td align="right">种苗来源：</td>
									<td align="left">
										<input type="text" size="25" name="comefrom">
									</td>
									<td align="right">是否检疫：</td>
									<td align="left">
										<input type="text" size="25" name="quarantine">
									</td>
								
								</tr>
								<tr align="center">
									
									<td align="right">备注：</td>
									<td align="left"  colspan="2">
										<textarea style="background-color: #e8f2fe;" rows="2" cols="24" name="note"></textarea>
									</td>
									<td>
										<div align="left">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="submit" style="background-color: #b1d3ff;" size="20" value="确定">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</html>
