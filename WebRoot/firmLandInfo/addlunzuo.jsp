<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>My JSP 'addlunzuo.jsp' starting page</title>
    
  </head>
    <script src="../clander/setday.js"></script>
		<script>
		        document.onclick=function() {}
		</script> 
  <body>
  <form action="${pageContext.request.contextPath}/Group?method=addlun&id=${contractsignplotsid}" method="post">
         <fieldset style="font-size:20px;font: bold;">
				<legend id="title3" style="color: red;">添加地块轮作信息</legend>
 					<table cellspacing="0" cellpadding="0"border="0" style="width: 100%;color=blue">
 						<tr height="30" style="font-size:18px;">
			 		 		
			 		 		<th width="18%">地块编号</th>
			 		 		<td width="18%">
			 		 			<input type="hidden" name="plotrotationsid">
			 		 			<select name="contractsignplotsid">
			 		 			     <c:forEach items="${plotro}" var="grow">
			 		 			        <option value="${grow.contractsignplotsid}" >${grow.contractsignplotsid}</option>
			 		 			     </c:forEach>
			 		 			</select>
			 		 			
			 		 		</td>
			 		 		<th width="18%">前茬农作物</th>
			 		 		<td>
			 		 		<select name="prcedingobjectid">
			 		 			     <c:forEach items="${ob}" var="grow">
			 		 			        <option value="${grow.objectid}" >${grow.objectname}</option>
			 		 			     </c:forEach>
			 		 			</select>
			 		 		</td>
			 		 		<th>备注</th>
			 		 		<td><input name="note" /></td>
			 		 		
			 		 	</tr>
 						<tr height="30" style="font-size:18px;">
							<th>采摘日期</th>
							<td>
							<input name="pluckdate" size="6" type="text" id="pluckdate" readonly="readonly" size="12">
                            <input name="sss" onClick="setday(document.getElementById('pluckdate'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  			   </td>
							<th>播种日期</th>
							<td>
							<input name="sowingdate" size="6" type="text" id="sowingdate" readonly="readonly" size="12">
                            <input name="sss" onClick="setday(document.getElementById('sowingdate'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  				</td>
							<th>农作物</th>
							<td>
							<select name="objectid">
			 		 			     <c:forEach items="${ob}" var="grow">
			 		 			        <option value="${grow.objectid}" >${grow.objectname}</option>
			 		 			     </c:forEach>
			 		 			</select>
							
							</td>
			 		 	</tr>
 						
			 		 	<tr height="30" style="font-size:18px;">
			 		 		<td >&nbsp;</td>
			 		 		<td>&nbsp;</td>
			 		 		<td ><input type="submit" value="确认"></td>
			 		 		<td ><a href="../Group?method=zonzixinxi">返回前页</a> </td>
			 		 		<td >&nbsp; </td>
			 		 		<td>&nbsp;</td>
			 		 		<td >&nbsp; </td>
			 		 	</tr>	
 					</table>
 				
 			</fieldset>
			  </form>
  </body>
</html>
