<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>�ޱ����ĵ�</title>
	</head>
	<body>
	<form
			action="${pageContext.request.contextPath}/ServletPage?method=savehetonxinxi"
			method="post">
		<fieldset style="font-size:19px;font: bold;">
 			 <legend><font color=red>��ͬ��Ϣ</font></legend>
 		
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					  
			  			<th width="80">��׼���</th>
			  		    <th width="70">������</th>
			  			<th width="80">���֤��</th>
			  			<th width="80">��ֲ��ֳ����</th>
			  			<th width="115">ǩ������</th>
			  			<th width="115">��Ч����</th>
			  			<th width="115">��ֹʱ��</th>
			  			<th width="80">���</th>
			  			<th width="80">�а�Ķ��</th>
			  			<th width="115">�ɷѽ�ֹ����</th>
			  			<th width="80">����Ƿ�ѽ��</th>
			  			<th width="160">��ע</th>
			  			<th width="160">����</th>
			  			
  				</tr>
  				
		  			<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
			  			
			  			
			  			<input type="hidden" size="13" name="contractid"
								style="border: white; border-spacing: 0px"
								value="${contract.contractid}">
			  			
			  			<td>
			  			<input type="text" size="13" name="contractcode"
								style="border: white; border-spacing: 0px"
								value="${contract.contractcode}">
			  			</td>
			  			<td>
			  			
			  			<input type="text" size="13" name="produceorg"
								style="border: white; border-spacing: 0px"
								value="${contract.produceorg}">
								
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="identityid"
								style="border: white; border-spacing: 0px"
								value="${contract.identityid}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="typeid"
								style="border: white; border-spacing: 0px"
								value="${contract.typeid}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="signtime"
								style="border: white; border-spacing: 0px"
								value="${contract.signtime}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="effectivedate"
								style="border: white; border-spacing: 0px"
								value="${contract.effectivedate}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="expiredate"
								style="border: white; border-spacing: 0px"
								value="${contract.expiredate}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="moneyamount"
								style="border: white; border-spacing: 0px"
								value="${contract.moneyamount}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="area"
								style="border: white; border-spacing: 0px"
								value="${contract.area}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="duedate"
								style="border: white; border-spacing: 0px"
								value="${contract.duedate}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="arrearage"
								style="border: white; border-spacing: 0px"
								value="${contract.arrearage}">
			  			</td>
			  			<td>
			  			<input type="text" size="13" name="note"
								style="border: white; border-spacing: 0px"
								value="${contract.note}">
			  			</td>
			  			<td align="center">
			          	     <input type="image" src="images/baocun.gif" alt="����">
			          	</td>
			  		</tr>
			  		<tr>
			  		   <td colspan="13">
			  		   <center>
			  		    <a href="${pageContext.request.contextPath}/ServletPage?method=chasuoyou">����ǰҳ</a>
			  		    </center>
			  		   </td>
			  		</tr>
			  		
			</table>
		</fieldset>
		</form>
		
	</body>
</html>
