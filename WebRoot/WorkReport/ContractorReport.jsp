<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>承包户资料</title>
    <script type="text/javascript">
    	function alterInfo(){
    	
			document.getElementById("telephoneTd").innerHTML='<input name="telephone" value="${user.telephone}" />';
   			document.getElementById("addressTd").innerHTML='<input name="address" value="${user.address}" />';
   			document.getElementById("noteTd").innerHTML='<textarea rows="2" cols="17"  name="note">${user.note}</textarea>';
    		document.getElementById("saveSpan").style.display='block';
    		document.getElementById("alterSpan").style.display='none';
    	}
    	function deleteInfo(internalId){
    		var bln = confirm("是否删除承包户编号为："+internalId+"的信息","");
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
  	<font color="blue" style="font-size:18px;font: bold;">承包户报表&nbsp;&nbsp;&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;">承包户资料报表</font>
  		<fieldset style="font-size:19px;font: bold;">
 			 <legend>所有承包户资料</legend>
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr height="12"></tr>
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					<td width="120" align="center">承包户编号</td>
					<td width="120" align="center">承包户姓名</td>
					<td width="110" align="center">隶属组织</td>
					<td width="140"  align="center">身份证号</td>
					<td width="120" align="center">联系电话</td>
					<td width="140" align="center">所在住址</td>
					<td width="140" align="center">备注</td>
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
						共&nbsp;
						<span style="font-weight: bold;"></span>&nbsp;条记录&nbsp;&nbsp;
						<a href="dept.do?method=deptlist&curPage=1">首页</a>&nbsp;
						<a href="dept.do?method=deptlist&curPage=">上一页</a>&nbsp;
						<a href="dept.do?method=deptlist&curPage=">下一页</a>&nbsp;
						<a href="dept.do?method=deptlist&curPage=">尾页</a>&nbsp;&nbsp;页次：
						<span style="color:Red;font-weight:bold;"></span>/
						<span style="color:blue;font-weight:bold;"></span>页&nbsp;&nbsp;
						<input name="EgvContent" type="text" value="20" maxlength="3" style="width:60px"/>
						条记录/页&nbsp;&nbsp;转到第
						<select name="EgvContent">
							<option selected="selected" value="1">1</option>
							<option selected="selected" value="2">2</option>
						</select>页
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
  </body>
</html>
