<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>ũ��Ʒ</title>
	</head>
	
	<script>

    	function delorg(objectid){
    		var bln = confirm("�Ƿ�ɾ�����Ϊ����"+objectid+"����");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/DeleteObjects?objectid="+objectid;
    		}
    	}
</script>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="ϵͳ����>>ũ��Ʒ">
		</div>
		<br><br><br><br><br><br><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<table align="center" border="0" width="80%" bgcolor="#a9c7ed">
			<tr>
				<td >
					<table align="center" border="0" width="95%" bgcolor="#a9c7ed">
						<tr>
							<td width="100%" height="27" bgcolor="#adccef">
								<div style="font-size: 15px; color: #6780dd">
									<B>ũ��Ʒ��Ϣ</B>								
									</div>						  
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>ũ��Ʒ</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">ũ��ƷID</td>
                                        <td  height="30">ũ��Ʒ����</td>
                                        <td  height="30">����ID</td>
                                        <td  height="30">���� 
                                        	<a href="./ServletDispose?pass=objects" style="text-decoration:none;"><img src="image/tianjia.jpg" alt="���ũ��Ʒ��Ϣ" style="border:0px;"><font style="font-size:16px;color:green">�����</font></a>
                                        </td>
                                      </tr>
                                      <c:forEach items="${obj}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.objectid }</td>
                                          <td bgcolor="#99CCFF">${List.objectname}</td>
                                          <td bgcolor="#99CCFF">${List.subtypeid}</td>
                                          <td bgcolor="#99CCFF">
                                         
                                         <img alt="ɾ���豸" src="${pageContext.request.contextPath}/images/del.jpg" onclick="delorg('${List.objectid}');">
                                        <!-- 
                                          <a href="DeleteObjects?objectid=${List.objectid }" style="text-decoration:none;" onclick="delorg('${List.objectid}');"><font style="font-size:16px;color:green">��ɾ��</font></a><br/>
                                         -->
                                          <a href="UpdateObjects?objectid=${List.objectid}" style="text-decoration:none;" ><font style="font-size:16px;color:green">���޸�</font></a> </td>
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
