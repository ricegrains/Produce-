 <%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title> ��ֲ��Ϣ</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/script/icon.css" type="text/css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/script/easyui.css" type="text/css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery.easyui.min.js"></script>
 
    <script type="text/javascript">
    	function dellunzuo(plotrotationsid){
    		var bln = confirm("�Ƿ�ɾ���ؿ��������Ϊ����"+plotrotationsid+"���ĵؿ���Ϣ��");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/Group?method=dellunzuo&plotrotationsid="+plotrotationsid+"&id=${contractsignplotsid}";
    		}
    	}
    	function delfirmLand(firmlandid){
    		var bln = confirm("�Ƿ�ɾ����ֲ���Ϊ����"+firmlandid+"������ֲ��Ϣ��");
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
            alert("���ҵ��Լ�¼������ɾ��");
     </script>
</c:if>
	<font color="blue" style="font-size:18px;font: bold;">��ֲ����&nbsp;&nbsp;>&nbsp;&nbsp;</font><font color="red" style="font-size:22px;font: bold;"> ��ֲ��Ϣ--��ֲ��־--��ֲ����</font><br>
	<br><br>
 			 <fieldset style="font-size:19px;font: bold;">
		 		<legend><font color="red">��ϸ��ֲ��Ϣ</font></legend>
		 			<span style="float:left;"><input type="image" src="${pageContext.request.contextPath}/images/addPlanting.jpg" onclick="javascript:void(location.href='firmLandInfo/addgrow.jsp');"/></span>
			 	
			 		<table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
			 		 		<th width="8%">��ֲ��Ϣ���</th>
			 		 	    <th width="8%">�ؿ���</th>
			 		 		<th width="8%">���Ҵ�������</th>
			 		 		<th width="15%">���Ҵ������</th>
			 		 		<th width="18%">��������</th>
			 		 		<th width="27%">��ע</th>
			 		 		<th width="20%">����</th>
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
				 		 			 <input type="image" src="images/edit.jpg" alt="�޸���֯��Ϣ" onclick="javascript:void(location.href='${pageContext.request.contextPath}/Group?method=xiugrow&firmlandid=${grow.firmlandid}');"/>
				  					<input type="image" src="${pageContext.request.contextPath}/images/delete.jpg" onClick="delfirmLand('${grow.firmlandid}');"/>
				 		 		</td>
			 		 		</tr>
			 		 		
			 		 	</c:forEach>
			 		</table>
			  </fieldset>
			  <fieldset style="font-size:19px;font: bold;">
			  <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
			  <tr>
			 		 		   <th width="8%">��ѡ��ؿ���</th>
			 		 		   <td>
 		 			<select name="allInternalId" onchange="getAllInfo(this.value);">
 		 				<option value="">��ѡ��ؿ���</option>
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
			 		<legend><font color=red>�ؿ�������Ϣ</font></legend>
			 		<span style="float:left;"><input type="image" src="${pageContext.request.contextPath}/images/addPlotRotationses.jpg" onClick="javascript:void(location.href='firmLandInfo/addlunzuo.jsp');"/></span>
			 		 &nbsp;&nbsp;&nbsp;<span style="font-size: 19px; font: bold;float:right;"><a
								href="${pageContext.request.contextPath}/Group?method=chakansuoyou&id=${contractsignplotsid}">�鿴���еؿ�������Ϣ</a></span>
                
			 		<table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
			 		 		<th width="13%">�ؿ��������</th>
			 		 		<th width="13%">��ժ����</th>
			 		 		<th width="13%">��������</th>
			 		 		<th width="15%">ũ����</th>
			 		 		<th width="15%">ǰ��ũ����</th>
			 		 		<th width="15%">��ע</th>
			 		 		<th width="15%">����</th>
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
