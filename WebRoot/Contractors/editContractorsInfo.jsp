<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'editContractorsInfo.jsp' starting page</title>
    
  </head>
  <body>
  <br><br>
  <form action="../Produce/ServletPage?method=baocun"" method="post">
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
					<td width="140" align="center" >操作</td>
				</tr>
			    <c:forEach items="${users}" var="users">
					<tr height="24"  bgcolor="white" style="font-size:18px;"> 
						<td align="center">
						   <input type="text"  style="border: white;border-spacing: 0px;" disabled="disabled" name="internalid" height="10" value="${users.internalid}"/>
						   <input type="hidden" name="internalid" value="${users.internalid}"/>
						</td>
						<td align="center">
						  <input type="text" style="border: white;border-spacing: 0px" disabled="disabled" name="name" value="${users.name}"/>
						  <input type="hidden" name="name" value="${users.name}"/>
						</td>
						<td align="center">
							<c:forEach items="${org}" var="org">
								<c:if test="${users.belongOrgID==org.orgid}">
									<input disabled="disabled"  type="text" style="border: white;border-spacing: 0px" name="belongOrgID" value="${org.orgname}"/>
									<input type="hidden" name="belongOrgID" value="${org.orgid}"/>
								</c:if>
							</c:forEach>
						</td>
						<td align="center" >
						 <input disabled="disabled" type="text" style="border: white;border-spacing: 0px" name="identityid" value="${users.identityid}"/>
						 <input type="hidden" name="identityid" value="${users.identityid}"/>
						</td>
						<td align="center">
						  <input type="text" style="border: white;border-spacing: 0px" name="telephone" value="${users.telephone}"/>
						</td>
						<td align="center">
						   <input type="text" style="border: white;border-spacing: 0px" name="address" value="${users.address}"/>
						</td>
						<td align="center">
						   <input type="text" style="border: white;border-spacing: 0px" name="note" value="${users.note}"/>
						</td>
			          	<td align="center">
			          	     <input type="image" src="images/baocun.gif" alt="保存">
			          	</td>
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
			</form>
  </body>
</html>
