<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>���ƻ�</title>
	</head>
	
	<script>

    	function delorg(testplanid){
    		var bln = confirm("�Ƿ�ɾ�����Ϊ����"+testplanid+"����");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/DeleteTestPlan?testplanid="+testplanid;
    		}
    	}
</script>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="������ȫ���>>���ƻ�">
		</div>
		<br><br><br><br><br><br><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<table align="center" border="0" width="90%" bgcolor="#a9c7ed">
			<tr>
				<td >
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td width="100%" height="27" bgcolor="#adccef">
								<div style="font-size: 15px; color: #6780dd">
									<B>���ƻ���Ϣ</B>								
									</div>						  
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 98%;" align="center">
									<legend>���ƻ�</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">���ƻ�ID</td>
                                        <td  height="30">ָ����֯</td>
                                        <td  height="30">ִ����֯</td>
                                        <td  height="30">�ƶ�����</td>
                                        <td  height="30">�ƻ��������</td>
                                        <td  height="30">����</td>
                                        <td  height="30">���ƻ�����</td>
                                        <td  height="30">����ɴ���</td>
                                        <td  height="30">�ϸ���</td>
                                        <td  height="30">�ϸ�ٷֱ�</td>
                                        <td  height="30">��ע</td>
                                        <td  height="30">
                                        	<a href="./ServletDispose?pass=plan" style="text-decoration:none;" >
                                        	<font style="font-size:16px;color:green">�����</font>
                                        	</a>
                                        </td>
                                      </tr>
                                      <c:forEach items="${planlist}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.testplanid }</td>
                                          <td bgcolor="#99CCFF">${List.issueorgid}</td>
                                          <td bgcolor="#99CCFF">${List.executionorgid}</td>
                                           <td bgcolor="#99CCFF">${List.issuedate}</td>
                                           <td bgcolor="#99CCFF">${List.schedulefinishdate}</td>
                                           <td bgcolor="#99CCFF">${List.assignlevel}</td>
                                           <td bgcolor="#99CCFF">${List.planquantity}</td>
                                           <td bgcolor="#99CCFF">${List.finishedquantity}</td>
                                           <td bgcolor="#99CCFF">${List.passamount}</td>
                                           <td bgcolor="#99CCFF">${List.passppercentage}</td>
                                           <td bgcolor="#99CCFF">${List.note}</td>
                                          <td bgcolor="#99CCFF">
                                           
                                      		<img alt="ɾ���豸" src="${pageContext.request.contextPath}/images/del.jpg" onclick="delorg('${List.testplanid}');">
                                          <a href="UpdateTestPlan?testplanid=${List.testplanid}" style="text-decoration:none;" ><font style="font-size:16px;color:green">���޸�</font></a> </td>
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
