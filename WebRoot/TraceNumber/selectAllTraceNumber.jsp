<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.TraceNumber.tranceNumberDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>My JSP 'selectAllTraceNumber.jsp' starting page</title>
  </head>
  
  <body>
    <form action="selectAllTraceNumberServlet" method="post" name="frm">
	   <table width="100%" height="100%" border="1" align="center">
	   <tr height="20%" bgcolor="66FFCC">
	      <td colspan="4">
	         <h1><center>追溯码的历史记录</center></h1>
	      </td>
      </tr>	
		<tr height="10%" bgcolor="orange">
		   <td  align="center">追溯码Id</td>
		   <td  align="center">追溯码</td>
		   <td  align="center">备注</td>	
		   <td  align="center">操作</td>	
		 </tr>
	   <c:forEach items="${tranceNumber_List}" var="str">
			<tr align="center">
				<td align="center">${str.traceNumberID }</td>
				<td align="center">${str.traceNumber }</td>
				<td align="center">${str.note}</td>
				<td>
				   <a href="">修改</a>
				   <a href="deleteTraceNumber?traceNumberID=${str.traceNumberID }">删除</a>
				</td>
			</tr>
		</c:forEach>
			<tr bgcolor="yellow" align="center">
	        <td colspan="10">
	           <a href="selectAllTraceNumberServlet?currentlyPageNum=1">首页</a>
	           <a href="selectAllTraceNumberServlet?currentlyPageNum=${currentlyPageNum-1 }">上一页</a>
	           <a href="selectAllTraceNumberServlet?currentlyPageNum=${currentlyPageNum+1 }">下一页</a>
	           <a href="selectAllTraceNumberServlet?currentlyPageNum=${totalPage }">尾页</a>
	           <input type="text" size="10" name="currentlyPageNum" value="${currentlyPageNum }">
	           <input type="submit" size="15" name="currentlyPageNum" value="跳转到该页">
	                           当前页数:${currentlyPageNum }  共有${totalPage }页   总记录数${traceNumberCount }
	       </td>
      </tr>	
	</table>	   
</form>
  </body>
</html>
