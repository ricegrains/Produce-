<%@ page contentType="text/html; charset=gbk" language="java"%>
<%@ taglib prefix="my" uri="/MySelectTag"%>
<HTML>
	<HEAD>
		<script src="../js/menu.js" type="text/javascript"></script>
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		
	</HEAD>
	<BODY>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
			<TR height=28>
				<TD background=images/title_bg1.jpg >
					&nbsp;&nbsp;���۹���&gt;&gt;��������
				</TD>
			</TR>
			<TR>
				<TD bgColor=#b1ceef height=1></TD>
			</TR>
			<TR height=20>
				<TD background=images/shadow_bg.jpg></TD>
			</TR>
		</TABLE>
		<fieldset>
		  <legend>������Ϣ</legend>
			<TABLE cellSpacing=0 cellPadding=0 width="90%" height="60%"   align=center border=0 bgcolor="#deeaf8">
				<tr style="height: 8">
				  <td align="right">������Ʒ��</td>
				  <td align="left">
				  	<my:soil tablename="Objects" columnname="ObjectName" id="ObjectID"/>
				  </td>
				  <td align="right">�ͻ���</td>
				  <td align="left">
				  	<input  type="text"  name="" value="?"  size="10"/>
				  </td>
				   <td align="right">�а�����</td>
				   <td align="left">
				  	<my:soil tablename="Contractors" columnname="Name" id="IdentityID"/>
				  </td>
				   <td align="right">�ؿ���:</td>
				   <td align="left">
				   	<my:soil tablename="ContractSignPlots" columnname="PlotType" id="ContractSignPlotsID"/>
				   </td>
				</tr>
				<tr style="height: 8">
				  <td align="right">�������ͣ�</td>
				  <td align="left">
				  	<input  type="radio" name="type" value="1" checked/>����
	                 <input  type="radio" name="type" value="2" />�˻�
				  </td>
				  <td align="right">����ʱ�䣺</td>
				  <td align="left"><input  type="text"   name=""   size="10"/></td>
	              <td align="right">�����ˣ�</td> 
	              <td align="left"><input  type="text"   name=""  size="10"/></td>  
	              <td align="right">��Ʒ���Σ�</td>
				  <td align="left"><input  type="text"   name=""  value="�ٻ�ʱ��"  size="10" /></td>
				</tr>
				<tr style="height: 8">
				   <td align="right">����(kg)��</td>
				  <td align="left"><input  type="text"   name="" size="10"/></td>
	              <td align="right">���</td> 
	              <td align="left"><input  type="text"   name=""  size="10"/></td>  
	               <td align="right">��λ��</td>
				  <td align="left"><input  type="text"   name=""  size="10"/></td>
	              <td align="right">���ۣ�</td> 
	              <td><input  type="text"   name=""  size="10"/></td>  
	             
				</tr>
				<tr style="height: 8">
				 <td align="right">�ٻ�״̬��</td>
	              <td align="left">
	              		<input  type="radio" name="Note" value="1" checked/>����
	                  <input  type="radio" name="Note" value="2" />���ٻ�
	            </td> 
				 <td align="right">��ע��</td>
	              <td align="left"><textarea name="" rows="2" cols="10"></textarea></td>
				</tr>
			   <tr>
			    <td colspan="7" align="right">
			     <input  type="submit" value="�����Ϣ"/>
			     <a href="#" onclick="display(1);">�鿴��Ϣ</a>
			    </td>
			   </tr>
			</TABLE>
		</fieldset>
		<div style="height: 20"></div>
		<div id="show1"  style="DISPLAY: none">
		<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0 bgcolor="#deeaf8">
			<tr>
			  <td>������Ʒ</td>
			  <td>�ͻ�</td>
			  <td>�а���</td>
			  <td>�ؿ���</td>
			  <td>��������</td>
			  <td>����ʱ��</td>
              <td>������</td> 
              <td>��Ʒ����</td>
			  <td>����(kg)</td>
	          <td>���</td> 
	          <td>��λ</td>
	          <td>����</td> 
	          <td>�ٻ�״̬</td>
	          <td>��ע</td>
	        </tr>
		   <tr>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		      <td></td>
		   </tr>
		</TABLE>
		</div>
	</BODY>
</HTML>