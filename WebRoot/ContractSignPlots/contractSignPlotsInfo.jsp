<%@ page language="java" import="java.util.*" pageEncoding="GBK"
	isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>�а���ͬ�ؿ���Ϣ</title>
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
    		var bln = confirm("�Ƿ�ɾ����ͬ�ؿ���Ϊ����"+contractsignplotsid+"���ĵؿ���Ϣ��");
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
            alert("���ҵ��Ӽ�¼������ɾ��");
       </script>
    </c:if>
		<font color="blue" style="font-size: 18px; font: bold;">�а�������&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		<font color="red" style="font-size: 22px; font: bold;">
			�а���ͬ�ؿ���Ϣ</font>

		<c:if test="${empInfo.duty!='����Ա'}">
			<br>
			<br>

			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>�а�����Ϣ</font>
				</legend>
				<center>
					<table cellspacing="1" cellpadding="0" border="0"
						style="width: 80%; color: blue">
						<tr height="26" style="font-size: 18px;">
							<th>
								�а�������
							</th>
							<td>
								<input name="name" value="${user.name}" readonly width="20px" />
							</td>
							<th>
								��֯����
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
								���֤��
							</th>
							<td>
								<input name="identityid" value="${user.identityid}" readonly />
							</td>
						</tr>
						<tr height="26" style="font-size: 19px;">
							<th>
								��ϵ�绰
							</th>
							<td>
								<input name="telephone" value="${user.telephone}" readonly />
							</td>
							<th>
								��ַ
							</th>
							<td>
								<input name="address" value="${user.address}" readonly />
							</td>
							<th>
								��ע
							</th>
							<td>
								<textarea rows="2" cols="17" readonly name="note">${user.note}</textarea>
							</td>
						</tr>
					</table>
				</center>
			</fieldset>
		</c:if>
		<c:if test="${empInfo.duty=='����Ա'}">

			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>�а�����Ϣ</font>
				</legend>
				<center>
					<table cellspacing="1" cellpadding="0" border="0"
						style="width: 80%; color: blue">
						<tr height="26" style="font-size: 18px;">
							<th>
								ѡ��а������
							</th>
							<td>
								<select name="allInternalId" onchange="getInfo(this.value);">
									<option value="">
										��ѡ��а������
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
								�а������
							</th>
							<td>
								<input name="internalid"
									value="${selectContractorInfo.identityid}" readonly />
							</td>
						</tr>
						<tr height="26" style="font-size: 18px;">
							<th>
								�а�������
							</th>
							<td>
								<input name="name" value="${selectContractorInfo.name}" readonly />
							</td>
							<th>
								��֯����
							</th>
							<td>
								<c:forEach items="${org}" var="org">
									<c:if test="${selectContractorInfo.belongOrgID==org.orgid}">
										<input name="belongOrgID" value="${org.orgname}" readonly />
									</c:if>
								</c:forEach>
							</td>
							<th>
								���֤��
							</th>
							<td>
								<input name="identityid"
									value="${selectContractorInfo.identityid}" readonly />
							</td>
						</tr>
						<tr height="26" style="font-size: 19px;">
							<th>
								��ϵ�绰
							</th>
							<td>
								<input name="telephone"
									value="${selectContractorInfo.telephone}" readonly />
							</td>
							<th>
								��ַ
							</th>
							<td>
								<input name="address" value="${selectContractorInfo.address}"
									readonly />
							</td>
							<th>
								��ע
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
				<font color=red>�а�����ͬ�ؿ���Ϣ</font>
			</legend>
			<center>
				<table cellspacing="1" cellpadding="0" border="0"
					style="width: 80%; color: blue">
					<tr height="26" style="font-size: 18px;">
						<th>
							ѡ���ͬ���
						</th>
						<td>
							<select name="contractid"
								onchange="getAllInfo(this.value,${selectContractorInfo.identityid});">
								<option value="">
									��ѡ���ͬ���
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
							��ͬ���
						</th>
						<td>
							<input name="contractid" value="${contractmodel.contractid}"
								readonly />
						</td>
						<th>
							��׼���
						</th>
						<td>
							<input value="${contractmodel.contractcode }" readonly />
						</td>
					</tr>
					<tr height="26" style="font-size: 18px;">
						<th>
							��ֲ��ֳ����
						</th>
						<td>
							<c:forEach items="${typesets}" var="typeset">
								<c:if test="${contractmodel.typeid==typeset.typeid}">
									<input value="${typeset.typename}" readonly />
								</c:if>
							</c:forEach>
						</td>
						<th>
							ǩ������
						</th>
						<td>
							<input value="${contractmodel.signtime }" readonly />
						</td>
						<th>
							��Ч����
						</th>
						<td>
							<input value="${contractmodel.effectivedate }" readonly />
						</td>
					</tr>
					<tr height="26" style="font-size: 19px;">
						<th>
							��ֹ����
						</th>
						<td>
							<input value="${contractmodel.expiredate }" readonly />
						</td>
						<th>
							���
						</th>
						<td>
							<input value="${contractmodel.moneyamount }" readonly />
						</td>
						<th>
							�а�Ķ��
						</th>
						<td>
							<input value="${contractmodel.area }" readonly />
						</td>
					</tr>
					<tr height="26" style="font-size: 19px;">
						<th>
							�ɷѽ�ֹ����
						</th>
						<td>
							<input value="${contractmodel.duedate }" readonly />
						</td>
						<th>
							����Ƿ�ѽ��
						</th>
						<td>
							<input value="${contractmodel.arrearage }" readonly />
						</td>
						<th>
							��ע
						</th>
						<td>
							<input value="${contractmodel.note }" readonly />
						</td>
					</tr>
				</table>
			</center>
			
			<fieldset style="font-size: 19px; font: bold;">
				<legend>
					<font color=red>��ͬ�ؿ���Ϣ</font>
				</legend>
				<span style="float: left;"><input type="image"
						src="${pageContext.request.contextPath}/images/addContractSignPlots.jpg"
						onclick="javascript:void(location.href='ContractSignPlots/addSign.jsp');" />
				</span>
                &nbsp;&nbsp;&nbsp;<span style="font-size: 19px; font: bold;float: right;"><a
								href="${pageContext.request.contextPath}/ServletPage?method=chakansuoyou&id=${contractid}">�鿴���еؿ���Ϣ</a></span>
                <br><br>
				<table cellspacing="1" cellpadding="0" border="0"
					style="width: 100%; background-color: #99CC99;">
					<tr bgcolor="#99DDFF" height="26"
						style="color: blue; font-size: 19px;">
						<th width="70">
							��ͬ�ؿ���
						</th>
						<th width="70">
							��ͬ���
						</th>
						<th width="80">
							�ؿ���
						</th>
						<th width="80">
							�ؿ����
						</th>
						<th width="100">
							�ؿ�λ��
						</th>
						<th width="100">
							�ؿ�����
						</th>
						<th width="100">
							�������
						</th>
						<th width="160">
							��ע
						</th>
						<th width="160">
							����
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
