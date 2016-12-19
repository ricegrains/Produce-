<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.InputProviderBuyAndSell.inputProviderBuyAndSellDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>My JSP 'selectInputProviderBuy.jsp' starting page</title>
  </head>
  
  <body>
     <form action="selectInputProviderBuyServelt" method="post" name="frm">
	   <table width="100%" height="100%" border="1" align="center">
	   <tr height="20%" bgcolor="66FFCC">
	      <td colspan="8">
	         <h1><center>投入品采购的历史记录</center></h1>
	      </td>
      </tr>	
		<tr height="10%" bgcolor="orange">
		   <td  align="center">投入品采购Id</td>
		   <td  align="center">投入品供应编号</td>
		   <td  align="center">年份</td>
		   <td  align="center">物品</td>
		   <td  align="center">买入</td>	
		   <td  align="center">卖出</td>	
		   <td  align="center">备注</td>	
		   <td  align="center">操作</td>	
		 </tr>
	   <c:forEach items="${inputProviderBuyAndSell_List}" var="str">
			<tr align="center">
				<td align="center">${str.buyAndSellID }</td>
				<td align="center">${str.orgID }</td>
				<td align="center">${str.year}</td>
				<td align="center">${str.subTypeID}</td> 
				<td align="center">${str.buy}</td>
				<td align="center">${str.sell}</td> 
				<td align="center">${str.note}</td>
				<td>
				   <a href="">修改</a>
				   <a href="deleteInputProviderBuy?BuyAndSellID=${str.buyAndSellID }">删除</a>
				</td>
			</tr>
		</c:forEach>
		<tr bgcolor="yellow" align="center">
	        <td colspan="10">
	           <a href="selectInputProviderBuyServelt?currentlyPageNum=1">首页</a>
	           <a href="selectInputProviderBuyServelt?currentlyPageNum=${currentlyPageNum-1 }">上一页</a>
	           <a href="selectInputProviderBuyServelt?currentlyPageNum=${currentlyPageNum+1 }">下一页</a>
	           <a href="selectInputProviderBuyServelt?currentlyPageNum=${totalPage }">尾页</a>
	           <input type="text" size="10" name="currentlyPageNum" value="${currentlyPageNum }">
	           <input type="submit" size="15" name="currentlyPageNum" value="跳转到该页">
	                           当前页数:${currentlyPageNum }  共有${totalPage }页   总记录数${inputProviderBuyAndSellCount }
	       </td>
	    </tr>
	</table>	   
</form>
  </body>
</html>
