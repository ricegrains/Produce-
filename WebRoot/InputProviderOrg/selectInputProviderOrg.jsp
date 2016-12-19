<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.InputProviderOrg.inputProviderOrgDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>My JSP 'selectInputProviderOrg.jsp' starting page</title>
  </head>
  
  <body>
     <form action="../selectInputProviderOrgServelt" method="post" name="frm">
	   <table width="200%" height="200%" border="1" align="center">
	   <tr height="10%" bgcolor="66FFCC">
	      <td colspan="23">
	         <h1><center>投入品供应组织的历史记录</center></h1>
	      </td>
      </tr>	
		<tr height="7%" bgcolor="orange">
		   <td  align="center">组织ID</td>
		   <td  align="center">组织编号</td>
		   <td  align="center">备案编号</td>
		   <td  align="center">生产批准书证号</td>
		   <td  align="center">生产批准书期限日期</td>
		   <td  align="center">生产批准书电子版</td>
		   <td  align="center">经营许可证号</td>
		   <td  align="center">经营许可证期限日期</td>
		   <td  align="center">经营许可证电子版</td>
		   <td  align="center">农药许可证号</td>
		   <td  align="center">农药许可证期限日期</td>
		   <td  align="center">农药许可证号</td>
		   <td  align="center">备案有效期</td>
		   <td  align="center">化学危险品许可证号 </td>
		   <td  align="center">化学危险品许可证期限日期</td>
		   <td  align="center">化学危险品可证号</td>
		   <td  align="center">营业执照证号</td>
		   <td  align="center">营业执照期限日期</td>
		   <td  align="center">营业执照电子版</td>
		   <td  align="center">备案日期</td>
		   <td  align="center">信用级别(合格/不合格)</td>
		   <td  align="center">备注</td>	
		   <td  align="center">操作</td>	
		 </tr>
	  <c:forEach items="${inputProviderOrg_List}" var="str">
			<tr>
				<td align="center">${str.inputProviderOrgID }</td>
				<td align="center">${str.orgID }</td>
				<td align="center">${str.recordCode }</td>
				<td align="center">${str.produceLicenseID }</td> 
				<td align="center">${str.produceLicenseExpire }</td>
				<td align="center">${str.produceLicense }</td>
				<td align="center">${str.sellLicenseID }</td>
				<td align="center">${str.sellLicenseExpire }</td>
				<td align="center">${str.sellLicense }</td> 
				<td align="center">${str.pesticideLicenseID }</td>
				<td align="center">${str.pesticideLicenseExpire }</td>
				<td align="center">${str.pesticideLicense }</td>
				<td align="center">${str.fileExpire }</td>
				<td align="center">${str.dangerousLicenseID }</td> 
				<td align="center">${str.dangerousLicenseExpire }</td>
				<td align="center">${str.dangerousLicense }</td>
				<td align="center">${str.businessLicenseID }</td>
				<td align="center">${str.businessLicenseExpire }</td>
				<td align="center">${str.businessLicense }</td> 
				<td align="center">${str.recordDate }</td>
				<td align="center">${str.subTypeId }</td> 
				<td align="center">${str.note }</td>
				<td>
				   <a href="">修改</a>
				   <a href="deleteInputProviderOrg?InputProviderOrgID=${str.inputProviderOrgID }">删除</a>
				</td>
			</tr>
		</c:forEach>
		<tr bgcolor="yellow" align="center">
	        <td colspan="23">
	           <a href="selectInputProviderOrgServelt?currentlyPageNum=1">首页</a>
	           <a href="selectInputProviderOrgServelt?currentlyPageNum=${currentlyPageNum-1 }">上一页</a>
	           <a href="selectInputProviderOrgServelt?currentlyPageNum=${currentlyPageNum+1 }">下一页</a>
	           <a href="selectInputProviderOrgServelt?currentlyPageNum=${totalPage }">尾页</a>
	           <input type="text" size="10" name="currentlyPageNum" value="${currentlyPageNum }">
	           <input type="submit" size="15" name="currentlyPageNum" value="跳转到该页">
	                           当前页数:${currentlyPageNum }  共有${totalPage }页   总记录数${inputProviderOrgCount }
	        </td>
      </tr>	
	</table>	   
</form>
  </body>
</html>
