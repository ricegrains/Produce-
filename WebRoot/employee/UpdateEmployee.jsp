<%@ page language="java" import="java.util.*" pageEncoding="gbk" isELIgnored="false"%>
<html>
	<head>
		<title>修改用户</title>
	</head>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="用户管理>>修改用户">
		</div>
		<a href="MainEmployee" style="text-decoration: none">返回上一页</a>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="70%" bgcolor="#a9c7ed">
			<tr>
				<td valign="middle" align="center">
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td bgcolor="#adccef" width="100%">
								<div style="font-size: 15px; color: #6780dd">
									<B>用户信息</B>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>修改用户 </legend>
									<form action="./AddEmployee" method="post" name="form1">
									<table border="1" width="90%" align="center">
										<tr>
											<td align="left" colspan="4">
												<input style="background-color: #e8f2fe;" type="hidden"  size="25" name="empid" value="${emp.empid}"/>
											</td>
										</tr>
										<tr>
											<td align="right" height="40"> 用户姓名： </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text" size="25" name="empname" value="${emp.empname }">
											</td>
											<td align="right"> 登录密码： </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  readonly="readonly" size="25" name="emppassword" value="${emp.emppassword }">
											</td>
										</tr>
										<tr>
											<td align="right" height="40"> 性别： </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="gender" value="${emp.gender }">
												
											</td>
											<td align="right"> 职位： </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="duty" value="${emp.duty }">
											</td>
										</tr>
										
											<tr>
											<td align="right" height="40"> 电话： </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="tel" value="${emp.tel }">
												
											</td>
											<td align="right"> 身份证号： </td>
											<td align="left">
												<input style="background-color: #e8f2fe;" type="text"  size="25" name="identityid" value="${emp.identityid }">
											</td>
										</tr>
									<tr>
										<td align="right" height="40"> 组织ID： </td>
										<td align="left">
											<input style="background-color: #e8f2fe;" type="text"  size="25" name="orgid" value="${emp.orgid }">
										</td>
										<td align="right"> 用户状态： </td>
										<td align="left">
											<input style="background-color: #e8f2fe;" type="text"  size="25" name="empstatus" value="${emp.empstatus }">
										</td>
								    </tr>
								    <tr>
								    	<td align="right" height="40">备注:</td>
								    	<td colspan="3" >
								    	 <textarea name="note" style="width:400px;height:40px;">${emp.note}</textarea>
								    	</td>
								    </tr>
								    <tr>
								    	<td colspan="4" align="center">
								    		<input type="submit" name="save" value="提交"/>
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
