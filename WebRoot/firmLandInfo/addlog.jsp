<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>My JSP 'addlog.jsp' starting page</title>
  
  </head>
  <script src="../clander/setday.js"></script>
		<script>
		        document.onclick=function() {}
		</script> 
		
  <body>
  <form action="${pageContext.request.contextPath}/Group?method=addlog" method="post">
        <fieldset style="font-size:20px;font: bold;">
				<legend id="title3" style="color: red;">添加种植日志信息</legend>
 			
 					<table cellspacing="0" cellpadding="0"border="0" style="width: 100%;color=blue">
 						<tr height="30" style="font-size:18px;">
			 		 		<td width="18%">&nbsp;</td>
			 		 		<td width="18%"> &nbsp;</td>
			 		 		<th width="18%">种植信息编号</th>
			 		 		<td width="18%">
			 		 			<input type="hidden" name="plantlogsid">
			 		 			<select name="firmlandid">
			 		 			     <c:forEach items="${growfirm}" var="grow">
			 		 			        <option value="${grow.firmlandid}" >${grow.firmlandid}</option>
			 		 			     </c:forEach>
			 		 			</select>
			 		 			
			 		 		</td>
			 		 		<td width="18%">&nbsp;</td>
			 		 		<td width="18%">&nbsp;</td>
			 		 	</tr>
			 		 	<tr height="30" style="font-size:18px;">
			 		 		<th>操作日期</th>
			 		 		<td>
			 		 		<input name="logdate" size="6" type="text" id="logdate" readonly="readonly" size="12">
                            <input name="sss" onClick="setday(document.getElementById('logdate'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  			</td>
							<th width="25%">气象</th>
							<td ><input  name="weather" /></td>
			 		 		<td>&nbsp;<br></td>
			 		 		<td > <br></td>
			 		 	</tr>
 						<tr height="30" style="font-size:18px;">
							<th>湿度</th>
							<td><input name="humidity" /></td>
							<th>风向</th>
							<td><input name="wind"/></td>
							<th>温度</th>
							<td><input name="temperature"/></td>
			 		 	</tr>
 						<tr height="30" style="font-size:18px;">
							<th>土壤温度</th>
							<td><input name="soidtemperature"/></td>
							<th>土壤湿度</th>
							<td><input name="soidhumidity"/></td>
							<th>翌日天气</th>
							<td><input name="nextweather"/></td>
			 		 	</tr>
			 		 	<tr height="30" style="font-size:18px;">
			 		 		<th>备注</th>
			 		 		<td colspan="3"><textarea rows="4" cols="65"  name="note"></textarea><br></td>
			 		 		<td>&nbsp;</td>
			 		 		<td >&nbsp; </td>
			 		 	</tr>
			 		 	<tr height="30" style="font-size:18px;">
			 		 		<td >&nbsp;</td>
			 		 		<td>&nbsp;</td>
			 		 		<td ><input type="submit" value="确认"></td>
			 		 		<td ><a href="../Group?method=plantlog">返回前页</a> </td>
			 		 		<td >&nbsp; </td>
			 		 		<td>&nbsp;</td>
			 		 		<td >&nbsp; </td>
			 		 	</tr>	
 					</table>
 				
 			</fieldset>
 			</form>
  </body>
</html>
