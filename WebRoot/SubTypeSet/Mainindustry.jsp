<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>��ҵ����</title>
	</head>
	
<script>

    	function delorg(subtypeid){
    		var bln = confirm("�Ƿ�ɾ�����Ϊ����"+subtypeid+"����");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/SubTypeSetAll?type=del&subtypeid="+subtypeid;
    		}
    	}
</script>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="ϵͳ����>>��ҵ����">
		</div>
		<br><br><br><br><br><br><br><br>
		<table align="center" border="0" width="80%" bgcolor="#a9c7ed">
			<tr>
				<td >
					<table align="center" border="0" width="95%" bgcolor="#a9c7ed">
						<tr>
							<td width="100%" height="27" bgcolor="#adccef">
								<div style="font-size: 15px; color: #6780dd">
									<B>��ҵ����</B>								</div>						  </td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend></legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">���ͱ�ţ�</td>
                                        <td  height="30">�������ƣ�</td>
                                        <td  height="30">���ƣ�</td>
                                        <td  height="30">���� <a href=".././SubTypeSetAll?type=add" style="text-decoration:none;"><font style="font-size:16px;color:green">�����</font></a> </td>
                                      </tr>
                                      <c:forEach items="${setlist}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.subtypeid}</td>
                                          <td bgcolor="#99CCFF">${List.typeid}</td>
                                          <td bgcolor="#99CCFF">${List.subtypename}</td>
                                          <td bgcolor="#99CCFF">
                                          <img alt="ɾ���豸" src="${pageContext.request.contextPath}/images/del.jpg" onclick="delorg('${List.subtypeid}');">
                                         <!-- 
                                         <a href="DeleteModule?subtypeid=${List.subtypeid }" style="text-decoration:none;"><font style="font-size:16px;color:green">��ɾ��</font></a><br/>
                                         -->
                                          <a href="SubTypeSetAll?type=update&subtypeid=${List.subtypeid}" style="text-decoration:none;"><font style="font-size:16px;color:green">���޸�</font></a> </td>
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
