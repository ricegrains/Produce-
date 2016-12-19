<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>检测计划</title>
	</head>
	
	<script>

    	function delorg(testplanid){
    		var bln = confirm("是否删除编号为：【"+testplanid+"】的");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/DeleteTestPlan?testplanid="+testplanid;
    		}
    	}
</script>
	<body bgcolor="#dfe8f4">
		
		<div style="font-family: inherit">
			<input style="background-color: #e8f2fe;" border="0" type="text" disabled="disabled" value="质量安全检测>>检测计划">
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
									<B>检测计划信息</B>								
									</div>						  
							</td>
						</tr>
						<tr>
							<td bgcolor="#e3f1fe" valign="middle" align="center" width="100%">
								<fieldset style="width: 98%;" align="center">
									<legend>检测计划</legend>
									<table border="1" width="100%" align="center">
                                      <tr>
                                        <td height="30">检测计划ID</td>
                                        <td  height="30">指定组织</td>
                                        <td  height="30">执行组织</td>
                                        <td  height="30">制定日期</td>
                                        <td  height="30">计划完成日期</td>
                                        <td  height="30">级别</td>
                                        <td  height="30">检测计划次数</td>
                                        <td  height="30">已完成次数</td>
                                        <td  height="30">合格数</td>
                                        <td  height="30">合格百分比</td>
                                        <td  height="30">备注</td>
                                        <td  height="30">
                                        	<a href="./ServletDispose?pass=plan" style="text-decoration:none;" >
                                        	<font style="font-size:16px;color:green">☆添加</font>
                                        	</a>
                                        </td>
                                      </tr>
                                      <c:forEach items="${planlist}" var="List" >
                                        <tr>
                                          <td height="49" bgcolor="#99CCFF">${List.testplanid }</td>
                                          <td bgcolor="#99CCFF">${List.issueorgid}</td>
                                          <td bgcolor="#99CCFF">${List.executionorgid}</td>
                                           <td bgcolor="#99CCFF">${List.issuedate}</td>
                                           <td bgcolor="#99CCFF">${List.schedulefinishdate}</td>
                                           <td bgcolor="#99CCFF">${List.assignlevel}</td>
                                           <td bgcolor="#99CCFF">${List.planquantity}</td>
                                           <td bgcolor="#99CCFF">${List.finishedquantity}</td>
                                           <td bgcolor="#99CCFF">${List.passamount}</td>
                                           <td bgcolor="#99CCFF">${List.passppercentage}</td>
                                           <td bgcolor="#99CCFF">${List.note}</td>
                                          <td bgcolor="#99CCFF">
                                           
                                      		<img alt="删除设备" src="${pageContext.request.contextPath}/images/del.jpg" onclick="delorg('${List.testplanid}');">
                                          <a href="UpdateTestPlan?testplanid=${List.testplanid}" style="text-decoration:none;" ><font style="font-size:16px;color:green">☆修改</font></a> </td>
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
