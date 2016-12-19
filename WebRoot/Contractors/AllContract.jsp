<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>无标题文档</title>
	</head>

		
	<body>
	
		<fieldset style="font-size:19px;font: bold;">
 			 <legend><font color=red>合同信息</font></legend>
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					    <th width="80">编号</th>
			  			<th width="80">标准编号</th>
			  		    <th width="70">发包方</th>
			  			<th width="80">身份证号</th>
			  			<th width="80">种植养殖类型</th>
			  			<th width="100">签订日期</th>
			  			<th width="100">生效日期</th>
			  			<th width="100">终止时间</th>
			  			<th width="80">金额</th>
			  			<th width="80">承包亩数</th>
			  			<th width="100">缴费截止日期</th>
			  			<th width="80">历年欠费金额</th>
			  			<th width="160">备注</th>
			  			
  				</tr>
  				<c:forEach items="${contract}" var="con">
		  			<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
			  			
			  			
			  			<td>
			  			     ${con.contractid}
			  			</td>
			  			
			  			<td>
			  			    ${con.contractcode }
			  			</td>
			  			<td>
			  			    ${con.produceorg}
			  			</td>
			  			<td>
			  			    ${con.identityid}
			  			</td>
			  			<td>
			  			    ${con.typeid}
			  			</td>
			  			<td>
			  			
                		    ${con.signtime}
			  			</td>
			  			<td>
			  			  	${con.effectivedate}	
			  			</td>
			  			<td>${con.expiredate}</td>
			  			<td>${con.moneyamount }</td>
			  			<td>${con.area}</td>
			  			<td>${con.duedate }</td>
			  			<td>${con.arrearage}</td>
			  			<td>${con.note }</td>
			  		</tr>
			  		<tr>
			  		    <td></td>
			  		    <td></td>
			  		    <td></td>
			  		    <td  colspan="4">
			  		     
			  		    </td>
			  		    <td colspan="4">
			  		     <a href=".././ServletPage?method=heton">返回前页</a>
			  		    </td>
			  		   
			  		</tr>
			  		 </c:forEach>
			</table>
		</fieldset>
		
	</body>
</html>
