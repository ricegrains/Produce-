<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'CInfo.jsp' starting page</title>
  </head>
  <body>  
        	<fieldset style="font-size: 19px; font: bold;">
					
					<legend>
						所有承包户资料
					</legend>
					<table cellspacing="1" cellpadding="0" border="0"
						style="width: 100%; background-color: #99CC99;">
						<tr height="12"></tr>
						<tr bgcolor="#99DDFF" height="26"
							style="color: blue; font-size: 19px;">
							<td width="120" align="center">
								承包户编号
							</td>
							<td width="120" align="center">
								承包户姓名
							</td>
							<td width="110" align="center">
								隶属组织
							</td>
							<td width="140" align="center">
								身份证号
							</td>
							<td width="120" align="center">
								联系电话
							</td>
							<td width="140" align="center">
								所在住址
							</td>
							<td width="140" align="center">
								备注
							</td>
							
						</tr>
						<c:forEach items="${users}" var="users">
							<tr height="24" bgcolor="white" style="font-size: 18px;">
								<td align="center">
									${users.internalid}
								</td>
								<td align="center">
									${users.name}
								</td>
								<td align="center">
									<c:forEach items="${org}" var="org">
										<c:if test="${users.belongOrgID==org.orgid}">
									${org.orgname}
								</c:if>
									</c:forEach>
								</td>
								<td align="center">
									${users.identityid}
								</td>
								<td align="center">
									${users.telephone}
								</td>
								<td align="center">
									${users.address}
								</td>
								<td align="center">
									${users.note}
								</td>
								
							</tr>
						</c:forEach>
						<tr>
			  		   <td colspan="7">
			  		   <center>
			  		    <a href="${pageContext.request.contextPath}/ServletPage?method=ziliao">返回前页</a>
			  		    </center>
			  		   </td>
			  		</tr>
						
						
					</table>
				</fieldset>
  </body>
</html>
