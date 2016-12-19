<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>承包户劳动力</title>
  </head>
  <script src="../clander/setday.js"></script>
		<script>
		        document.onclick=function() {}
		</script> 
  <body>
  <form action="../ServletPage?method=saveaddlab" method="post">
  	<font color="blue" style="font-size:18px;font: bold;">承包户管理&nbsp;&nbsp;>&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;">添加劳动力</font>
   <br><br>
 
			<fieldset style="font-size:19px;font: bold;">
				<legend id="title" style="color: red;">新增劳动力</legend>
 				
 					<table cellspacing="0" cellpadding="0"border="0" style="width: 100%;color=blue">
 						<tr height="30" style="font-size:18px;display:none;" id="laborid">
			 		 		<th >劳动力编号</th>
			 		 		<td ><input name="laborsid" id="laborsid" readonly/></td>
			 		 	</tr>
 						<tr height="30" style="font-size:18px;">
			 		 		<th>承包户姓名</th>
			 		 		<td>
			 		 		<select name="name">
			 		 		   <c:forEach items="${users}" var="users">
			 		 		    <option value="${users.name}">${users.name}</option>
			 		 		    </c:forEach>
			 		 		</select>
			 		 		</td>
			 		 		<th>身份证号</th>
			 		 		<td>
			 		 		<select name="identityid">
			 		 		   <c:forEach items="${users}" var="users">
			 		 		    <option value="${users.identityid}">${users.identityid}</option>
			 		 		    </c:forEach>
			 		 		</select>
			 		 	</tr>
 						<tr height="30" style="font-size:18px;">
			 		 		<th>姓名</th>
			 		 		<td><input name="name" id="name"/></td>
							<th>与承包户之间的关系</th>
							<td><input  name="relation" id="relation"/></td>
			 		 	</tr>
			 		 	<tr height="30" style="font-size:18px;">
			 		 		<th>出生日期</th>
							<td>
							<input name="birthday" size="6" type="text" id="birthday" readonly="readonly" size="16">
                             <input name="sss" onClick="setday(document.getElementById('birthday'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  				</td>
							<th>性 别</th>
							<td>
								<select name="gender" id="gender">
									<option value="1">男</option>
									<option value="0">女</option>
								</select>
							</td>
			 		 	</tr>	
			 		 	<tr height="30" style="font-size:18px;">
			 		 		<th>备注</th>
			 		 		<td colspan="3"><textarea rows="4" cols="65" id="note"  name="note"></textarea></td>
			 		 	</tr>
			 		 	<tr height="30" style="font-size:18px;">
			 		 		<td >&nbsp;</td>
			 		 		<td ><input type="submit" value="确认" /></td>
			 		 		<td>&nbsp;<a href=".././ServletPage?method=laodong">返回前页</a></td>
			 		 		<td >&nbsp;</td>
			 		 	</tr>	
 					</table>
 				
 			</fieldset>
</form>
  </body >
</html>
