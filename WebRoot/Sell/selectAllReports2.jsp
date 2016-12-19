<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.Reports.ReportsDAO" %>
<html>
  <head>
    <title>My JSP 'selectAllReports2.jsp' starting page</title>
  </head>
  
  <body>
    <form action="../selectAllReportsServlet2" method="post" name="frm">
	   <table width="100%" height="100%" border="1" align="center">
	   <tr height="20%" bgcolor="66FFCC">
	      <td colspan="10">
	         <h1><center>检测报表的历史记录</center></h1>
	      </td>
      </tr>	
		<tr height="10%" bgcolor="orange">
		   <td  align="center">报表编号</td>
		   <td  align="center">接收部门</td>
		   <td  align="center">上传部门</td>
		   <td  align="center">管理分类</td>
		   <td  align="center">发送时间</td>
		   <td  align="center">主题</td>
		   <td  align="center">报表文件名</td>
		    <td  align="center">保存目录</td>
		   <td  align="center">备注</td>	
		   <td  align="center">操作</td>	
		 </tr>
	   <c:forEach items="${reports_List}" var="str">
			<tr>
				<td align="center">${str.reportID }</td>
				<td align="center">${str.acceptOrgID }</td>
				<td align="center">${str.sendOrgID}</td>
				<td align="center">${str.domainID}</td>
				<td align="center">${str.sendTime}</td>
				<td align="center">${str.topic}</td>
				<td align="center">${str.fileName}</td>
				<td align="center">${str.path}</td>
				<td align="center">${str.note}</td>
				<td>
				   <a href="">修改</a>
				   <a href="deleteReportsServlet2?ReportID=${str.reportID }">删除</a>
				</td>
			</tr>
		</c:forEach>
		<tr bgcolor="yellow" align="center">
	        <td colspan="10">
	           <a href="selectAllReportsServlet2?currentlyPageNum=1">首页</a>
	           <a href="selectAllReportsServlet2?currentlyPageNum=${currentlyPageNum-1 }">上一页</a>
	           <a href="selectAllReportsServlet2?currentlyPageNum=${currentlyPageNum+1 }">下一页</a>
	           <a href="selectAllReportsServlet2?currentlyPageNum=${totalPage }">尾页</a>
	           <input type="text" size="10" name="currentlyPageNum" value="${currentlyPageNum }">
	           <input type="submit" size="15" name="currentlyPageNum" value="跳转到该页">
	                           当前页数:${currentlyPageNum }  共有${totalPage }页   总记录数${reportsCount } 当前记录数${pageSize }
	       </td>
      </tr>	
	</table>	   
</form>
  </body>
</html>
