<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/MySelectTag" %>
<html>
  <head>
    <title>My JSP 'addBalance.jsp' starting page</title>
  </head>
  
  <body>
     <form action="../addBalanceServlet" method="post" name="form">
   <table border="0" width="108%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td>
           <h1><center>投入品结算(添加记录)</center></h1>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
        <td> 
         	合同编号<c:select15 table="Contract"/>
        </td>
     </tr>
     <tr>
        <td> 
         	销售金额<input type="text" name="SalesMoney" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                        领用金额<input type="text" name="GetInputMoney" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
      <tr>
        <td>
                       备注<input type="text" name="Note" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr align="center">
        <td colspan="2">
          <input type="submit" value="确定" name="comfirm" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
          <input type="button" value="查看" name="look" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp;&nbsp;
          <a href="../selectBalanceServlet">查看历史记录</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
