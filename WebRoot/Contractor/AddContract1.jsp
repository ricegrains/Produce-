<%@ page  language="java" import="java.sql.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>无标题文档</title>
	</head>
<script src="../clander/setday.js"></script>
		<script>
		        document.onclick=function() {}
		</script> 
		
	<body>
	<form action="../ServletPage?method=saveadd" method="post">
		<fieldset style="font-size:19px;font: bold;">
 			 <legend><font color=red>合同信息</font></legend>
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					
			  			<th width="70">标准编号</th>
			  		    <th width="70">发包方</th>
			  			<th width="70">身份证号</th>
			  			<th width="70">种植养殖类型</th>
			  			<th width="100">签订日期</th>
			  			<th width="100">生效日期</th>
			  			<th width="100">终止时间</th>
			  			<th width="70">金额</th>
			  			<th width="70">承包亩数</th>
			  			<th width="100">缴费截止日期</th>
			  			<th width="70">历年欠费金额</th>
			  			<th width="100">备注</th>
			  			
  				</tr>
		  			<tr style="font-size:18px;color: black;" bgcolor="white"  align="center">
			  			<input size="7" type="hidden" name="contractid"/>
			  			
			  			<td><input size="5" name="contractcode"/></td>
			  			<td>
			  			    <select name="produceorg">
			  				<c:forEach items="${org}" var="org">
									<option value="${org.orgid}">${org.orgname}</option>
						 	</c:forEach>
						    </select>
			  			</td>
			  			<td>
			  			    <select name="identityid">
			  				<c:forEach items="${users}" var="cont">
									<option value="${cont.identityid}">${cont.identityid}</option>
							</c:forEach>
						    </select>
			  			</td>
			  			<td>
			  			<select name="typeid">
			  				<c:forEach items="${typesets}" var="typeset">
									<option value="${typeset.typeid}">${typeset.typename}</option>
							</c:forEach>
						</select>
			  			</td>
			  			<td>
			  			<input name="signtime" size="6" type="text" id="signtime" readonly="readonly" size="12">
                        <input name="sss" onClick="setday(document.getElementById('signtime'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  			</td>
			  			<td>
			  			 <input name="effectivedate" size="6" type="text" id="effectivedate" readonly="readonly" size="12">
                         <input name="sss" onClick="setday(document.getElementById('effectivedate'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  			
                		
			  			</td>
			  			<td>
			  			<input name="expiredate" size="6" type="text" id="expiredate" readonly="readonly" size="12">
                        <input name="sss" onClick="setday(document.getElementById('expiredate'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  		
			  			</td>
			  			<td><input size="7"  name="moneyamount"/></td>
			  			<td><input size="7"  name="area"/></td>
			  			<td>
			  			 <input name="duedate" size="6" type="text" id="duedate" readonly="readonly" size="12">
                        <input name="sss" onClick="setday(document.getElementById('duedate'));" type="image" value=" 选择日期 " name="button1" src="clander.gif" width="18" height="19" align="top"/>
			  			
			  			</td>
			  			<td><input size="7"  name="arrearage"/></td>
			  			<td><input size="13"  name="note"/></td>
			  		</tr>
			  		<tr>
			  		    <td></td>
			  		    <td></td>
			  		    <td></td>
			  		    <td  colspan="4">
			  		        <input type="submit" value="提交">
			  		       
			  		    </td>
			  		    <td colspan="4">
			  		     <a href=".././ServletPage?method=heton">返回前页</a>
			  		    </td>
			  		</tr>
			</table>
		</fieldset>
		</form>
	</body>
</html>
