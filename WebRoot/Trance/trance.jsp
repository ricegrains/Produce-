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
          <input type="submit" value="�û��л�" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="�˳�ϵͳ" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
           <h1><center>׷�ݼ�¼(��Ӽ�¼)</center></h1>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
      <td>׷����ID</td>
        <td> 
         	<c:select6 table="TraceNumber"/>
        </td>
     </tr>
     <tr>
        <td>������֯</td>
        <td style="width:500px;height:50px">
         	<c:select11 table="InputPurchase"/>
        </td>
     </tr>
     <tr>
         <td>������Ʒ</td>
        <td style="width:500px;height:50px">		  
       		 <c:select10 table="Objects"/>
        </td>
     </tr>
     <tr>
         <td>�ͻ�</td>
        <td style="width:500px;height:50px">		  
       		 <c:select8 table="ProduceSell"/>
        </td>
     </tr>
    <tr>
         <td>�а������</td>
        <td style="width:500px;height:50px">		  
       		 <c:select9 table="ProduceSell"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	��ע
          	<input type="text"  name="note" style="width:600px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr align="center">
        <td colspan="2">
          <input type="submit" value="ȷ��" name="comfirm" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
          <input type="button" value="ɾ��" name="look" style="height:30px;width:200px;font-size:20px;color=red"/>
          &nbsp; &nbsp; &nbsp; &nbsp;
          <a href="../selectAllTraceServelt">�鿴��ʷ��¼</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
