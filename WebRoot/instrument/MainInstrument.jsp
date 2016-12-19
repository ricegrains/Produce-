<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>设备管理</title>
	</head>
	
	<script>

    	function delorg(instrumentid){
    		var bln = confirm("是否删除编号为：【"+instrumentid+"】的");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/DeleteInstrument?instrumentid="+instrumentid;
    		}
    	}
</script>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="系统设置>>设备管理">
		</div>
		<br><br><br><br><br><br><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<table align="center" border="0" width="80%" bgcolor="#a9c7ed">
			<tr>
				<td >
					<table align="center" border="0" width="95%" bgcolor="#a9c7ed">
						<tr>
							<td width="100%" height="27" bgcolor="#adccef">
								<div style="font-size: 15px; color: #6780dd">
									<B>设备管理信息</B>								
									</div>						  
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>设备管理</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">设备ID</td>
                                        <td  height="30">设备名称</td>
                                        <td  height="30">型号</td>
                                        <td  height="30">价格</td>
                                        <td  height="30">供货商名称</td>
                                        <td  height="30">采购日期</td>
                                        <td  height="30">保管人</td>
                                        <td  height="30">备注</td>
                                        <td  height="30">操作 
                                        	<a href="instrument/AddInstrument.jsp" style="text-decoration:none;" >
                                        	<font style="font-size:16px;color:green">☆添加</font>
                                        	</a>
                                        </td>
                                      </tr>
                                      <c:forEach items="${mainlist}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.instrumentid }</td>
                                          <td bgcolor="#99CCFF">${List.instrumentname}</td>
                                          <td bgcolor="#99CCFF">${List.type}</td>
                                           <td bgcolor="#99CCFF">${List.price}</td>
                                           <td bgcolor="#99CCFF">${List.vendorname}</td>
                                           <td bgcolor="#99CCFF">${List.purchaseddate}</td>
                                           <td bgcolor="#99CCFF">${List.custodian}</td>
                                           <td bgcolor="#99CCFF">${List.note}</td>
                                          <td bgcolor="#99CCFF">
                                           
                                      		<img alt="删除设备" src="${pageContext.request.contextPath}/images/del.jpg" onclick="delorg('${List.instrumentid}');">
                                          <a href="UpdateInstrument?instrumentid=${List.instrumentid}" style="text-decoration:none;" ><font style="font-size:16px;color:green">☆修改</font></a> </td>
                                        </tr>
                                      </c:forEach>
                                    </table>
								</fieldset>							
							</td>
						</tr>
					</table>
				</td>
			</tr>
	</table>
	</body>
</html>
