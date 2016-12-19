<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��ͬ����</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/script/icon.css" type="text/css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/script/easyui.css" type="text/css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery.easyui.min.js"></script>
    <script>
		    function getAllInfo(identityid){
		    		if(identityid!=''){
		    		
		    			location.href="${pageContext.request.contextPath}/ServletPage?method=shenfen&identityid="+identityid;
		    		}
		    	}
    </script>
  </head>
  <body>
  	<font color="blue" style="font-size:18px;font: bold;">�а�������&nbsp;&nbsp;&gt;&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;">��ͬ����</font>
	<br><br>
	<c:if test="${empInfo.duty!='����Ա'}">
  	<fieldset style="font-size:19px;font: bold;">
 		<legend><font color=red>�а�����Ϣ</font></legend>
 		<center>
 		 <table cellspacing="1" cellpadding="0"border="0" style="width: 80%;color:blue">
 		 	<tr height="26" style="font-size:18px;">
 		 		<th>�а�������</th>
 		 		<td><input name="name" value="${user.name}" readonly width="20px"/></td>
 		 		<th>��֯����</th>
 		 		<td>
	  				<c:forEach items="${org}" var="org">
						<c:if test="${user.belongOrgID==org.orgid}">
							<input value="${org.orgname}" readonly/>
							<input name="belongOrgID" type="hidden" value="${org.orgid}">
						</c:if>
					</c:forEach>
 		 		</td>
 		 		<th>���֤��</th>
 		 		<td><input name="identityId" value="${user.identityid}" readonly/></td>
 		 	</tr>
 		 	<tr height="26" style="font-size:19px;">
 		 		<th>��ϵ�绰</th>
 		 		<td><input name="telephone" value="${user.telephone}" readonly/></td>
 		 		<th>��ַ</th>
 		 		<td><input name="address" value="${user.address}" readonly/></td>
 		 		<th>��ע</th>
 		 		<td><textarea rows="2" cols="17" readonly name="note">${user.note}</textarea></td>
 		 	</tr>
 		</table></center>
 	</fieldset>
 	
 	<c:if test="${Info!=null}">
 	<br><br>
 	    <font size="5" color="red">��û�к�ͬ��Ϣ��û���鿴</font>
 	    
 	</c:if>
   <c:if test="${Info==null}">
 	<fieldset style="font-size:19px;font: bold;">
 			 <legend><font color=red>��ͬ��Ϣ</font></legend>
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
						<th width="70">���</th>
			  			<th width="80">��׼���</th>
			  			<th width="80">��ֲ��ֳ����</th>
			  			<th width="100">ǩ������</th>
			  			<th width="100">��Ч����</th>
			  			<th width="100">��ֹʱ��</th>
			  			<th width="80">���</th>
			  			<th width="80">�а�Ķ��</th>
			  			<th width="100">�ɷѽ�ֹ����</th>
			  			<th width="80">����Ƿ�ѽ��</th>
			  			<th width="160">��ע</th>
  				</tr>
				<c:forEach items="${ContractorInfos}" var="contract">
		  			<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
			  			<td>${contract.contractid }</td>
			  			<td>${contract.contractcode }</td>
			  			<td>
			  				<c:forEach items="${typesets}" var="typeset">
								<c:if test="${contract.typeid==typeset.typeid}">
									${typeset.typename}
								</c:if>
							</c:forEach>
			  			</td>
			  			<td>${contract.signtime }</td>
			  			<td>${contract.effectivedate }</td>
			  			<td>${contract.expiredate }</td>
			  			<td>${contract.moneyamount }</td>
			  			<td>${contract.area }</td>
			  			<td>${contract.duedate }</td>
			  			<td>${contract.arrearage }</td>
			  			<td>${contract.note }</td>
			  		</tr>
  				</c:forEach>
			</table>
		</fieldset>
		</c:if>
 	</c:if><br>
  

  	<c:if test="${empInfo.duty=='����Ա'}">
  	
  	<fieldset style="font-size:19px;font: bold;">
 		<legend><font color=red>�а�����Ϣ</font></legend>
 		<center>
 		 <table cellspacing="1" cellpadding="0"border="0" style="width: 80%;color:blue">
 		 	<tr height="26" style="font-size:18px;">
 		 		<th>ѡ��а������֤��</th>
 		 		<td>
 		 			<select name="allInternalId" onchange="getAllInfo(this.value);">
 		 				<option value="">��ѡ��а������֤��</option>
 		 				<c:forEach items="${users}" var="users">
 		 					<c:if test="${users.identityid==selectContractorInfo.identityid}">
 		 						<option value="${selectContractorInfo.identityid}" selected="selected">${selectContractorInfo.identityid}</option>
 		 					</c:if>
 		 					<c:if test="${users.identityid!=selectContractorInfo.identityid}">
 		 						<option value="${users.identityid }">${users.identityid }</option>
 		 					</c:if>
 		 				</c:forEach>
 		 			</select>
 		 		</td>
 		 		<th>�а������</th>
 		 		<td><input name="identityid" value="${selectContractorInfo.identityid}" readonly/></td>
 		 	</tr>
 		 	<tr height="26" style="font-size:18px;">
 		 		<th>�а�������</th>
 		 		<td><input name="name" value="${selectContractorInfo.name}" readonly/></td>
 		 		<th>��֯����</th>
 		 		<td>
	 		 		<c:forEach items="${org}" var="org">
						<c:if test="${selectContractorInfo.belongOrgID==org.orgid}">
							<input name="belongOrgID" value="${org.orgname}" readonly/>
						</c:if>
					</c:forEach>
				</td>
 		 		<th>���֤��</th>
 		 		<td><input name="identityid" value="${selectContractorInfo.identityid}" readonly/></td>
 		 	</tr>
 		 	<tr height="26" style="font-size:19px;">
 		 		<th>��ϵ�绰</th>
 		 		<td><input name="telephone" value="${selectContractorInfo.telephone}" readonly/></td>
 		 		<th>��ַ</th>
 		 		<td><input name="address" value="${selectContractorInfo.address}" readonly/></td>
 		 		<th>��ע</th>
 		 		<td><textarea rows="2" cols="17" readonly name="note">${selectContractorInfo.note}</textarea></td>
 		 	</tr>
 		</table></center>
 	</fieldset>
 
  	<c:if test="${fo!=null}">
 	<br><br>
 	    <font size="5" color="red">����û�к�ͬ��Ϣ��û���鿴</font>
 	    
 	</c:if>
   <c:if test="${fo==null}">
 	
  	<fieldset style="font-size:19px;font: bold;">
  			<input type="image" src="${pageContext.request.contextPath}/images/addContract.jpg" alt="ǩ����ͬ"  onclick="javascript:void(location.href='Contractor/AddContract1.jsp');"/>
  		  &nbsp;&nbsp;&nbsp;<span style="font-size: 19px; font: bold;float:right;"><a
								href="${pageContext.request.contextPath}/ServletPage?method=chasuoyou">�鿴���к�ͬ��Ϣ</a></span>
                
  		 <legend><font color=red>��ͬ��Ϣ</font></legend>
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
						<th width="70">���</th>
			  			<th width="80">��׼���</th>
			  			<th width="80">��ֲ��ֳ����</th>
			  			<th width="100">ǩ������</th>
			  			<th width="100">��Ч����</th>
			  			<th width="100">��ֹʱ��</th>
			  			<th width="80">���</th>
			  			<th width="80">�а�Ķ��</th>
			  			<th width="100">�ɷѽ�ֹ����</th>
			  			<th width="80">����Ƿ�ѽ��</th>
			  			<th width="160">��ע</th>
			  			
  				</tr>
				<c:forEach items="${selectContractorInfos}" var="contract">
		  			<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
			  			<td>${contract.contractid }</td>
			  			<td>${contract.contractcode }</td>
			  			<td>
			  				<c:forEach items="${typesets}" var="typeset">
								<c:if test="${contract.typeid==typeset.typeid}">
									${typeset.typename}
								</c:if>
							</c:forEach>
			  			</td>
			  			<td>${contract.signtime }</td>
			  			<td>${contract.effectivedate }</td>
			  			<td>${contract.expiredate }</td>
			  			<td>${contract.moneyamount }</td>
			  			<td>${contract.area }</td>
			  			<td>${contract.duedate }</td>
			  			<td>${contract.arrearage }</td>
			  			<td>${contract.note }</td>
			  			
			  		</tr>
  				</c:forEach>
			</table>
		</fieldset>
</c:if>
		
  	</c:if>
  </body>
</html>
