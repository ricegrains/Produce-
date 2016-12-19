<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>�а�������</title>
    <script type="text/javascript">
    	function alterInfo(){
    	
			document.getElementById("telephoneTd").innerHTML='<input name="telephone" value="${user.telephone}" />';
   			document.getElementById("addressTd").innerHTML='<input name="address" value="${user.address}" />';
   			document.getElementById("noteTd").innerHTML='<textarea rows="2" cols="17"  name="note">${user.note}</textarea>';
    		document.getElementById("saveSpan").style.display='block';
    		document.getElementById("alterSpan").style.display='none';
    	}
    	function deleteInfo(internalId){
    		var bln = confirm("�Ƿ�ɾ���а������Ϊ��"+internalId+"����Ϣ","");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=delete&internalid="+internalId;
    		}
    	}
    	function editInfo(internalId){
    		location.href="${pageContext.request.contextPath}/ServletPage?method=edit?identityid="+internalId;
    	}
    </script>
  </head>
  <body>
  	<font color="blue" style="font-size:18px;font: bold;">o�а�������&nbsp;&nbsp;&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;">�а�������</font>
  
  <br><br>
  <c:if test="${empInfo.duty!='����Ա'}">
 &nbsp;&nbsp;&nbsp;&nbsp; <span style="float:right;display:block;" id="alterSpan"><a href="javascript:void(0);" onclick="alterInfo();"><img src="${pageContext.request.contextPath}/images/editContractor.jpg" border="0" alt="��˽����޸ĳа�����Ϣ"></img></a></span>
    <form action="ServletPage?method=savecont" method="post">
    <span style="float:right;display:none;" id="saveSpan"><input type="image" src="images/saveContractor.jpg" alt="����а�����Ϣ"/></span>
   
   <div style="position: absolute;margin-left:0px;font-size:18px;font: bold;color: red">
   <br>
   	<img src="${pageContext.request.contextPath}/images/user.png"></img><br>&emsp;&emsp;${user.name}
   </div>
  	<div style="position: absolute;margin-left:230px;font-size:18px;font: bold;color: blue">
  		<fieldset style="font-size:19px;font: bold;width: 600px;height: 260px">
 		<legend><font color=red>�а�����Ϣ</font></legend>
 		<center><br>
 		 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;color:blue">
 		 <tr height="26" ></tr>
 		 	<tr height="30" style="font-size:18px;">
 		 		<th>�а�������</th>
 		 		<td><input name="name" value="${user.name}" readonly/></td>
 		 	</tr>
 		 	<tr height="30" style="font-size:19px;">
 		 		<th>��֯����</th>
 		 		<td>
 		 	    <c:forEach items="${org}" var="org">
 		 		        <c:if test="${user.belongOrgID==org.orgid}">
		 		 		    <input name="belongOrgID" type="hidden" value="${org.orgid}">
		 		 		    <input  value="${org.orgname}" readonly/>
	 		 		    </c:if>
 		 		</c:forEach>
 		 		</td>
 		 		<th>���֤��</th>
 		 		<td><input name="identityid" value="${user.identityid}" readonly/>
 		 			<input type="hidden" name="internalid" value="${user.identityid}"/>
 		 		</td>
 		 	</tr>
 		 	<tr height="30" style="font-size:19px;">
 		 		<th>��ϵ�绰</th>
 		 			<td id="telephoneTd"><input name="telephone" value="${user.telephone}" readonly/>
 		 			                      <input type="hidden" name="telephone" value="${user.telephone}"/>
 		            </td>
 		 		<th >��ַ</th>
 		 		<td id="addressTd"><input name="address" value="${user.address}" readonly/>
 		 		                  <input type="hidden" name="address" value="${user.address}"/>
 		 		</td>
 		 	</tr>
 		 	<tr height="30" style="font-size:19px;">
 		 		<th>��ע</th>
 		 		<td id ="noteTd" colspan="3">
 		 		     <textarea rows="2" cols="17" readonly name="note">${user.note}</textarea>
 		 		    
 		 		</td>
 		 	</tr>
 		
 		</table></center>
 	</fieldset>
  	</div>
  	</form>
  	</c:if>
  	<c:if test="${empInfo.duty=='����Ա'}">
  		<fieldset style="font-size:19px;font: bold;">
  			 <input type="image" src="images/addContractor.jpg" alt="��ӳа���" onclick="javascript:void(location.href='Contractors/AddContractor.jsp');"/>
 			 <legend>���га�������</legend>
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr height="12"></tr>
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					<td width="120" align="center">�а������</td>
					<td width="120" align="center">�а�������</td>
					<td width="110" align="center">������֯</td>
					<td width="140"  align="center">���֤��</td>
					<td width="120" align="center">��ϵ�绰</td>
					<td width="140" align="center">����סַ</td>
					<td width="140" align="center">��ע</td>
					<td width="140" align="center" >����</td>
				</tr>
			    <c:forEach items="${users}" var="users">
					<tr height="24"  bgcolor="white" style="font-size:18px;"> 
						<td align="center">${users.internalid}</td>
						<td align="center">${users.name}</td>
						<td align="center">
							<c:forEach items="${org}" var="org">
								<c:if test="${users.belongOrgID==org.orgid}">
									${org.orgname}
								</c:if>
							</c:forEach>
						</td>
						<td align="center">${users.identityid}</td>
						<td align="center">${users.telephone}</td>
						<td align="center">${users.address}</td>
						<td align="center">${users.note}</td>
						<td align="center">
							<input type="image" src="images/edit.jpg" alt="�޸ĳа�����Ϣ" onclick="javascript:void(location.href='${pageContext.request.contextPath}/ServletPage?method=edit&identityid=${users.identityid}');"/>&emsp;
							<input type="image" src="images/delete.gif"  alt="ɾ���а�����Ϣ" onclick="deleteInfo(${users.internalid});"/></td>
					</tr>
				</c:forEach>
				<tr align="center" style="height: 28px;" bgcolor="#EEEEFF" style="font-size:18px;">
					<td colspan="10">	
						��&nbsp;
						<span style="font-weight: bold;"></span>&nbsp;����¼&nbsp;&nbsp;
						<a href="dept.do?method=deptlist&curPage=1">��ҳ</a>&nbsp;
						<a href="dept.do?method=deptlist&curPage=">��һҳ</a>&nbsp;
						<a href="dept.do?method=deptlist&curPage=">��һҳ</a>&nbsp;
						<a href="dept.do?method=deptlist&curPage=">βҳ</a>&nbsp;&nbsp;ҳ�Σ�
						<span style="color:Red;font-weight:bold;"></span>/
						<span style="color:blue;font-weight:bold;"></span>ҳ&nbsp;&nbsp;
						<input name="EgvContent" type="text" value="20" maxlength="3" style="width:60px"/>
						����¼/ҳ&nbsp;&nbsp;ת����
						<select name="EgvContent">
							<option selected="selected" value="1">1</option>
							<option selected="selected" value="2">2</option>
						</select>ҳ
					</td>
				</tr>
			</table>
		</fieldset>
  	</c:if>
  </body>
</html>
