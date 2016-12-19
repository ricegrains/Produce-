<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.TraceNumber.tranceNumberDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>My JSP 'selectAllTrance.jsp' starting page</title>
  
  </head>
  
  <body>
     <form action="selectAllTraceServelt" method="post" name="frm">
	   <table width="100%" height="100%" border="1" align="center">
	   <tr height="20%" bgcolor="66FFCC">
	      <td colspan="10">
	         <h1><center>追溯的历史记录</center></h1>
	      </td>
      </tr>	
		<tr height="10%" bgcolor="orange">
		   <td  align="center">追溯Id</td>
		   <td  align="center">追溯码Id</td>
		   <td  align="center">生产组织</td>
		   <td  align="center">销售物品</td>
		    <td  align="center">客户</td>
		   <td  align="center">承包户编号</td>
		   <td  align="center">备注</td>	
		   <td  align="center">操作</td>	
		 </tr>
	   <c:forEach items="${trance_List}" var="str">
			<tr align="center">
				<td align="center">${str.traceID }</td>
				<td align="center">${str.traceNumberID }</td>
				<td align="center">${str.produceOrgID}</td>
				<td align="center">${str.objectID}</td>
				<td align="center">${str.customer}</td>
				<td align="center">${str.contractorID}</td>
				<td align="center">${str.note}</td>
				<td>
				   <a href="">修改</a>
				   <a href="deleteTraceServelt?TraceID=${str.traceID }">删除</a>
				</td>
			</tr>
		</c:forEach>
		<tr bgcolor="yellow" align="center">
	        <td colspan="10">
	           <a href="selectAllTraceServelt?currentlyPageNum=1">首页</a>
	           <a href="selectAllTraceServelt?currentlyPageNum=${currentlyPageNum-1 }">上一页</a>
	           <a href="selectAllTraceServelt?currentlyPageNum=${currentlyPageNum+1 }">下一页</a>
	           <a href="selectAllTraceServelt?currentlyPageNum=${totalPage }">尾页</a>
	           <input type="text" size="10" name="currentlyPageNum" value="${currentlyPageNum }">
	           <input type="submit" size="15" name="currentlyPageNum" value="跳转到该页">
	                           当前页数:${currentlyPageNum }  共有${totalPage }页   总记录数${traceCount }
	       </td>
      </tr>	
	</table>	   
</form>
  </body>
</html>
