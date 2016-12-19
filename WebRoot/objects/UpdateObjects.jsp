<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>农产品</title>

  </head>
  <body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="系统设置>>农产品">
		</div>
		<a href="MainObjects" style="text-decoration:none;">返回上一页</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>农产品</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>修改农产品 </legend>
									<form action="AddObjects" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											
											<td align="left">
												<input style="background-color: #e8f2fe;" type="hidden"  size="25" name="objectid" value="${objectlist.objectid }">
											</td>
											<td align="right"> 农产品名称： </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="objectname" value="${objectlist.objectname }">
											</td>
										</tr>
								    <tr>
								    	<td align="right" height="40">类型ID:</td>
								    	<td colspan="3" >
								    	<select name="subtypeid">
									    	<c:forEach items="${sublist}" var="List">
									    		<option value="${List.subtypeid }">${List.subtypename }</option>
									    	</c:forEach>
								    	</select>
								    	</td>
								    </tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit" name="save" value="修改"/>
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
