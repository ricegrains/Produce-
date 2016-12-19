<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>�а����Ͷ���</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/script/icon.css" type="text/css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/script/easyui.css" type="text/css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery.easyui.min.js"></script>
    <script type="text/javascript">
    	
    	function delLabors(laborsid,identityid){
    		var bln = confirm("�Ƿ�ɾ�����Ϊ����"+laborsid+"�����Ͷ�����");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=delab&identityid="+identityid+"&laborsid="+laborsid;
    		}
    	}
    	
    	function getAllInfo(identityid){
    		if(identityid!=''){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=xiulab&identityid="+identityid;
    		}
    	}
    </script>
  </head>
  <body>
 
  	<font color="blue" style="font-size:18px;font: bold;">�а�������&nbsp;&nbsp;>&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;">�а����Ͷ���</font>
	
  <c:if test="${empInfo.duty!='����Ա'}">
  <br><br>
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
 		 		<td><input name="identityid" value="${user.identityid}" readonly/></td>
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
  	</c:if>
  
  	 <c:if test="${empInfo.duty=='����Ա'}">
  	 
  	 	<fieldset style="font-size:19px;font: bold;">
 		<legend><font color=red>�а�����Ϣ</font></legend>
 		<center>
 		 <table cellspacing="1" cellpadding="0"border="0" style="width: 80%;color:blue">
 		 	<tr height="26" style="font-size:18px;">
 		 		<th>ѡ��а������</th>
 		 		<td>
 		 			<select name="allInternalId" onchange="getAllInfo(this.value);">
 		 				<option value="">��ѡ��а������</option>
 		 				<c:forEach items="${users}" var="users">
 		 					<c:if test="${users.identityid==contractor.identityid}">
 		 						<option value="${contractor.identityid}" selected="selected">${contractor.internalid }</option>
 		 					</c:if>
 		 					<c:if test="${users.identityid!=contractor.identityid}">
 		 						<option value="${users.identityid}">${users.internalid }</option>
 		 					</c:if>
 		 				</c:forEach>
 		 			</select>
 		 		</td>
 		 		<th>�а������</th>
 		 		<td><input name="internalid" value="${contractor.internalid}" readonly/></td>
 		 	</tr>
 		 	<tr height="26" style="font-size:18px;">
 		 		<th>�а�������</th>
 		 		<td><input name="name" value="${contractor.name}" readonly/></td>
 		 		<th>��֯����</th>
 		 		<td>
	 		 		<c:forEach items="${org}" var="org">
						<c:if test="${contractor.belongOrgID==org.orgid}">
							<input name="belongOrgID" value="${org.orgname}" readonly/>
						</c:if>
					</c:forEach>
				</td>
 		 		<th>���֤��</th>
 		 		<td><input name="identityid" value="${contractor.identityid}" readonly/></td>
 		 	</tr>
 		 	<tr height="26" style="font-size:19px;">
 		 		<th>��ϵ�绰</th>
 		 		<td><input name="telephone" value="${contractor.telephone}" readonly/></td>
 		 		<th>��ַ</th>
 		 		<td><input name="address" value="${contractor.address}" readonly/></td>
 		 		<th>��ע</th>
 		 		<td><textarea rows="2" cols="17" readonly name="note">${contractor.note}</textarea></td>
 		 	</tr>
 		</table></center>
 	</fieldset>
  </c:if>
  
  <c:if test="${lab==null}">
         <font size="5" color="blue">�óа�����δ���Ͷ�����Ա</font>
  </c:if>
  <c:if test="${lab!=null}">
  
  	<fieldset style="font-size:19px;font: bold;">
  	<span ><input type="image" src="${pageContext.request.contextPath}/images/addLabors.jpg"  onclick="javascript:void(location.href='Labors/addLabors.jsp');"/></span>
  &nbsp;&nbsp;&nbsp;<span style="font-size: 19px; font: bold;float:right;"><a
								href="${pageContext.request.contextPath}/ServletPage?method=suoyou">�鿴�����Ͷ�����Ϣ</a></span>
                
 		<legend><font color=red>�а����Ͷ���</font></legend>
	  	  <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;" align="center">
	  			<th width="70">�Ͷ������</th>
	  			<th width="100">����</th>
	  			<th width="100">��а���֮��Ĺ�ϵ</th>
	  			<th width="100">��������</th>
	  			<th width="70">�� ��</th>
	  			<th width="170">��ע</th>
	  			<th width="150">����</th>
	  		</tr>
	  		<c:forEach items="${labors}" var="labor">
	  			<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
		  			<td width="70">${labor.laborsid }</td>
		  			<td width="100">${labor.name }</td>
		  			<td width="100">${labor.relation }</td>
		  			<td width="100">${labor.birthday }</td>
		  			<td width="70">
		  				<c:if test="${labor.gender==0}">Ů</c:if>
		  				<c:if test="${labor.gender==1}">��</c:if>
		  			</td >
		  			<td width="170">${labor.note }</td>
		  			<td width="150">

			  			<input type="image" src="${pageContext.request.contextPath}/images/edit.jpg" onclick="javascript:void(location.href='${pageContext.request.contextPath}/ServletPage?method=xiulaodong&laborsid=${labor.laborsid}');"/>
			  			<input type="image" src="${pageContext.request.contextPath}/images/delete.jpg" onclick="delLabors('${labor.laborsid}','${contractor.identityid}');"/>
			  		</td>
		  		</tr>
	  		</c:forEach>
	  	</table>
	  	</fieldset>
	 	</c:if>
	 	
  	
	
  </body >
</html>
