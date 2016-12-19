<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>设备管理</title>

  </head>
  <body bgcolor="#dfe8f4">
		<div style="font-family: inherit">&nbsp; 
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="系统设置>>修改设备">
		</div>
		<a href="MainInstrument" style="text-decoration:none;">返回上一页</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>设备信息</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;"  >
									<legend>设备管理 </legend>
									<form action="AddInstrument" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<input type="hidden" name="instrumentid" value="${instrument.instrumentid }"/>
										
											<td align="right" height="40">设备名称 </td>
											<td>
								  			   <input type="text" name="instrumentname" value="${instrument.instrumentname }">
								  			</td>
											<td align="right"> 型号 </td>
											<td align="left">
												<input type="text" name="type" value="${instrument.type }">
											</td>
										</tr>
								        <tr>
									    	<td align="right" height="40">价格</td>
									    	<td align="left">
									    	 	 <input type="text" name="price" value="${instrument.price }">
									    	</td>
									    	<td align="right" height="40">供货商名称 </td>
											<td align="left">
								  			   <input type="text" name="vendorname" value="${instrument.vendorname }">
								  			</td>
								      </tr>
								      <tr>
										  <td align="right"> 采购日期 </td>
										  <td align="left">
											  <input type="text" name="purchaseddate" value="${instrument.purchaseddate }">
										  </td>
										  <td align="right"> 保管人 </td>
										  <td align="left">
											  <input type="text" name="custodian" value="${instrument.custodian }">
										  </td>
									</tr>
									<tr>
										<td align="right"> 备注</td>
										<td colspan="3" align="left">
											<textarea cols="40" rows="3" name="note">${instrument.note }</textarea>
										</td>
									</tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit"  name="save" value="确定"/>
								    		<input type="reset" value="重置"/> 
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
