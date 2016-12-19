<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="script/style.css" type="text/css">
</head>
<script>
function hidemenu(){
	if(parent.menuState == 0){
		parent.menuState = 1;
		parent.mleft.cols='*,100%';
		parent.mtitle.location.reload();
	}else{
			parent.menuState = 0;	
	}
}
</script>
<body bgcolor="#66CC66" text="#000000">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
  <tr valign="bottom" align="right"> 
    <td colspan="3" height="40" bgcolor="#66CC66"><a href="#" onclick="hidemenu()"><font color="black">导航菜单</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/lefticon.gif" border=0 alt="隐藏菜单列表"></a>&nbsp;</td>
  </tr>
  <tr> 
    <td width="1"></td>
    <td width="96%"><IFRAME  name="LIST" WIDTH="100%" HEIGHT="90%" MARGINWIDTH=0 MARGINHEIGHT=0 HSPACE=0 VSPACE=0 FRAMEBORDER=0 SCROLLING=auto BORDERCOLOR="#000000" SRC="Left.jsp"> 
      </IFRAME></td>
    <td width="3"></td>
  </tr>
</table>
</body>
</html>


