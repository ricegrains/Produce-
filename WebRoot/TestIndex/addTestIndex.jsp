<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/MySelectTag"%>
<html>
  <head>
    <title>My JSP 'addTestIndex.jsp' starting page</title>
  </head>
  <body>
    <form action="../addTestIndexServelt" method="post" name="form">
   <table border="0" width="108%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td>
           <h1><center>检测指标</center></h1>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
        <td> 
         	数据编号<c:select12 table="SubTypeset"/>
        </td>
     </tr>
     <tr>
        <td> 
         	指标名称<input type="text" name="TestIndexName" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                       检测标准<input type="text" name="Criterion" style="width:450px;height:30px;font-size=15px;color=blue;text-align=right">
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
           <input type="button" value="删除" name="delete" style="height:30px;width:200px;font-size:20px;color=red"/>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
