 <%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title> 种植信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/script/icon.css" type="text/css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/script/easyui.css" type="text/css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery.easyui.min.js"></script>
 
    <script type="text/javascript">
    	function delplant(plantoperationsid){
    		var bln=confirm("是否删除编号为【"+plantoperationsid+"】的种植操作信息？");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/Group?method=delcaozuo&plantoperationsid="+plantoperationsid;
    		}
    	}
    </script>
  </head>
<body>
				   <fieldset style="font-size:19px;font: bold;">
				 		<legend><font color=blue>种植操作信息</font></legend>
			 			<input type="image" style="float: left" src="${pageContext.request.contextPath}/images/addPlantOperations.jpg" onClick="javascript:void(location.href='firmLandInfo/addgrowcaozuo.jsp');"/>
				 		<br>
				 		<br>
				 		<table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
							<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					 		 		<th width="5%">种植操作编号</th>
					 		 		<th width="5%">种植信息编号</th>
					 		 		<th width="8%">日志时间</th>
					 		 		<th width="8%">操作时间</th>
					 		 		<th width="6%">操作人</th>
					 		 		<th width="5%">操作编号</th>
					 		 		<th width="5%">投入品种类</th>
					 		 		<th width="5%">投入品</th>
					 		 		<th width="5%">用途</th>
					 		 		<th width="5%">操作方法</th>
					 		 		<th width="5%">亩用量</th>
					 		 		<th width="5%">棚用量</th>
					 		 		<th width="5%">总用量</th>
					 		 		<th width="5%">安全期(天)</th>
					 		 		<th width="8%">有效期限</th>
					 		 		<th width="8%">备注</th>
					 		 		<th width="9%">操作</th>
				 		 	  </tr>
					 		 	<c:forEach items="${plant}" var="plant">
					 		 		<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
						 		 		<td>${plant.plantoperationsid }</td>
						 		 		<td>${plant.firmlandid}</td>
						 		 		<td>${plant.logdate }</td>
						 		 		<td>${plant.operatetime }</td>
						 		 		<td>${plant.operateperson }</td>
						 		 		<td>${plant.subtypeid}</td>
						 		 		<td>
											${plant.subtypeid1}
										</td>
						 		 		<td>${plant.objectid }</td>
						 		 		<td>${plant.purpose }</td>
						 		 		<td>${plant.operationmethod }</td>
						 		 		<td>${plant.quantityperarea }</td>
						 		 		<td>${plant.quantityperhouse }</td>
						 		 		<td>${plant.quantity }</td>
						 		 		<td>${plant.safeperiod }</td>
						 		 		<td>${plant.safedate }</td>
						 		 		<td>${plant.note }</td>
						 		 		<td>
						 		 			<input type="image" src="${pageContext.request.contextPath}/images/edit.jpg" onClick="javascript:void(location.href='${pageContext.request.contextPath}/Group?method=xiucaozuolog&plantoperationsid=${plant.plantoperationsid}')"/>&emsp;
						  					<input type="image" src="${pageContext.request.contextPath}/images/delete.jpg" onClick="delplant('${plant.plantoperationsid }');"/>			 		 
						  				</td>
					 		 		</tr>
					 		 	</c:forEach>
		 		  			 </table>
		 		  		 </fieldset>
</body >
</html>
