<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>

 <frameset rows="80,*" frameborder="0" border="0" framespacing="0" cols="*">
  <frame name="top" scrolling="NO" noresize src="top.jsp">
		<frameset cols="20%,*" frameborder="0" border="0" framespacing="0" rows="*" scrolling="NO" name="mleft">
			<frame src="menu.jsp" frameborder=NO border="0" scrolling="NO">
			<frameset rows="30,100%,*" name="content" frameborder="1" framespacing="1" cols="*">
				<frame src="title.jsp" frameborder=0 noresize scrolling="NO" name="mtitle">
				<frame src="b.jsp" frameborder=0 name="main" marginwidth="0" marginheight="0" scrolling="YES">
				<frame src="" frameborder=0 name="detail">
			</frameset>
		</frameset>
	</frameset>
</html>
