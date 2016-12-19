<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>无标题文档</title>
	</head>
	<script>
	 function deleteInfo(contractid){
		    		var bln = confirm("是否删除合同编号为："+contractid+"的信息","");
		    		if(bln==true){
		    			location.href="${pageContext.request.contextPath}/ServletPage?method=deleteheton&contractid="+contractid;
		    		}
		    	}
	
	</script>
	<body>
	<c:if test="${hexinxi!=null}">
	   <script>
	        alert("已找到子记录，不能删除！！！");
	   </script>
	</c:if>
		<fieldset style="font-size:19px;font: bold;">
 			 <legend><font color=red>合同信息</font></legend>
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					    <th width="80" height="30">编号</th>
			  			<th width="80">标准编号</th>
			  		    <th width="70">发包方</th>
			  			<th width="80">身份证号</th>
			  			<th width="80">种植养殖类型</th>
			  			<th width="115">签订日期</th>
			  			<th width="115">生效日期</th>
			  			<th width="115">终止时间</th>
			  			<th width="80">金额</th>
			  			<th width="80">承包亩数</th>
			  			<th width="115">缴费截止日期</th>
			  			<th width="80">历年欠费金额</th>
			  			<th width="160">备注</th>
			  			<th width="160">操作</th>
			  			
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
			  			<td align="center">
									<input type="image" src="images/edit.jpg" alt="修改合同信息"
										onclick="javascript:void(location.href='${pageContext.request.contextPath}/ServletPage?method=xiugaiheton&contractid=${con.contractid}');" />
									&emsp;
									<input type="image" src="images/delete.gif" alt="删除合同信息"
										onclick="deleteInfo(${con.contractid});" />
								</td>
			  		</tr>
			  		 </c:forEach>
			  		 <tr>
			  		   <td colspan="13">
			  		   <center>
			  		    <a href="${pageContext.request.contextPath}/ServletPage?method=heton">返回前页</a>
			  		    </center>
			  		   </td>
			  		</tr>
			</table>
		</fieldset>
		
	</body>
</html>
