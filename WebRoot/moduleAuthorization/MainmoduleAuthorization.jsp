<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>ģ����Ȩ</title>
	</head>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="��ȫ����>>ģ����Ȩ">
		</div>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="80%" bgcolor="#a9c7ed">
			<tr>
				<td >
					<table align="center" border="0" width="95%" bgcolor="#a9c7ed">
						<tr>
							<td width="100%" height="27" bgcolor="#adccef">
								<div style="font-size: 15px; color: #6780dd">
									<B>ģ����Ϣ</B>								</div>						  </td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>ģ����Ȩ</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">��¼�˻���</td>
                                        <td  height="30">ģ��ID</td>
                                        <td  height="30">��ע</td>
                                        <td  height="30">���� <a href="./ServletDispose?pass=author" style="text-decoration:none;"><font style="font-size:16px;color:green">�����</font></a> </td>
                                      </tr>
                                      <c:forEach items="${author}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.userid }</td>
                                          <td bgcolor="#99CCFF">${List.moduleid}</td>
                                          <td bgcolor="#99CCFF">${List.note}</td>
                                          <td bgcolor="#99CCFF">
                                          <a href="DelectModuleAuthor?userid=${List.userid }" style="text-decoration:none;"><font style="font-size:16px;color:green">��ɾ��${List.moduleid }</font></a><br/>
                                          <a href="UpdateModuleAuthor?userid=${List.userid}" style="text-decoration:none;"><font style="font-size:16px;color:green">���޸�</font></a> </td>
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
