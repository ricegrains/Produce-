<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>�ޱ����ĵ�</title>
</head>
<script>

    	function delorg(orgid){
    		var bln = confirm("�Ƿ�ɾ�����Ϊ����"+orgid+"������֯������");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=delorg&orgid="+orgid;
    		}
    	}

</script>
<body>
<center>
<table width="900" border="0" cellspacing="2" cellpadding="0" border="0"
						style="width: 100%; background-color: #99CC99;">
<input type="image" src="${pageContext.request.contextPath}/images/addOrganizations.jpg" alt="ǩ����ͬ"  onclick="javascript:void(location.href='Type/addOrganizations.jsp');"/>

  <tr height="24" bgcolor="white" style="font-size: 18px;">
    <td width="40" bgcolor="#99CCFF">��֯���</td>
    <td width="40" bgcolor="#99CCFF">�����</td>
     <td width="60" bgcolor="#99CCFF">��֯�ڲ����</td>
     <td width="40" bgcolor="#99CCFF">��֯����</td>
     <td width="20" bgcolor="#99CCFF">��ַ</td>
     <td width="60" bgcolor="#99CCFF">���ܸ�����</td>
     <td width="40" bgcolor="#99CCFF">��ϵ�绰</td>
     <td width="20" bgcolor="#99CCFF">����</td>
     <td width="40" bgcolor="#99CCFF">��������</td>
     <td width="20" bgcolor="#99CCFF">��վ</td>
     <td width="40" bgcolor="#99CCFF">���ü���</td>
     <td width="40" bgcolor="#99CCFF">�������</td>
     <td width="40" bgcolor="#99CCFF">ˮ�����</td>
     <td width="70" bgcolor="#99CCFF">��ֳˮ�����</td>
     <td width="40" bgcolor="#99CCFF">�ֹ����</td>
     <td width="60" bgcolor="#99CCFF">��ע</td>
     <td width="80" bgcolor="#99CCFF">����</td>
  </tr>
  <c:forEach items="${orgxinxi}" var="org">
  <tr>
     <td  width="40" bgcolor="#CCCC99">${org.orgid}</td>
     <td  width="40" bgcolor="#CCCC99">${org.orgtypeid }</td>
     <td  width="60" bgcolor="#CCCC99">${org.orgcode}</td>
     <td  width="100" bgcolor="#CCCC99">${org.orgname}</td>
     <td  width="40" bgcolor="#CCCC99">${org.address}</td>
     <td  width="60" bgcolor="#CCCC99">${org.director}</td>
     <td  width="40" bgcolor="#CCCC99">${org.telephone}</td>
     <td  width="20" bgcolor="#CCCC99">${org.fax}</td>
     <td  width="40" bgcolor="#CCCC99">${org.postcode}</td>
     <td  width="20"  bgcolor="#CCCC99">${org.web}</td>
     <td  width="40" bgcolor="#CCCC99">${org.safelevelid}</td>
     <td  width="20" bgcolor="#CCCC99">${org.firmlandarea}</td>
     <td  width="40" bgcolor="#CCCC99">${org.waterlandarea}</td>
     <td  width="40" bgcolor="#CCCC99">${org.pondarea}</td>
     <td  width="40" bgcolor="#CCCC99">${org.forestandorchardarea}</td>
     <td  width="40" bgcolor="#CCCC99">${org.note}</td>
     <td  width="70" bgcolor="#CCCC99">
           <input type="image" src="images/edit.jpg" alt="�޸���֯��Ϣ" onclick="javascript:void(location.href='${pageContext.request.contextPath}/ServletPage?method=xiuorg&orgid=${org.orgid}');"/>
         
           <input type="image" src="${pageContext.request.contextPath}/images/delete.jpg" alt="ɾ��"onclick="delorg('${org.orgid}');"/>
          
     </td>
  </tr>
  </c:forEach>
  
 

</table>
</center>
<dl>
  <dt>&nbsp;</dt>
</dl>
</body>
</html>
