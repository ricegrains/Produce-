<%@ page language="java" import="java.util.*" pageEncoding="GBK"
	isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>承包合同地块信息</title>
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/script/icon.css"
			type="text/css"></link>
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/script/easyui.css"
			type="text/css"></link>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/script/jquery-1.4.4.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/script/jquery.easyui.min.js"></script>
		<script type="text/javascript">
		function deldikuai(contractsignplotsid){
    		var bln = confirm("是否删除合同地块编号为：【"+contractsignplotsid+"】的地块信息？");
    		if(bln==true){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=delhedikuai&contractsignplotsid="+contractsignplotsid+"&id=${contractid}";
    		}
    	}
    	function getAllInfo(contractid,identityid){
    		
    		if(contractid!=''&&identityid!=''){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=signplot&identityid="+identityid+"&contractid="+contractid;
    		}
    	}
    		function getInfo(identityid){
    		if(identityid!=''){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=hetonbiao&identityid="+identityid;
    		}
    	}
    </script>
	</head>
	<body>
	<c:if test="${shan!=null}">
       <script>
            alert("已找到子记录，不能删除");
       </script>
    </c:if>
		<font color="blue" style="font-size: 18px; font: bold;">承包户管理&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		<font color="red" style="font-size: 22px; font: bold;">
			承包合同地块信息</font>

		<c:if test="${empInfo.duty!='管理员'}">
			<br>
			<br>

			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>承包户信息</font>
				</legend>
				<center>
					<table cellspacing="1" cellpadding="0" border="0"
						style="width: 80%; color: blue">
						<tr height="26" style="font-size: 18px;">
							<th>
								承包户姓名
							</th>
							<td>
								<input name="name" value="${user.name}" readonly width="20px" />
							</td>
							<th>
								组织名称
							</th>
							<td>
								<c:forEach items="${org}" var="org">
									<c:if test="${user.belongOrgID==org.orgid}">
										<input value="${org.orgname}" readonly />
										<input name="belongOrgID" type="hidden" value="${org.orgid}">
									</c:if>
								</c:forEach>
							</td>
							<th>
								身份证号
							</th>
							<td>
								<input name="identityid" value="${user.identityid}" readonly />
							</td>
						</tr>
						<tr height="26" style="font-size: 19px;">
							<th>
								联系电话
							</th>
							<td>
								<input name="telephone" value="${user.telephone}" readonly />
							</td>
							<th>
								地址
							</th>
							<td>
								<input name="address" value="${user.address}" readonly />
							</td>
							<th>
								备注
							</th>
							<td>
								<textarea rows="2" cols="17" readonly name="note">${user.note}</textarea>
							</td>
						</tr>
					</table>
				</center>
			</fieldset>
		</c:if>
		<c:if test="${empInfo.duty=='管理员'}">

			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>承包户信息</font>
				</legend>
				<center>
					<table cellspacing="1" cellpadding="0" border="0"
						style="width: 80%; color: blue">
						<tr height="26" style="font-size: 18px;">
							<th>
								选择承包户编号
							</th>
							<td>
								<select name="allInternalId" onchange="getInfo(this.value);">
									<option value="">
										请选择承包户编号
									</option>
									<c:forEach items="${users}" var="users">
										<c:if
											test="${users.internalid==selectContractorInfo.identityid}">
											<option value="${selectContractorInfo.identityid }"
												selected="selected">
												${selectContractorInfo.identityid }
											</option>
										</c:if>
										<c:if
											test="${users.internalid!=selectContractorInfo.identityid}">
											<option value="${users.internalid }">
												${users.internalid }
											</option>
										</c:if>
									</c:forEach>
								</select>
							</td>
							<th>
								承包户编号
							</th>
							<td>
								<input name="internalid"
									value="${selectContractorInfo.identityid}" readonly />
							</td>
						</tr>
						<tr height="26" style="font-size: 18px;">
							<th>
								承包户姓名
							</th>
							<td>
								<input name="name" value="${selectContractorInfo.name}" readonly />
							</td>
							<th>
								组织名称
							</th>
							<td>
								<c:forEach items="${org}" var="org">
									<c:if test="${selectContractorInfo.belongOrgID==org.orgid}">
										<input name="belongOrgID" value="${org.orgname}" readonly />
									</c:if>
								</c:forEach>
							</td>
							<th>
								身份证号
							</th>
							<td>
								<input name="identityid"
									value="${selectContractorInfo.identityid}" readonly />
							</td>
						</tr>
						<tr height="26" style="font-size: 19px;">
							<th>
								联系电话
							</th>
							<td>
								<input name="telephone"
									value="${selectContractorInfo.telephone}" readonly />
							</td>
							<th>
								地址
							</th>
							<td>
								<input name="address" value="${selectContractorInfo.address}"
									readonly />
							</td>
							<th>
								备注
							</th>
							<td>
								<textarea rows="2" cols="17" readonly name="note">${selectContractorInfo.identityid}</textarea>
							</td>
						</tr>
					</table>
				</center>
			</fieldset>
		</c:if>
		<br>
		<fieldset style="font-size: 19px; font: bold;">
			<legend>
				<font color=red>承包户合同地块信息</font>
			</legend>
			<center>
				<table cellspacing="1" cellpadding="0" border="0"
					style="width: 80%; color: blue">
					<tr height="26" style="font-size: 18px;">
						<th>
							选择合同编号
						</th>
						<td>
							<select name="contractid"
								onchange="getAllInfo(this.value,${selectContractorInfo.identityid});">
								<option value="">
									请选择合同编号
								</option>
								<c:forEach items="${selectContractorInfos}" var="contracts">
									<c:if test="${contracts.contractid==contractmodel.contractid}">
										<option value="${contractmodel.contractid }"
											selected="selected">
											${contractmodel.contractid}
										</option>
									</c:if>
									<c:if test="${contracts.contractid!=contractmodel.contractid}">
										<option value="${contracts.contractid }">
											${contracts.contractid}
										</option>
									</c:if>
								</c:forEach>
							</select>
						</td>
						<th>
							合同编号
						</th>
						<td>
							<input name="contractid" value="${contractmodel.contractid}"
								readonly />
						</td>
						<th>
							标准编号
						</th>
						<td>
							<input value="${contractmodel.contractcode }" readonly />
						</td>
					</tr>
					<tr height="26" style="font-size: 18px;">
						<th>
							种植养殖类型
						</th>
						<td>
							<c:forEach items="${typesets}" var="typeset">
								<c:if test="${contractmodel.typeid==typeset.typeid}">
									<input value="${typeset.typename}" readonly />
								</c:if>
							</c:forEach>
						</td>
						<th>
							签订日期
						</th>
						<td>
							<input value="${contractmodel.signtime }" readonly />
						</td>
						<th>
							生效日期
						</th>
						<td>
							<input value="${contractmodel.effectivedate }" readonly />
						</td>
					</tr>
					<tr height="26" style="font-size: 19px;">
						<th>
							终止日期
						</th>
						<td>
							<input value="${contractmodel.expiredate }" readonly />
						</td>
						<th>
							金额
						</th>
						<td>
							<input value="${contractmodel.moneyamount }" readonly />
						</td>
						<th>
							承包亩数
						</th>
						<td>
							<input value="${contractmodel.area }" readonly />
						</td>
					</tr>
					<tr height="26" style="font-size: 19px;">
						<th>
							缴费截止日期
						</th>
						<td>
							<input value="${contractmodel.duedate }" readonly />
						</td>
						<th>
							历年欠费金额
						</th>
						<td>
							<input value="${contractmodel.arrearage }" readonly />
						</td>
						<th>
							备注
						</th>
						<td>
							<input value="${contractmodel.note }" readonly />
						</td>
					</tr>
				</table>
			</center>
			
			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>合同地块信息</font>
				</legend>
				<span style="float: left;"><input type="image"
						src="${pageContext.request.contextPath}/images/addContractSignPlots.jpg"
						onclick="javascript:void(location.href='ContractSignPlots/addSign.jsp');" />
				</span>
                &nbsp;&nbsp;&nbsp;<span style="font-size: 19px; font: bold;float: right;"><a
								href="${pageContext.request.contextPath}/ServletPage?method=chakansuoyou&id=${contractid}">查看所有地块信息</a></span>
                <br><br>
				<table cellspacing="1" cellpadding="0" border="0"
					style="width: 100%; background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26"
						style="color: blue; font-size: 19px;">
						<th width="70">
							合同地块编号
						</th>
						<th width="70">
							合同编号
						</th>
						<th width="80">
							地块编号
						</th>
						<th width="80">
							地块面积
						</th>
						<th width="100">
							地块位置
						</th>
						<th width="100">
							地块类型
						</th>
						<th width="100">
							隶属大队
						</th>
						<th width="160">
							备注
						</th>
						<th width="160">
							操作
						</th>
					</tr>
					<c:forEach items="${contractSignPlots}" var="contractsp">
						<tr style="font-size: 18px; color: black;" bgcolor="white"
							align="center">
							<td>
								${contractsp.contractsignplotsid }
							</td>
							<td>
								${contractsp.contractid }
							</td>
							<td>
								${contractsp.plotid }
							</td>
							<td>
								${contractsp.plotarea }
							</td>
							<td>
								${contractsp.plotlocation }
							</td>
							<td>
								${contractsp.plottype }
							</td>
							<td>
								${contractsp.groupid }
							</td>
							<td>
								${contractsp.note }
							</td>
							<td>
								<input type="image"
									src="${pageContext.request.contextPath}/images/edit.jpg"
									onClick="javascript:void(location.href='${pageContext.request.contextPath}/ServletPage?method=xiuhetondikuai&contractsignplotsid=${contractsp.contractsignplotsid}')" />
								&emsp;
								<input type="image"
									src="${pageContext.request.contextPath}/images/delete.jpg"
									onClick="deldikuai('${contractsp.contractsignplotsid}');" />
							</td>
						</tr>
					</c:forEach>
				</table>
			</fieldset>
		</fieldset>
	
	</body>
</html>
