<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>无标题文档</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<script>
        function gettime() {
    var now = new Date();
    var year = now.getFullYear(); //getFullYear getYear
    var month = now.getMonth();
    var date = now.getDate();
    var day = now.getDay();
    var hour = now.getHours();
    var minu = now.getMinutes();
    var sec = now.getSeconds();
    var week;
    month = month + 1;
    if (month < 10) month = "0" + month;
    if (date < 10) date = "0" + date;
    if (hour < 10) hour = "0" + hour;
    if (minu < 10) minu = "0" + minu;
    if (sec < 10) sec = "0" + sec;
    var arr_week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
    week = arr_week[day];
    var time = "";
    time = year + "年" + month + "月" + date + "日" + " " + hour + ":" + minu + ":" + sec + " " + week;
	//$("input[name='time']").attr("value", time);
	document.getElementById("time").value=time;
    var timer = setTimeout("gettime()", 200);
}

</script>
</head>

<body bgcolor="#66CC66" text="#000000" leftMargin=0 rightMargin=0 topMargin=0 onload="gettime();">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td ><img src="../images/logo.jpg" width="285" height="80">  </td>
    <td width="30%" height="50%"><input type="text" name="time" size="30" style="font-size:20px;color:white;background-color: #66CC66;border: 0px;border-color: #0096e1;"></td>
    <td valign="middle"> 
      <table border="0" align="right" cellpadding="0" cellspacing="0" width="100%">

        <tr> 
          <td width="89">
         
		     <a href="mailto:elearning_faq@bjsxt.com">
		        <img src="../images/c3.gif" width="90" border=0 height="25" alt="求助中心">
			 </a>
		  </td>
          <td width="91"><img src="../images/c2.gif" width="90" height="25" alt="系统简介"></td>
          <td width="90"><img src="../images/c1.gif" width="90" height="25" alt="操作手册"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>

