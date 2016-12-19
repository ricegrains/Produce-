<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>Top.jsp</title>
		<SCRIPT LANGUAGE="JavaScript" src="../script/AdminTree.js"></script>
		<link rel="stylesheet" href="../script/toc.css" type="text/css"></link>
	</head>
	<body onload="init()" topmargin="0" leftmargin="0" rightmargin="0">
		<div class="frist" ID="head1Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head1");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				承包户管理
			</a><br>
		</div>
		<div CLASS="second" ID='head1Child'>
			<br>
			<A href=".././ServletPage?method=ziliao" id=ttt target=main onclick="doClick()"><img src="../image/star.png" border="0"/>承包户资料</a><br><br>
			<A href=".././ServletPage?method=heton" id=ttt target=main><img src="../image/star.png" border="0"/>合同管理</a><br><br>
			<A href=".././ServletPage?method=laodong" id=ttt target=main><img src="../image/star.png" border="0"/>劳动力管理</a><br><br>
			<A href=".././ServletPage?method=dikuai" id=ttt target=main><img src="../image/star.png" border="0"/>地块信息</a><br><br>
			<A href="" id=ttt target=main><img src="../image/star.png" border="0"/>农产品销售</a><br><br>
			<A href="" id=ttt target=main><img src="../image/star.png" border="0"/>费用结算</a><br><br>
		</div>
		
		<div class="frist" ID="head2Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head2");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				投入品管理
			</a><br>
		</div>
		<div CLASS="second" ID='head2Child'><br>
			<A href="../InputProviderOrg/InputProviderOrg.jsp" id=ttt target="main"><img src="../image/star.png" border="0"/>投入品组织</a><br><br>
			<A href="../InputProviderBuyAndSell/addInputProviderBuyAndSell.jsp" id=ttt target=main><img src="../image/star.png" border="0"/>投入品采购</a><br><br>
			<A href="../InputUseInfor/addInputUserInfor.jsp" id=ttt target=main><img src="../image/star.png" border="0"/>投入品使用</a><br><br>
			<A href="../InputUseInfor/addInputUserInfor3.jsp" id=ttt target=main><img src="../image/star.png" border="0"/>投入品退货</a><br><br>
			<A href="../Balance/addBalance.jsp" id=ttt target=main><img src="../image/star.png" border="0"/>投入品结算</a><br><br>
			<A href="../Alarm/Alarm.jsp" id=ttt target=main><img src="../image/star.png" border="0"/>意见反馈</a><br><br>
		</div>
		
		<div class="frist" ID="head3Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head3");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				种植管理
			</a><br>
		</div>
		<div CLASS="second" ID='head3Child'><br>
			<A href=".././Group?method=zonzixinxi" id=ttt target="main"><img src="../image/star.png" border="0"/>种植信息</a><br><br>
			<A href=".././Group?method=plantlog" id=ttt target=main><img src="../image/star.png" border="0"/>种植日志</a><br><br>
			<A href=".././Group?method=growcaozuo" id=ttt target=main><img src="../image/star.png" border="0"/>种植操作</a><br><br>
		</div>
		
		<div class="frist" ID="head4Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head4");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				养殖管理
			</a><br>
		</div>
		<div CLASS="second" ID='head4Child'><br>
			<A href="../BreedServlet" id=ttt target="main"><img src="../image/star.png" border="0"/>养殖信息</a><br><br>
			<A href="../BreedLoopServlet" id=ttt target="main"><img src="../image/star.png" border="0"/>循环养殖信息</a><br><br>
			<A href="../PutFryServlet" id=ttt target="main"><img src="../image/star.png" border="0"/>投放鱼苗</a><br><br>
			<A href="../LookLogServlet" id=ttt target=main><img src="../image/star.png" border="0"/>养殖日志</a><br><br>
			<A href="../WorkServlet" id=ttt target=main><img src="../image/star.png" border="0"/>养殖操作(投入品)</a><br><br>
			<A href="../WorkFeiServlet" id=ttt target=main><img src="../image/star.png" border="0"/>养殖操作(非投入品)</a><br><br>
		</div>
		
		<div class="frist" ID="head5Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head5");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				质量安全检测
			</a><br>
		</div>
		<div CLASS="second" ID='head5Child'><br>
			<A href="../TestIndex/addTestIndex.jsp" id=ttt target="main"><img src="../image/star.png" border="0"/>检测指标</a><br><br>
			<A href="../MainTestPlan" id=ttt target=main><img src="../image/star.png" border="0"/>检测计划</a><br><br>
			<A href="../MainTestResult" id=ttt target=main><img src="../image/star.png" border="0"/>检测结果</a><br><br>
		</div>
		
		<div class="frist" ID="head6Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head6");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				销售管理
			</a><br>
		</div>
		<div CLASS="second" ID='head6Child'><br>
			<A href="../Sell/gongxiaoguanli.jsp" id=ttt target="main"><img src="../image/star.png" border="0"/>供销管理</a><br><br>
			<A href="../Sell/MarKet.jsp" id=ttt target="main"><img src="../image/star.png" border="0"/>市场管理</a><br><br>
		</div>		
		
		<div class="frist" ID="head7Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head7");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				工作报表
			</a><br>
		</div>
		<div CLASS="second" ID='head7Child'><br>
			<A href="../WorkReport/ContractorReport.jsp" id=ttt target="main"><img src="../image/star.png" border="0"/>承包户报表</a><br><br>
			<A href="" id=ttt target="main"><img src="../image/star.png" border="0"/>投入品报表</a><br><br>
			<A href="" id=ttt target="main"><img src="../image/star.png" border="0"/>销售报表</a><br><br>
			<A href="../uploadingFile/uploadingFile2.jsp" id=ttt target="main"><img src="../image/star.png" border="0"/>检测报表</a><br><br>
			<A href="../uploadingFile/uploadingFile.jsp" id=ttt target="main"><img src="../image/star.png" border="0"/>上传报表</a><br><br>
		</div>
		
		<div class="frist" ID="head8Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head8");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				统计查询
			</a><br>
		</div>
		<div CLASS="second" ID='head8Child'><br>
			<A href="" id=ttt target="main"><img src="../image/star.png" border="0"/>承包户信息</a><br><br>
			<A href="" id=ttt target=main><img src="../image/star.png" border="0"/>领用查询</a><br><br>
			<A href="" id=ttt target=main><img src="../image/star.png" border="0"/>投入品采购</a><br><br>
			<A href="" id=ttt target=main><img src="../image/star.png" border="0"/>销售查询</a><br><br>
			<A href="../uploadingFile/uploadingFile" id=ttt target=main><img src="../image/star.png" border="0"/>工作报表</a>	<br><br>
		</div>
		
		<div class="frist" ID="head9Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head9");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				安全管理
			</a><br>
		</div>
		<div CLASS="second" ID='head9Child'><br>
			<A href="../MainEmployee" id=ttt target="main"><img src="../image/star.png" border="0"/>用户管理</a><br><br>
			<A href="../MainModule" id=ttt target=main><img src="../image/star.png" border="0"/>系统模块</a><br><br>
			<A href="../MainModuleAuthor" id=ttt target=main><img src="../image/star.png" border="0"/>模块授权</a><br><br>
			<A href="../employee/Password.jsp" id=ttt target=main><img src="../image/star.png" border="0"/>修改密码</a><br><br>
		</div>
		
		<div class="frist" ID="head10Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head10");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				追溯码管理
			</a><br>
		</div>
		<div CLASS="second" ID='head10Child'><br>
			<A href="../TraceNumber/traceNumber.jsp" id=ttt target="main"><img src="../image/star.png" border="0"/>追溯码管理</a><br><br>
			<A href="../Trance/trance.jsp" id=ttt target=main><img src="../image/star.png" border="0"/>追溯记录</a><br><br>
		</div>
		
		<div class="frist" ID="head11Parent">
			<a class=OUTDENT href="" onclick='return expandIt("head11");'>
				<img border=0 name=imEx  src="../image/star1.png" id=ttt/> 
				系统设置
			</a><br>
		</div>
		<div CLASS="second" ID='head11Child'><br>
			<A href="../SubTypeSetAll?type=main" id=ttt target=main><img src="../image/star.png" border="0"/>产业类型</a><br><br>
			<A href="../MainObjects" id=ttt target=main><img src="../image/star.png" border="0"/>农产品</a><br><br>
			<A href="../MainInstrument" id=ttt target="main"><img src="../image/star.png" border="0"/>设备管理</a><br><br>
			<A href=".././ServletPage?method=org" id=ttt target=main><img src="../image/star.png" border="0"/>组织机构</a><br><br>
			<A href="" id=ttt target=main><img src="../image/star.png" border="0"/>监测指标</a><br><br>
			<A href="" id=ttt target=main><img src="../image/star.png" border="0"/>供货商农资市场</a><br><br>
		</div> 
		
	</body>
</html>
