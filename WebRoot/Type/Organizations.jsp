<%@ page language="java" import="java.sql.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>无标题文档</title>
</head>
<script>

    	function delorg(orgid){
    		var bln = confirm("是否删除编号为：【"+orgid+"】的组织机构？");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=delorg&orgid="+orgid;
    		}
    	}

</script>
<body>
<center>
<table width="900" border="0" cellspacing="2" cellpadding="0" border="0"
						style="width: 100%; background-color: #99CC99;">
<input type="image" src="${pageContext.request.contextPath}/images/addOrganizations.jpg" alt="签订合同"  onclick="javascript:void(location.href='Type/addOrganizations.jsp');"/>

  <tr height="24" bgcolor="white" style="font-size: 18px;">
    <td width="40" bgcolor="#99CCFF">组织编号</td>
    <td width="40" bgcolor="#99CCFF">类别编号</td>
     <td width="60" bgcolor="#99CCFF">组织内部编号</td>
     <td width="40" bgcolor="#99CCFF">组织名称</td>
     <td width="20" bgcolor="#99CCFF">地址</td>
     <td width="60" bgcolor="#99CCFF">主管负责人</td>
     <td width="40" bgcolor="#99CCFF">联系电话</td>
     <td width="20" bgcolor="#99CCFF">传真</td>
     <td width="40" bgcolor="#99CCFF">邮政编码</td>
     <td width="20" bgcolor="#99CCFF">网站</td>
     <td width="40" bgcolor="#99CCFF">信用级别</td>
     <td width="40" bgcolor="#99CCFF">旱地面积</td>
     <td width="40" bgcolor="#99CCFF">水域面积</td>
     <td width="70" bgcolor="#99CCFF">养殖水面面积</td>
     <td width="40" bgcolor="#99CCFF">林果面积</td>
     <td width="60" bgcolor="#99CCFF">备注</td>
     <td width="80" bgcolor="#99CCFF">操作</td>
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
           <input type="image" src="images/edit.jpg" alt="修改组织信息" onclick="javascript:void(location.href='${pageContext.request.contextPath}/ServletPage?method=xiuorg&orgid=${org.orgid}');"/>
         
           <input type="image" src="${pageContext.request.contextPath}/images/delete.jpg" alt="删除"onclick="delorg('${org.orgid}');"/>
          
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
