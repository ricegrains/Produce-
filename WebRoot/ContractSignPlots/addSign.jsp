<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��Ӻ�ͬ�ؿ���Ϣ</title>
    
  </head>

  <body>
  <form action="${pageContext.request.contextPath}/ServletPage?method=addhetondikuai&id=${contractid}" method="post">
         <fieldset style="font-size:20px;font: bold;">
				<legend id="title3" style="color: red;">��ӵؿ�������Ϣ</legend>
 					<table cellspacing="0" cellpadding="0"border="0" style="width: 100%;color=blue">
 						<tr height="30" style="font-size:18px;">
			 		 		
			 		 		<th width="18%">��ͬ���</th>
			 		 		<td width="18%">
			 		 			<input type="hidden" name="contractsignplotsid">
			 		 			<select name="contractid">
			 		 			     <c:forEach items="${hetonbyid}" var="di">
			 		 			        <option value="${di.contractid}" >${di.contractid}</option>
			 		 			     </c:forEach>
			 		 			</select>
			 		 			
			 		 		</td>
			 		 		<th width="18%">�ؿ���</th>
			 		 		<td>
			 		 		 <input name="plotid" />
			 		 		</td>
			 		 		<th>�ؿ����</th>
			 		 		<td><input name="plotarea" /></td>
			 		 		
			 		 	</tr>
 						<tr height="30" style="font-size:18px;">
							<th>�ؿ�λ��</th>
							<td>
							<input name="plotlocation" />
						   </td>
							<th>�ؿ�����</th>
							<td>
							<input name="plottype" />
							</td>
							<th>�������</th>
							<td>
							<input name="groupid" />
							
							</td>
			 		 	</tr>
			 		 	<tr height="30" style="font-size:18px;">
			 		 	<th>��ע</th>
			 		 	<td>
			 		 	    <textarea rows="" cols="" name="note"></textarea>
			 		 	</td>
			 		 	</tr>
 						
			 		 	<tr height="30" style="font-size:18px;">
			 		 		<td >&nbsp;</td>
			 		 		<td>&nbsp;</td>
			 		 		<td ><input type="submit" value="ȷ��"></td>
			 		 		<td ><a href="../ServletPage?method=dikuai">����ǰҳ</a> </td>
			 		 		<td >&nbsp; </td>
			 		 		<td>&nbsp;</td>
			 		 		<td >&nbsp; </td>
			 		 	</tr>	
 					</table>
 				
 			</fieldset>
			  </form>
  </body>
</html>
