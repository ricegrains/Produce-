<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>�豸����</title>
	</head>
	
	<script>

    	function delorg(instrumentid){
    		var bln = confirm("�Ƿ�ɾ�����Ϊ����"+instrumentid+"����");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/DeleteInstrument?instrumentid="+instrumentid;
    		}
    	}
</script>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="ϵͳ����>>�豸����">
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
									<B>�豸������Ϣ</B>								
									</div>						  
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>�豸����</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">�豸ID</td>
                                        <td  height="30">�豸����</td>
                                        <td  height="30">�ͺ�</td>
                                        <td  height="30">�۸�</td>
                                        <td  height="30">����������</td>
                                        <td  height="30">�ɹ�����</td>
                                        <td  height="30">������</td>
                                        <td  height="30">��ע</td>
                                        <td  height="30">���� 
                                        	<a href="instrument/AddInstrument.jsp" style="text-decoration:none;" >
                                        	<font style="font-size:16px;color:green">�����</font>
                                        	</a>
                                        </td>
                                      </tr>
                                      <c:forEach items="${mainlist}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.instrumentid }</td>
                                          <td bgcolor="#99CCFF">${List.instrumentname}</td>
                                          <td bgcolor="#99CCFF">${List.type}</td>
                                           <td bgcolor="#99CCFF">${List.price}</td>
                                           <td bgcolor="#99CCFF">${List.vendorname}</td>
                                           <td bgcolor="#99CCFF">${List.purchaseddate}</td>
                                           <td bgcolor="#99CCFF">${List.custodian}</td>
                                           <td bgcolor="#99CCFF">${List.note}</td>
                                          <td bgcolor="#99CCFF">
                                           
                                      		<img alt="ɾ���豸" src="${pageContext.request.contextPath}/images/del.jpg" onclick="delorg('${List.instrumentid}');">
                                          <a href="UpdateInstrument?instrumentid=${List.instrumentid}" style="text-decoration:none;" ><font style="font-size:16px;color:green">���޸�</font></a> </td>
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
