<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.Market.marketDAO" %>
<html>
  <head> 
    <title>My JSP 'selectAllMarket.jsp' starting page</title>
  </head>
  <body>
    <form action="selectAllMarket" method="post" name="frm">
	   <table width="100%" height="100%" border="1" align="center">
	   <tr height="20%" bgcolor="66FFCC">
	      <td colspan="6">
	         <h1><center>市场管理的历史记录</center></h1>
	      </td>
      </tr>	
		<tr height="10%" align="center">
		   <td  align="center">组织编号</td>
		   <td  align="center">名称</td>
		   <td  align="center">所在地</td>
		   <td  align="center">组织编号</td>
		   <td  align="center">备注</td>	
		   <td>操作</td>
		 </tr>
	   <c:forEach items="${market_List}" var="str">
			<tr align="center">
				<td align="center">${str.marketID }</td>
				<td align="center">${str.marketName }</td>
				<td align="center">${str.location}</td>
				<td align="center">${str.orgID}</td>
				<td align="center">${str.note}</td>
				<td>
				    <a href="">修改</a>
				    <a href="deleteMarket?MarketID=${str.marketID }">删除</a>
				</td>
			</tr>
		</c:forEach>
			<tr bgcolor="yellow" align="center">
	        <td colspan="10">
	           <a href="selectAllMarket?currentlyPageNum=1">首页</a>
	           <a href="selectAllMarket?currentlyPageNum=${currentlyPageNum-1 }">上一页</a>
	           <a href="selectAllMarket?currentlyPageNum=${currentlyPageNum+1 }">下一页</a>
	           <a href="selectAllMarket?currentlyPageNum=${totalPage }">尾页</a>
	           <input type="text" size="10" name="currentlyPageNum" value="${currentlyPageNum }">
	           <input type="submit" size="15" name="currentlyPageNum" value="跳转到该页">
	                           当前页数:${currentlyPageNum }  共有${totalPage }页   总记录数${marketCount }
	       </td>
      </tr>	
	</table>	   
</form>
  </body>
</html>
