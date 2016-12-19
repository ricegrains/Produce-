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
					&nbsp;&nbsp;销售管理&gt;&gt;供销管理
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
		  <legend>基本信息</legend>
			<TABLE cellSpacing=0 cellPadding=0 width="90%" height="60%"   align=center border=0 bgcolor="#deeaf8">
				<tr style="height: 8">
				  <td align="right">销售物品：</td>
				  <td align="left">
				  	<my:soil tablename="Objects" columnname="ObjectName" id="ObjectID"/>
				  </td>
				  <td align="right">客户：</td>
				  <td align="left">
				  	<input  type="text"  name="" value="?"  size="10"/>
				  </td>
				   <td align="right">承包户：</td>
				   <td align="left">
				  	<my:soil tablename="Contractors" columnname="Name" id="IdentityID"/>
				  </td>
				   <td align="right">地块编号:</td>
				   <td align="left">
				   	<my:soil tablename="ContractSignPlots" columnname="PlotType" id="ContractSignPlotsID"/>
				   </td>
				</tr>
				<tr style="height: 8">
				  <td align="right">销售类型：</td>
				  <td align="left">
				  	<input  type="radio" name="type" value="1" checked/>销售
	                 <input  type="radio" name="type" value="2" />退货
				  </td>
				  <td align="right">销售时间：</td>
				  <td align="left"><input  type="text"   name=""   size="10"/></td>
	              <td align="right">操作人：</td> 
	              <td align="left"><input  type="text"   name=""  size="10"/></td>  
	              <td align="right">产品批次：</td>
				  <td align="left"><input  type="text"   name=""  value="召回时用"  size="10" /></td>
				</tr>
				<tr style="height: 8">
				   <td align="right">数量(kg)：</td>
				  <td align="left"><input  type="text"   name="" size="10"/></td>
	              <td align="right">规格：</td> 
	              <td align="left"><input  type="text"   name=""  size="10"/></td>  
	               <td align="right">单位：</td>
				  <td align="left"><input  type="text"   name=""  size="10"/></td>
	              <td align="right">单价：</td> 
	              <td><input  type="text"   name=""  size="10"/></td>  
	             
				</tr>
				<tr style="height: 8">
				 <td align="right">召回状态：</td>
	              <td align="left">
	              		<input  type="radio" name="Note" value="1" checked/>正常
	                  <input  type="radio" name="Note" value="2" />已召回
	            </td> 
				 <td align="right">备注：</td>
	              <td align="left"><textarea name="" rows="2" cols="10"></textarea></td>
				</tr>
			   <tr>
			    <td colspan="7" align="right">
			     <input  type="submit" value="添加信息"/>
			     <a href="#" onclick="display(1);">查看信息</a>
			    </td>
			   </tr>
			</TABLE>
		</fieldset>
		<div style="height: 20"></div>
		<div id="show1"  style="DISPLAY: none">
		<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0 bgcolor="#deeaf8">
			<tr>
			  <td>销售物品</td>
			  <td>客户</td>
			  <td>承包户</td>
			  <td>地块编号</td>
			  <td>销售类型</td>
			  <td>销售时间</td>
              <td>操作人</td> 
              <td>产品批次</td>
			  <td>数量(kg)</td>
	          <td>规格</td> 
	          <td>单位</td>
	          <td>单价</td> 
	          <td>召回状态</td>
	          <td>备注</td>
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