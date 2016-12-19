<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
  
    <title>My JSP 'addgrowcaozuo.jsp' starting page</title>
    
  </head>
  <script src="../clander/setday.js"></script>
		<script>
		        document.onclick=function() {}
		</script> 
		
  <body>
  <form action="${pageContext.request.contextPath}/Group?method=addcaozuo" method="post">
			<fieldset style="font-size:20px;font: bold;">
				<legend id="title4" style="color: red;">添加种植操作信息</legend>
 			
 					<table cellspacing="0" cellpadding="0"border="0" style="width: 100%;color=blue">
 						<tr height="28" style="font-size:18px;">
			 		 		<td width="18%">&nbsp;</td>
			 		 		<td width="18%"> &nbsp;</td>
			 		 		<th width="18%">种植信息编号</th>
			 		 		<td width="18%">
			 		 			<input type="hidden" name="plantoperationsid" >
			 		 			<select name="firmlandid">
			 		 			     <c:forEach items="${growfirm}" var="grow">
			 		 			        <option value="${grow.firmlandid}" >${grow.firmlandid}</option>
			 		 			     </c:forEach>
			 		 			</select>
			 		 			
			 		 		</td>
			 		 		<td width="18%">&nbsp;</td>
			 		 		<td width="18%">&nbsp;</td>
			 		 	</tr>
			 		 	<tr height="28" style="font-size:18px;">
			 		 		<th>日志时间</th>
			 		 		<td>
			 		 		<input name="logdate" size="6" type="text" id="logdate" readonly="readonly" size="12">
                            <input name="sss" onClick="setday(document.getElementById('logdate'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  			</td>
							<th width="28%">操作时间</th>
							<td >
							<input name="operatetime" size="6" type="text" id="operatetime" readonly="readonly" size="12">
                            <input name="sss" onClick="setday(document.getElementById('operatetime'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  			</td>
			 		 		<th>操作人</th>
			 		 		<td ><input  name="operateperson" /></td>
			 		 	</tr>
 						<tr height="28" style="font-size:18px;">
							<th>操作编号</th>
							<td>
							<select name="subtypeid">
			 		 			     <c:forEach items="${sub}" var="grow">
			 		 			        <option value="${grow.subtypeid}" >${grow.subtypename}</option>
			 		 			     </c:forEach>
			 		 			</select>
							</td>
							<th>投入品种类</th>
							<td><input name="subtypeid1"/></td>
							<th>投入品</th>
							<td><input name="objectid" /></td>
			 		 	</tr>
 						<tr height="28" style="font-size:18px;">
							<th>用途</th>
							<td><input name="purpose"/></td>
							<th>操作方法</th>
							<td><input name="operationmethod" /></td>
							<th>亩用量</th>
							<td><input name="quantityperarea" class="easyui-numberbox"/></td>
			 		 	</tr>
 						<tr height="28" style="font-size:18px;">
							<th>棚用量</th>
							<td><input name="quantityperhouse" class="easyui-numberbox"/></td>
							<th>总用量</th>
							<td><input name="quantity" class="easyui-numberbox"/></td>
							<th>安全期(天)</th>
							<td><input name="safeperiod" class="easyui-numberbox"/></td>
			 		 	</tr>
			 		 	<tr height="28" style="font-size:18px;">
			 		 		<th>有效期限</th>
			 		 		<td >
			 		 		<input name="safedate" size="6" type="text" id="safedate" readonly="readonly" size="12">
                            <input name="sss" onClick="setday(document.getElementById('safedate'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  			</td>
			 		 		<th>备注</th>
			 		 		<td colspan="3"><textarea rows="4" cols="35" name="note"></textarea><br></td>
			 		 	</tr>
			 		 	<tr height="28" style="font-size:18px;">
			 		 		<td>&nbsp;</td>
			 		 		<td>&nbsp;</td>
			 		 		<td><input type="submit" value="确认"></td>
			 		 		<td >&nbsp; </td>
			 		 		<td>
			 		 		<a href="${pageContext.request.contextPath}/Group?method=growcaozuo">返回前页</a>
			 		 		</td>
			 		 		<td >&nbsp; </td>
			 		 	</tr>	
 					</table>
 				
 			</fieldset>
	</form>
  </body>
</html>
