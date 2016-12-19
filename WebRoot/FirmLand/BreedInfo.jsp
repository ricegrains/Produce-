<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>BreedInfo.jsp</title>
	</head>
	<body bgcolor="#dfe8f4">
		<form action="" method="post" name="form1">
			<table border="0" width="100%" bgcolor="#a9c7ed">
				<tr>
					<td bgcolor="#adccef" width="100%">
						<div style="font-size: 15px; color: #6780dd">
							<B>养殖基本信息</B>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
						<table border="0" width="100%">
							<tr align="center">
								<td align="right">组织编号：</td>
								<td align="left">&nbsp;&nbsp;&nbsp;</td>
								<td align="right">组织名称：</td>
								<td align="left">
									<input type="text" size="20" name="orgname">
								</td>
							
								<td align="right">农户编号：</td>
								<td align="left">&nbsp;&nbsp;&nbsp;</td>
								
							</tr>
							<tr align="center">
								<td align="right">农户名称：</td>
								<td align="left">
									<input type="text" size="20" name="farmername">
								</td>
								<td align="right">池塘编号：</td>
								<td align="left">&nbsp;&nbsp;&nbsp;</td>
								<td align="right">池塘面积：</td>
								<td align="left">
									<input type="text" size="20" name="area">
								</td>
							
							</tr>
							<tr align="center">
								<td align="right">投放品种：</td>
								<td align="left">&nbsp;&nbsp;&nbsp;</td>
								<td align="right">投放数量：</td>
								<td align="left">
									<input type="text" size="20" name="numder">
								</td>
								
								<td align="right">规格(条/kg)：</td>
								<td align="left">
									<input type="text" size="20" name="spec">
								</td>
							</tr>
							<tr align="center">
								<td align="right">重量(kg)：</td>
								<td align="left">
									<input type="text" size="20" name="weigh">
								</td>
								
								<td align="right">鱼苗来源：</td>
								<td align="left">
									<input type="text" size="20" name="origin">
								</td>
								<td align="right">是否检疫：</td>
								<td align="left">
									<input type="text" size="20" name="quarant">
								</td>
							</tr>
							
							<tr align="center">
								<td align="right">投苗日期：</td>
								<td align="left">&nbsp;&nbsp;&nbsp;</td>
								<td align="right">打捞日期：</td>
								<td align="left">&nbsp;&nbsp;&nbsp;</td>
								<td align="right">
									<a href="" style="text-decoration: none;" >投放鱼苗</a>
<!--									<input type="submit" style="background-color: #b1d3ff;" size="20" value="投放鱼苗">-->
								</td>
								<td align="center">
									<a href="" style="text-decoration: none;">查看日志明细</a>
<!--									<input type="submit" style="background-color: #b1d3ff;" size="20" value="查看日志明细">-->
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br>
			<table border="0" width="100%" bgcolor="#a9c7ed">
				<tr>
					<td bgcolor="#adccef" width="100%">
						<div style="font-size: 15px; color: #6780dd">
							<B>填写当日养殖日志</B>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" width="100%">
						<table border="0" width="100%">
							<tr>
								<td width="60%">
									<fieldset style="width:100%;">
										<legend>水质测定</legend>
										<table border="1" width="100%">
											<tr bgcolor="#e4e9f2">
												<td align="center">PH</td>
												<td align="center">溶氧量</td>
												<td align="center">氨氮</td>
												<td align="center">亚硝酸盐</td>
											</tr>
											<tr>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
											</tr>
										</table>
										<div align="right">
											<input type="submit" style="background-color: #b1d3ff;" value="采集传感器数据">
										</div>
									</fieldset>
								</td>
								<td width="40%">
									<fieldset style="width:100%;">
										<legend>水温测定</legend>
										<table border="1" width="100%">
											<tr bgcolor="#e4e9f2">
												<td align="center">时间段</td>
												<td align="center">水温测定值</td>
												<td align="center">水质营养测定值</td>
											</tr>
											<tr>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
											</tr>
										</table>
										<div align="right">
											<input type="submit" style="background-color: #b1d3ff;" value="采集传感器数据">
										</div>
									</fieldset>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" width="100%">
						<table border="0" width="100%">
							<tr>
								<td width="70%">
									<fieldset style="width:100%;">
										<legend>投饵情况</legend>
										<table border="1" width="100%">
											<tr bgcolor="#e4e9f2">
												<td align="center">饵料名称</td>
												<td align="center">投放时间</td>
												<td align="center">使用量(kg)</td>
												<td align="center">备&nbsp;注</td>
											</tr>
											<tr>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
											</tr>
										</table>
									</fieldset>
								</td>
								<td width="30%">
									<fieldset style="width:100%;">
										<legend>施肥情况</legend>
										<table border="1" width="100%">
											<tr bgcolor="#e4e9f2">
												<td align="center">肥料名称</td>
												<td align="center">使用量(kg)</td>
											</tr>
											<tr>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
											</tr>
										</table>
									</fieldset>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" width="100%">
						<table border="0" width="100%">
							<tr>
								<td width="70%">
									<fieldset style="width:100%;">
										<legend>病害情况</legend>
										<table border="1" width="100%">
											<tr bgcolor="#e4e9f2">
												<td align="center">病害名称</td>
												<td align="center">发病时间</td>
												<td align="center">用药名称</td>
												<td align="center">用药时间</td>
												<td align="center">用药计量</td>
											</tr>
											<tr>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
											</tr>
										</table>
									</fieldset>
								</td>
								<td width="30%">
									<fieldset style="width:100%;">
										<legend>增氧机</legend>
										<table border="1" width="100%">
											<tr bgcolor="#e4e9f2">
												<td align="center">增氧操作</td>
												<td align="center">时&nbsp;间</td>
											</tr>
											<tr>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
											</tr>
										</table>
									</fieldset>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e3f1fe" valign="middle" width="100%" colspan="2">
						<table border="0" width="100%">
							<tr>
								<td width="100%">
									<fieldset style="width:100%;">
										<legend>病害情况</legend>
										<table border="1" width="100%">
											<tr bgcolor="#e4e9f2">
												<td align="center">进排水功率</td>
												<td align="center">进水时间(小时)</td>
												<td align="center">排水时间(小时)</td>
											</tr>
											<tr>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
												<td align="center">&nbsp;</td>
											</tr>
										</table>
									</fieldset>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
			</table>
			
			<div align="right">
				<input type="submit" style="background-color: #b1d3ff;" size="20" value="确定">
				&nbsp;&nbsp;&nbsp;
				<input type="submit" style="background-color: #b1d3ff;" size="20" value="关闭">
			</div>
		</form>
	</body>
</html>
