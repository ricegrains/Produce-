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
    	function dellunzuo(plotrotationsid){
    		var bln = confirm("是否删除地块轮作编号为：【"+plotrotationsid+"】的地块信息？");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/Group?method=dellunzuo&plotrotationsid="+plotrotationsid+"&id=${contractsignplotsid}";
    		}
    	}
    	function delfirmLand(firmlandid){
    		var bln = confirm("是否删除种植编号为：【"+firmlandid+"】的种植信息？");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/Group?method=delgrow&firmlandid="+firmlandid;
    		}
    	}
    	function getAllInfo(contractsignplotsid){
		    		if(contractsignplotsid!=''){
		    		
		    			location.href="${pageContext.request.contextPath}/Group?method=chalunzuo&contractsignplotsid="+contractsignplotsid;
		    		}
		   }
    </script>
  </head>
<body>
<c:if test="${logzijilu!=null}">
     <script>
            alert("已找到自己录，不能删除");
     </script>
</c:if>
	<font color="blue" style="font-size:18px;font: bold;">种植管理&nbsp;&nbsp;>&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;"> 种植信息--种植日志--种植操作</font><br>
	<br><br>
 			 <fieldset style="font-size:19px;font: bold;">
		 		<legend><font color="red">详细种植信息</font></legend>
		 			<span style="float:left;"><input type="image" src="${pageContext.request.contextPath}/images/addPlanting.jpg" onclick="javascript:void(location.href='firmLandInfo/addgrow.jsp');"/></span>
			 	
			 		<table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
			 		 		<th width="8%">种植信息编号</th>
			 		 	    <th width="8%">地块编号</th>
			 		 		<th width="8%">温室大棚数量</th>
			 		 		<th width="15%">温室大棚面积</th>
			 		 		<th width="18%">土壤特征</th>
			 		 		<th width="27%">备注</th>
			 		 		<th width="20%">操作</th>
			 		 	</tr>
			 		 	<c:forEach items="${grow}" var="grow">
			 		 		<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
				 		 		<td>${grow.firmlandid}</td>
				 		 		<td>${grow.contractsignplotsid}</td>
				 		 		<td>${grow.greenhousequantity}</td>
				 		 		<td>${grow.greenhousearea}</td>
				 		 		<td>${grow.soilcharacterize}</td>
				 		 		<td>${grow.note}</td>
				 		 		<td>
				 		 			 <input type="image" src="images/edit.jpg" alt="修改组织信息" onclick="javascript:void(location.href='${pageContext.request.contextPath}/Group?method=xiugrow&firmlandid=${grow.firmlandid}');"/>
				  					<input type="image" src="${pageContext.request.contextPath}/images/delete.jpg" onClick="delfirmLand('${grow.firmlandid}');"/>
				 		 		</td>
			 		 		</tr>
			 		 		
			 		 	</c:forEach>
			 		</table>
			  </fieldset>
			  <fieldset style="font-size:19px;font: bold;">
			  <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
			  <tr>
			 		 		   <th width="8%">请选择地块编号</th>
			 		 		   <td>
 		 			<select name="allInternalId" onchange="getAllInfo(this.value);">
 		 				<option value="">请选择地块编号</option>
 		 				<c:forEach items="${grow}" var="grow">
 		 					<c:if test="${grow.contractsignplotsid==grows.contractsignplotsid}">
 		 						<option value="${grows.contractsignplotsid}" selected="selected">${grows.contractsignplotsid}</option>
 		 					</c:if>
 		 					<c:if test="${grow.contractsignplotsid!=grows.contractsignplotsid}">
 		 						<option value="${grow.contractsignplotsid }">${grow.firmlandid}</option>
 		 					</c:if>
 		 				</c:forEach>
 		 			</select>
 		 		</td>
			 		 		</tr>
			 		 		</table>
			 		 		</fieldset>
			  <fieldset style="font-size:19px;font: bold;">
			 		<legend><font color=red>地块轮作信息</font></legend>
			 		<span style="float:left;"><input type="image" src="${pageContext.request.contextPath}/images/addPlotRotationses.jpg" onClick="javascript:void(location.href='firmLandInfo/addlunzuo.jsp');"/></span>
			 		 &nbsp;&nbsp;&nbsp;<span style="font-size: 19px; font: bold;float:right;"><a
								href="${pageContext.request.contextPath}/Group?method=chakansuoyou&id=${contractsignplotsid}">查看所有地块轮作信息</a></span>
                
			 		<table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
			 		 		<th width="13%">地块轮作编号</th>
			 		 		<th width="13%">采摘日期</th>
			 		 		<th width="13%">播种日期</th>
			 		 		<th width="15%">农作物</th>
			 		 		<th width="15%">前茬农作物</th>
			 		 		<th width="15%">备注</th>
			 		 		<th width="15%">操作</th>
			 		 	</tr>
			 		 	<c:forEach items="${lun}" var="plotRotationses">
			 		 		<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
				 		 		<td>${plotRotationses.plotrotationsid}</td>
				 		 		<td>${plotRotationses.pluckdate}</td>
				 		 		<td>${plotRotationses.sowingdate}</td>
				 		 		<td>
					 		 		<c:forEach items="${object}" var="o">
										<c:if test="${o.objectid==plotRotationses.objectid}">
											${o.objectname }
										</c:if>
									</c:forEach>
								</td>
				 		 		<td>
					 		 		<c:forEach items="${object}" var="o">
										<c:if test="${o.objectid==plotRotationses.prcedingobjectid}">
											${o.objectname }
										</c:if>
									</c:forEach>
				 		 		</td>
				 		 		<td>${plotRotationses.note}</td>
				 		 		<td>
				 		 			<input type="image" src="${pageContext.request.contextPath}/images/edit.jpg"  onClick="javascript:void(location.href='${pageContext.request.contextPath}/Group?method=xiucaozuo&plotrotationsid=${plotRotationses.plotrotationsid}')"/>&emsp;
				  					<input type="image" src="${pageContext.request.contextPath}/images/delete.jpg" onClick="dellunzuo('${plotRotationses.plotrotationsid}');"/>
				 		 		</td>
			 		 		</tr>
			 		 	</c:forEach>
			 		</table>
			  </fieldset>
</body >
</html>
