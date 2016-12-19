<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>系统模块</title>
	</head>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="安全管理>>系统模块">
		</div>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="80%" bgcolor="#a9c7ed">
			<tr>
				<td >
					<table align="center" border="0" width="95%" bgcolor="#a9c7ed">
						<tr>
							<td width="100%" height="27" bgcolor="#adccef">
								<div style="font-size: 15px; color: #6780dd">
									<B>模块信息</B>								</div>						  </td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>系统模块</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">模块ID</td>
                                        <td  height="30">模块名称</td>
                                        <td  height="30">备注</td>
                                        <td  height="30">操作 <a href="modules/Addmodule.jsp" style="text-decoration:none;"><font style="font-size:16px;color:green">☆添加</font></a> </td>
                                      </tr>
                                      <c:forEach items="${moudles}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.moduleid }</td>
                                          <td bgcolor="#99CCFF">${List.modulename}</td>
                                          <td bgcolor="#99CCFF">${List.note}</td>
                                          <td bgcolor="#99CCFF">
                                          <a href="DeleteModule?moduleid=${List.moduleid }" style="text-decoration:none;"><font style="font-size:16px;color:green">☆删除${List.moduleid }</font></a><br/>
                                          <a href="UpdateModule?moduleid=${List.moduleid}" style="text-decoration:none;"><font style="font-size:16px;color:green">☆修改</font></a> </td>
                                        </tr>
                                      </c:forEach>
                                    </table>
								</fieldset>							
							</td>
						</tr>
					</table>
				</td>
			</tr>
	</table>
	</body>
</html>
