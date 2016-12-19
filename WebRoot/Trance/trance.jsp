<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib prefix="c" uri="/MySelectTag" %>
<html>
  <head>
  <link href="css/mycss.css" rel="stylesheet" type="text/css">  
    <title>My JSP 'trance.jsp' starting page</title>
  </head>
  <body>
  <form action="../addTranceServlet" method="post" name="form1">
   <table border="0" width="100%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
           <h1><center>追溯记录(添加记录)</center></h1>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
      <td>追溯码ID</td>
        <td> 
         	<c:select6 table="TraceNumber"/>
        </td>
     </tr>
     <tr>
        <td>生产组织</td>
        <td style="width:500px;height:50px">
         	<c:select11 table="InputPurchase"/>
        </td>
     </tr>
     <tr>
         <td>销售物品</td>
        <td style="width:500px;height:50px">		  
       		 <c:select10 table="Objects"/>
        </td>
     </tr>
     <tr>
         <td>客户</td>
        <td style="width:500px;height:50px">		  
       		 <c:select8 table="ProduceSell"/>
        </td>
     </tr>
    <tr>
         <td>承包户编号</td>
        <td style="width:500px;height:50px">		  
       		 <c:select9 table="ProduceSell"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	备注
          	<input type="text"  name="note" style="width:600px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr align="center">
        <td colspan="2">
          <input type="submit" value="确定" name="comfirm" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
          <input type="button" value="删除" name="look" style="height:30px;width:200px;font-size:20px;color=red"/>
          &nbsp; &nbsp; &nbsp; &nbsp;
          <a href="../selectAllTraceServelt">查看历史纪录</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
