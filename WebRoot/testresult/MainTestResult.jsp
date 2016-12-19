<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>检测结果</title>
	</head>
	
	<script>

    	function delorg(testresultid){
    		var bln = confirm("是否删除编号为：【"+testresultid+"】的");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/DeleteTestResult?testresultid="+testresultid;
    		}
    	}
</script>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="质量安全检测>>检测结果">
		</div>
		<br><br><br><br><br><br><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<table align="center" border="0" width="90%" bgcolor="#a9c7ed">
			<tr>
				<td >
					<table align="center" border="0" width="100%" bgcolor="#a9c7ed">
						<tr>
							<td width="100%" height="27" bgcolor="#adccef">
								<div style="font-size: 15px; color: #6780dd">
									<B>检测结果信息</B>								
									</div>						  
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 98%;" align="center">
									<legend>检测结果</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">检测结果ID</td>
                                        <td  height="30">检测人</td>
                                        <td  height="30">检测时间</td>
                                        <td  height="30">检测结果</td>
                                        <td  height="30">检测范围</td>
                                        <td  height="30">检测品种</td>
                                        <td  height="30">检测级</td>
                                        <td  height="30">检测指标</td>
                                        <td  height="30">检测设备</td>
                                        <td  height="30">备注</td>
                                        <td  height="30">
                                        	<a href="./ServletDispose?pass=result" style="text-decoration:none;" >
                                        	<font style="font-size:16px;color:green">☆添加</font>
                                        	</a>
                                        </td>
                                      </tr>
                                      <c:forEach items="${resultlist}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.testresultid }</td>
                                          <td bgcolor="#99CCFF">${List.operationperson}</td>
                                          <td bgcolor="#99CCFF">${List.operationtime}</td>
                                           <td bgcolor="#99CCFF">${List.result}</td>
                                           <td bgcolor="#99CCFF">${List.category}</td>
                                           <td bgcolor="#99CCFF">${List.objectname}</td>
                                           <td bgcolor="#99CCFF">${List.testsetid}</td>
                                           <td bgcolor="#99CCFF">${List.testindexid }</td>
                                           <td bgcolor="#99CCFF">${List.instrumentid}</td>
                                           <td bgcolor="#99CCFF">${List.note}</td>
                                          <td bgcolor="#99CCFF">
                                      		<img alt="删除设备" src="${pageContext.request.contextPath}/images/del.jpg" onclick="delorg('${List.testresultid}');">
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
