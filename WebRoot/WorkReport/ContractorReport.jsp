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
  	<form action="ServletPage?method=savecont" method="post">
  	<font color="blue" style="font-size:18px;font: bold;">�а�������&nbsp;&nbsp;&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;">�а������ϱ���</font>
  		<fieldset style="font-size:19px;font: bold;">
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
	</form>
  </body>
</html>
