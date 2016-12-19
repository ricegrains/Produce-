<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/MySelectTag" %>
<html>
  <head>
  <link href="css/mycss.css" rel="stylesheet" type="text/css">  
    <title>My JSP 'traceNumber' starting page</title>
  </head>
  <body>
  <form action="../addTraceNumberServlet" method="post" name="frm">
   <table border="0" width="100%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
           <h1><center>追溯码(添加记录)</center></h1>
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	追溯码
          	<input name="traceNumber" type="text" style="width:600px;height:30px;font-size=20px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	备注
          	<input name="note" type="text" style="width:600px;height:30px;font-size=20px;color=blue;text-align=right">
        </td>
     </tr>
     <tr align="center">
        <td colspan="2">
          <input type="submit" value="确定" name="comfirm" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
           <input type="reset" value="重置" name="delete" style="height:30px;width:200px;font-size:20px;color=red"/>
            &nbsp; &nbsp; &nbsp; &nbsp;
            <a href="../selectAllTraceNumberServlet">查看历史纪录</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
