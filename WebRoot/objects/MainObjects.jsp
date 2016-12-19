<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>农产品</title>
	</head>
	
	<script>

    	function delorg(objectid){
    		var bln = confirm("是否删除编号为：【"+objectid+"】的");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/DeleteObjects?objectid="+objectid;
    		}
    	}
</script>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="系统设置>>农产品">
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
									<B>农产品信息</B>								
									</div>						  
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 90%;" align="center">
									<legend>农产品</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">农产品ID</td>
                                        <td  height="30">农产品名称</td>
                                        <td  height="30">类型ID</td>
                                        <td  height="30">操作 
                                        	<a href="./ServletDispose?pass=objects" style="text-decoration:none;"><img src="image/tianjia.jpg" alt="添加农产品信息" style="border:0px;"><font style="font-size:16px;color:green">☆添加</font></a>
                                        </td>
                                      </tr>
                                      <c:forEach items="${obj}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.objectid }</td>
                                          <td bgcolor="#99CCFF">${List.objectname}</td>
                                          <td bgcolor="#99CCFF">${List.subtypeid}</td>
                                          <td bgcolor="#99CCFF">
                                         
                                         <img alt="删除设备" src="${pageContext.request.contextPath}/images/del.jpg" onclick="delorg('${List.objectid}');">
                                        <!-- 
                                          <a href="DeleteObjects?objectid=${List.objectid }" style="text-decoration:none;" onclick="delorg('${List.objectid}');"><font style="font-size:16px;color:green">☆删除</font></a><br/>
                                         -->
                                          <a href="UpdateObjects?objectid=${List.objectid}" style="text-decoration:none;" ><font style="font-size:16px;color:green">☆修改</font></a> </td>
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
