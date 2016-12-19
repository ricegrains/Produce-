<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/MySelectTag" %>
<html>
  <head>
  <link href="css/mycss.css" rel="stylesheet" type="text/css">  
    <title>My JSP 'alarm.jsp' starting page</title>
  </head>
  <body>
  <form action="../addAlarmServlet" method="post" name="">
   <table border="0" width="100%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
           <h1><center>意见反馈(添加记录)</center></h1>
        </td>
     </tr>
     <tr>
      <td>投诉组织</td>
        <td style="width:500px;height:30px"> 
         	<c:select4 table="Organizations"/>
        </td>
     </tr>
     <tr>
        <td>投诉对象</td>
        <td style="width:500px;height:30px">
         <c:select5 table="Organizations"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	主题
          	<input type="text"  name="topic" style="width:600px;height:30px;font-size=20px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
     <td>反馈内容</td>
        <td>
          	 <textarea id="content1" name="reasonContent" style="width:700px;height:200px;visibility:true;font-size=20px;color=black;text-align=left;scrolling=yes;"></textarea>
        </td>
     </tr>
      <tr>
        <td colspan="2">
          	生产组织
          	<c:select16 table="Organizations"/>
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
           <input type="button" value="删除" name="delete" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
           <a href="../selectAllAlarmServelt">查看历史纪录</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>