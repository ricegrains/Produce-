<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/MySelectTag" %>
<html>
  <head>
    <title>My JSP 'addInputProviderBuyAndSell.jsp' starting page</title>
  </head>
  
  <body>
   <form action="../addInputProviderBuyAndSell" method="post" name="form1">
   <table border="0" width="100%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
           <h1><center>投入品采购单(添加记录)</center></h1>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
      
        <td colspan="2"> 
           	 投入品供应商
         	<c:select table="Organizations"/>
        </td>
     </tr>
     <tr>
        <td  colspan="2">
         	年份
         	<input type="text" name="Year" style="width:400px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td style="width:500px;height:50px" colspan="2">
            	 物品		  
       		 <c:select12 table="SubTypeSet"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	买入的商品 
          	<input type="text" name="Buy" style="width:600px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td colspan="2">
                             卖出的商品
          	  <input type="text" name="Sell" style="width:600px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	备注
          	<input type="text"  name="Note" style="width:600px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr align="center">
        <td colspan="2">
          <input type="submit" value="确定" name="comfirm" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
          <input type="reset" value="重置" name="look" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
          <a href="../selectInputProviderBuyServelt">查看历史纪录</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
