<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
	<head>
		<title>用户管理</title>
	</head>
	<body bgcolor="#dfe8f4">

		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="安全管理>>用户管理">
		</div>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
			<tr>
				<td >
					<table align="center" border="0" width="95%" bgcolor="#a9c7ed">
						<tr>
							<td width="100%" height="27" bgcolor="#adccef">
								<div style="font-size: 15px; color: #6780dd">
									<B>用户信息</B>								</div>						  </td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 100%;" align="center">
									<legend>添加用户</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">用户帐号：</td>
                                        <td  height="30"> 用户姓名：</td>
                                        <td height="30"> 登录密码： </td>
                                        <td height="30"> 性别： </td>
                                        <td  height="30"> 职位： </td>
                                        <td height="30"> 电话： </td>
                                        <td height="30"> 身份证号： </td>
                                        <td  height="30"> 组织ID： </td>
                                        <td height="30"> 用户状态： </td>
                                        <td  height="30">备注:</td>
                                        <td  height="30">操作 <a href="employee/AddEmployee.jsp" style="text-decoration:none;"><font style="font-size:16px;color:green">☆添加</font></a> </td>
                                      </tr>
                                      <c:forEach items="${employee}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.empid}</td>
                                          <td bgcolor="#99CCFF">${List.empname}</td>
                                          <td bgcolor="#99CCFF">${List.emppassword}</td>
                                          <td bgcolor="#99CCFF">${List.gender}</td>
                                          <td bgcolor="#99CCFF">${List.duty}</td>
                                          <td bgcolor="#99CCFF">${List.tel}</td>
                                          <td bgcolor="#99CCFF">${List.identityid}</td>
                                          <td bgcolor="#99CCFF">${List.orgid}</td>
                                          <td bgcolor="#99CCFF">${List.empstatus}</td>
                                          <td bgcolor="#99CCFF">${List.note}</td>
                                          <td bgcolor="#99CCFF">
                                          <a href="DeleteEmployee?empid=${List.empid }" style="text-decoration:none;"><font style="font-size:16px;color:green">☆删除</font></a><br/>
                                          <a href="UpdateEmployee?empid=${List.empid}" style="text-decoration:none;"><font style="font-size:16px;color:green">☆修改</font></a> </td>
                                        </tr>
                                      </c:forEach>
                                    </table>
									
									
								</fieldset>							</td>
						</tr>
					</table>
				</td>
			</tr>
	</table>
	</body>
</html>
