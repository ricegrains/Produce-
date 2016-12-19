<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>修改检测计划</title>

  </head>
  <body bgcolor="#dfe8f4">
		<div style="font-family: inherit">&nbsp;  
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="质量安全检测>>修改检测计划">
		</div>
		<a href="MainTestPlan" style="text-decoration:none;">返回上一页</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>检测计划</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;"  >
									<legend></legend>
									<form action="AddTestPlan" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<input type="hidden" name="testplanid" value="${plan.testplanid}"/>
										
											<td align="right" height="40"> 制定组织 </td>
											<td>
												<select name="issueorgid">
												<c:forEach items="${orgtypelist}" var="orgtypelist">
													<option value="${orgtypelist.orgtypeid }">${orgtypelist.orgtypename }</option>
													</c:forEach>
												</select>
								  			</td>
											<td align="right"> 执行组织 </td>
											<td align="left">
												<select name="executionorgid">	
													<c:forEach items="${orgtypelist}" var="orgtypelist">
														<option value="${orgtypelist.orgtypeid }">${orgtypelist.orgtypename }</option>
													</c:forEach>
												</select>
											</td>
										</tr>
								        <tr>
									    	<td align="right" height="40">制定日期</td>
									    	<td align="left">
									    	 	 <input type="text" name="issuedate" value="${plan.issuedate}">
									    	</td>
									    	<td align="right" height="40"> 计划完成日期 </td>
											<td align="left">
								  			   <input type="text" name="schedulefinishdate" value="${plan.schedulefinishdate }">
								  			</td>
								      </tr>
								      <tr>
										  <td align="right"> 级别 </td>
										  <td align="left">
										  	<select name="assignlevel">
										  		<c:forEach items="${subtypelist}" var="subtypelist">
										  			<option value="${subtypelist.subtypeid }">${subtypelist.subtypename }</option>
										  		</c:forEach>
										  	</select>
										  </td>
										  <td align="right">计划检测次数 </td>
										  <td align="left">
											  <input type="text" name="planquantity" value="${plan.planquantity }">
										  </td>
									</tr>
									<tr>
										  <td align="right"> 已完成次数 </td>
										  <td align="left">
										  	<input type="text" name="finishedquantity" value="${plan.finishedquantity }">
										  </td>
										  <td align="right">合格数 </td>
										  <td align="left">
											  <input type="text" name="passamount" value="${plan.passamount }">
										  </td>
									</tr>
									
									<tr>
										<td align="right">合格百分比 </td>
										 <td align="left">
											 <input type="text" name="passppercentage" value="${plan.passppercentage }">
										 </td>
										<td align="right"> 备注</td>
										<td colspan="3" align="left">
											<textarea cols="40" rows="3" name="note">${plan.note }</textarea>
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
