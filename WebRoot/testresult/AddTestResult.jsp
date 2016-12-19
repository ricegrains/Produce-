<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加检测结果</title>

  </head>
  <body bgcolor="#dfe8f4">
		<div style="font-family: inherit">&nbsp;  
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="质量安全检测>>添加检测结果">
		</div>
		<a href="MainTestResult" style="text-decoration:none;">返回上一页</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>添加检测结果</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;"  >
									<legend> </legend>
									<form action="AddTestResult" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<input type="hidden" name="testresultid" />
										
											<td align="right" height="40">检测人 </td>
											<td>
												<input type="text" name="operationperson">
								  			</td>
											<td align="right">检测时间</td>
											<td align="left">
												<input type="text" name="operationtime">
											</td>
										</tr>
								        <tr>
									    	<td align="right" height="40">监测结果</td>
									    	<td >
									    		<select name="result">
									    			<option value="合格">合格</option>
									    			<option value="不合格">不合格</option>
									    		</select>
									    	</td>
									    	<td align="right" height="40">检测范围</td>
											<td>
								  			   <input type="text" name="category" >
								  			</td>
								      </tr>
								      <tr>
										  <td align="right">检测品种 </td>
										  <td align="left">
										  	<select name="objectname">
												<c:forEach items="${objectlist}" var="objectlist">
										  			<option value="${objectlist.objectid }">${objectlist.objectname }</option>
										  		</c:forEach>
										  	</select>
										  </td>
										  <td align="right">检测级 </td>
										  <td align="left">
										  	<select name="testsetid">
												<c:forEach items="${subtypesetlist}" var="subtypesetlist">
										  			<option value="${subtypesetlist.subtypeid}">${subtypesetlist.subtypename }</option>
										  		</c:forEach>
										  	</select>
											  
										  </td>
									</tr>
									<tr>
										  <td align="right"> 监测指标 </td>
										  <td align="left">
											 <select name="testIndexID"> 
												<c:forEach items="${indexlist}" var="indexlist">
										  			<option value="${indexlist.testIndexID}">${indexlist.testIndexName }</option>
										  		</c:forEach>
										  	</select>
										  </td>
										  <td align="right"> 检测设备 </td>
										  <td align="left">
											  <select name="instrumentid">
												<c:forEach items="${instrumentlist}" var="instrumentlist">
										  			<option value="${instrumentlist.instrumentid}">${instrumentlist.instrumentname }</option>
										  		</c:forEach>
										  	</select>
										  </td>
									</tr>
									<tr>
										<td align="right"> 备注</td>
										<td colspan="3" align="left">
											<textarea cols="40" rows="3" name="note"></textarea>
										</td>
									</tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit"  value="确定"/>
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
