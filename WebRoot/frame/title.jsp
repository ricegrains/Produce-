<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<HTML>
<HEAD >
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
   <LINK href="script/style.css" type=text/css rel=stylesheet>
<SCRIPT type="text/JavaScript">
function frameCtrl(para){
	parent.parent.content.rows=para;
}
function dispmenu(){
	if(parent.menuState == 1){
		parent.menuState = 0;
		parent.mleft.cols='20%,*';
		}else{
			parent.menuState = 1;	
		}
	parent.mtitle.location.reload();
}
  

function Check(){
	  window.parent.close();
}

</script>
<META content="MSHTML 6.00.2600.0" name=GENERATOR>
</HEAD>
<BODY  class="easyui-layout" style="overflow-y: hidden" bgColor=#66CC66 leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">

<table cellspacing=0 cellpadding=0 width="100%" border=0 class="header" height="20">
  <tbody> 
  <tr bgcolor="#66CC66"> 
    <td valign=middle noWrap width="98%" bgcolor="#66CC66">
			<script>
			if(parent.menuState==1){
				document.write("<a href=\"#\" onclick=\"dispmenu()\"><img src=\"../images/righticon.gif\" border =0 ></a>");
			}
			</script>
    </td>
      <td valign=middle noWrap width="2%" bgcolor="#66CC66">

   		${empid} 欢迎你！
       
        <a href='javascript:void(0);' style="font-size:15px;color: black" onclick="Check();">安全退出</a>
	
		<a href="#" onclick="frameCtrl('20,*,100%')"><img src="../images/upcoin.gif" border=0 alt="显示前页"></a>

    	<a href="#" onclick="frameCtrl('20,100%,*')"><img src="../images/downcoin.gif" border=0 alt="显示后页"></a>
    	&nbsp;
    	<a href="#" onclick="frameCtrl('20,50%,*')"><img src="../images/splitcoin.gif" border=0 alt="后退"></a>
    	&nbsp;
    </td>
  </tr>
  </tbody> 
</table>

</BODY>
</HTML>
