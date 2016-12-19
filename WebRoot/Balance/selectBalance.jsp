<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.Balance.balanceDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>My JSP 'selectBalance.jsp' starting page</title>
  </head>
  
  <body>
       <form action="../selectBalanceServlet" method="post" name="frm">
	   <table width="100%" height="100%" border="1" align="center">
	   <tr height="20%" bgcolor="66FFCC">
	      <td colspan="10">
	         <h1><center>投入品结算的历史记录</center></h1>
	      </td>
      </tr>	
		<tr height="10%" bgcolor="orange" align="center">
		   <td  align="center">费用结算编号</td>
		   <td  align="center">合同编号</td>
		   <td  align="center">销售金额</td>
		   <td  align="center">领用金额</td>
		   <td  align="center">备注</td>	
		   <td  align="center">操作</td>	
		 </tr>
	   <c:forEach items="${balance_List}" var="str">
			<tr align="center">
				<td align="center">${str.balanceID }</td>
				<td align="center">${str.contractID }</td>
				<td align="center">${str.salesMoney}</td>
				<td align="center">${str.getInputMoney}</td> 
				<td align="center">${str.note}</td>
				<td>
				   <a href="">修改</a>
				   <a href="deleteBalanceServle?BalanceID=${str.balanceID }">删除</a>
				</td>
			</tr>
		</c:forEach>
		<tr bgcolor="yellow" align="center">
	        <td colspan="10">
	           <a href="selectBalanceServlet?currentlyPageNum=1">首页</a>
	           <a href="selectBalanceServlet?currentlyPageNum=${currentlyPageNum-1 }">上一页</a>
	           <a href="selectBalanceServlet?currentlyPageNum=${currentlyPageNum+1 }">下一页</a>
	           <a href="selectBalanceServlet?currentlyPageNum=${totalPage }">尾页</a>
	           <input type="text" size="10" name="currentlyPageNum" value="${currentlyPageNum }">
	           <input type="submit" size="15" name="currentlyPageNum" value="跳转到该页">
	                           当前页数:${currentlyPageNum }  共有${totalPage }页   总记录数${balanceCount }
	       </td>
	    </tr>
	</table>	   
</form>
  </body>
</html>
