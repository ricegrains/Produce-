<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>�ޱ����ĵ�</title>
	</head>
	<script>
	 function deleteInfo(contractid){
		    		var bln = confirm("�Ƿ�ɾ����ͬ���Ϊ��"+contractid+"����Ϣ","");
		    		if(bln==true){
		    			location.href="${pageContext.request.contextPath}/ServletPage?method=deleteheton&contractid="+contractid;
		    		}
		    	}
	
	</script>
	<body>
	<c:if test="${hexinxi!=null}">
	   <script>
	        alert("���ҵ��Ӽ�¼������ɾ��������");
	   </script>
	</c:if>
		<fieldset style="font-size:19px;font: bold;">
 			 <legend><font color=red>��ͬ��Ϣ</font></legend>
			 <table cellspacing="1" cellpadding="0"border="0" style="width: 100%;background-color: #99CC99;">
				<tr bgcolor="#99DDFF" height="26" style="color:blue;font-size:19px;">
					    <th width="80" height="30">���</th>
			  			<th width="80">��׼���</th>
			  		    <th width="70">������</th>
			  			<th width="80">���֤��</th>
			  			<th width="80">��ֲ��ֳ����</th>
			  			<th width="115">ǩ������</th>
			  			<th width="115">��Ч����</th>
			  			<th width="115">��ֹʱ��</th>
			  			<th width="80">���</th>
			  			<th width="80">�а�Ķ��</th>
			  			<th width="115">�ɷѽ�ֹ����</th>
			  			<th width="80">����Ƿ�ѽ��</th>
			  			<th width="160">��ע</th>
			  			<th width="160">����</th>
			  			
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
									<input type="image" src="images/edit.jpg" alt="�޸ĺ�ͬ��Ϣ"
										onclick="javascript:void(location.href='${pageContext.request.contextPath}/ServletPage?method=xiugaiheton&contractid=${con.contractid}');" />
									&emsp;
									<input type="image" src="images/delete.gif" alt="ɾ����ͬ��Ϣ"
										onclick="deleteInfo(${con.contractid});" />
								</td>
			  		</tr>
			  		 </c:forEach>
			  		 <tr>
			  		   <td colspan="13">
			  		   <center>
			  		    <a href="${pageContext.request.contextPath}/ServletPage?method=heton">����ǰҳ</a>
			  		    </center>
			  		   </td>
			  		</tr>
			</table>
		</fieldset>
		
	</body>
</html>
