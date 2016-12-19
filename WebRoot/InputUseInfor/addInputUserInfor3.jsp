<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/MySelectTag" %>
<html>
  <head> 
    <title>My JSP 'addInputUserInfor3.jsp' starting page</title>
  </head>
  
  <body>
    <form action="../addInputUserInforServlet2" method="post" name="form">
   <table border="0" width="108%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td>
           <h1><center>投入品退货(添加记录)</center></h1>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
        <td> 
         	供货商<c:select table="Organizations"/>
        </td>
     </tr>
     <tr>
        <td> 
         	 信用<c:select12 table="SubTypeSet"/>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
        <td> 
         	使用编号<c:select13 table="Balance"/>
        </td>
     </tr>
     <tr>
        <td> 
         	 操作日期<input type="text" name="OperateTime" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                         批次号<input type="text" name="BatchID" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                          使用物品<c:select10 table="Objects"/>
        </td>
     </tr>
      <tr>
        <td>
                      规格<input type="text" name="MaterialTypeName" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                        使用数量<input type="text" name="Quantity" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                         单位<c:select12 table="SubTypeSet"/>
        </td>
     </tr>
      <tr>
        <td>
                        单价<input type="text" name="Price" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
      <tr>
        <td>
                        总额<input type="text" name="AmountMoney" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
      <tr>
        <td>
                        结算状态<input type="text" name="BalanceState " style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
      <tr>
        <td>
                       发货人<input type="text" name="SendPersion" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
      <tr>
        <td>
                      接收人<input type="text" name="AcceptPersion" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
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
           &nbsp; &nbsp; &nbsp; &nbsp;
          <a href="../selectAllInputUseServelt3">查看历史纪录</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
