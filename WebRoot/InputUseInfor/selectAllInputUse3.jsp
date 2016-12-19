<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.InputUseInfor.inputUserInforDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>My JSP 'selectAllInputUse3.jsp' starting page</title>
  </head>
  
  <body>
     <form action="../selectAllInputUseServelt3" method="post" name="frm">
	   <table width="100%" height="100%" border="1" align="center">
	   <tr height="20%" bgcolor="66FFCC">
	      <td colspan="10">
	         <h1><center>c投入品退货的历史记录</center></h1>
	      </td>
      </tr align="center">	
		<tr height="10%" bgcolor="orange">
		   <td  align="center">退货记录编号</td>
		   <td  align="center">退货编号</td>
		   <td  align="center">操作日期</td>
		   <td  align="center">批次号</td>
		   <td  align="center">退货物品</td>
		   <td  align="center">退货数量</td>
		   <td  align="center">单位</td>
		   <td  align="center">备注</td>	
		   <td  align="center">操作</td>	
		 </tr>
	   <c:forEach items="${inputUserInfor_List}" var="str">
			<tr align="center">
				<td align="center">${str.inputUseInforID }</td>
				<td align="center">${str.balanceID }</td>
				<td align="center">${str.operateTime}</td>
				<td align="center">${str.batchID}</td> 
				<td align="center">${str.objectID }</td>
				<td align="center">${str.quantity }</td>
				<td align="center">${str.subTypeID}</td>
				<td align="center">${str.note}</td>
				<td>
				   <a href="">修改</a>
				   <a href="deleteInputUse3?InputUseInforID=${str.inputUseInforID }">删除</a>
				</td>
			</tr>
		</c:forEach>
		<tr bgcolor="yellow" align="center">
	        <td colspan="10">
	           <a href="selectAllInputUseServelt3?currentlyPageNum=1">首页</a>
	           <a href="selectAllInputUseServelt3?currentlyPageNum=${currentlyPageNum-1 }">上一页</a>
	           <a href="selectAllInputUseServelt3?currentlyPageNum=${currentlyPageNum+1 }">下一页</a>
	           <a href="selectAllInputUseServelt3?currentlyPageNum=${totalPage }">尾页</a>
	           <input type="text" size="10" name="currentlyPageNum" value="${currentlyPageNum }">
	           <input type="submit" size="15" name="currentlyPageNum" value="跳转到该页">
	                           当前页数:${currentlyPageNum }  共有${totalPage }页   总记录数${inputUseInforCount }
	        </td>
	    </tr>
	</table>	   
</form>
  </body>
</html>
