<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title>My JSP 'log.jsp' starting page</title>
  </head>
  <script>
    	function delPlantlogs(plantlogsid){
    		var bln=confirm("�Ƿ�ɾ�����Ϊ��"+plantlogsid+"������ֲ��־��Ϣ��");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/Group?method=dellog&plantlogsid="+plantlogsid;
    		}
    	}
    	 
  </script>
  <body>
       <fieldset style="font-size:19px;font: bold;">
			 			<legend><font color=red>��ֲ��־��Ϣ</font></legend>
			 			<br>
			 			<input type="image" style="float: left" src="${pageContext.request.contextPath}/images/addPlantLogs.jpg" onClick="javascript:void(location.href='firmLandInfo/addlog.jsp');"/>
				 		<br>
				 		<br>
				 		<table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
							<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					 		 		<th width="8%">��ֲ��־���</th>
					 		 	    <th width="8%">��ֲ��Ϣ���</th>
					 		 		<th width="12%">����ʱ��</th>
					 		 		<th width="7%">����</th>
					 		 		<th width="7%">ʪ��</th>
					 		 		<th width="7%">����</th>
					 		 		<th width="7%">�¶�</th>
					 		 		<th width="7%">�����¶�</th>
					 		 		<th width="7%">����ʪ��</th>
					 		 		<th width="7%">��������</th>
					 		 		<th width="15%">��ע</th>
					 		 		<th width="10%">����</th>
				 		 	  </tr>
					 		 	<c:forEach items="${log}" var="plantLogses">
					 		 		<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
						 		 		<td>${plantLogses.plantlogsid }</td>
						 		 		<td>${plantLogses.firmlandid }</td>
						 		 		<td>${plantLogses.logdate }</td>
						 		 		<td>${plantLogses.weather }</td>
						 		 		<td>${plantLogses.humidity }</td>
						 		 		<td>${plantLogses.wind }</td>
						 		 		<td>${plantLogses.temperature }</td>
						 		 		<td>${plantLogses.soidtemperature }</td>
						 		 		<td>${plantLogses.soidhumidity }</td>
						 		 		<td>${plantLogses.nextweather }</td>
						 		 		<td>${plantLogses.note }</td>
						 		 		<td>
						 		 			<input type="image" src="${pageContext.request.contextPath}/images/edit.jpg" onClick="javascript:void(location.href='${pageContext.request.contextPath}/Group?method=xiulog&plantlogsid=${plantLogses.plantlogsid}');"/>&emsp;
						  					<input type="image" src="${pageContext.request.contextPath}/images/delete.jpg" onClick="delPlantlogs('${plantLogses.plantlogsid }');"/>			 		 
						  				</td>
					 		 		</tr>
					 		 	</c:forEach>
		 		  		 </table>
		 		   </fieldset>
  </body>
</html>
