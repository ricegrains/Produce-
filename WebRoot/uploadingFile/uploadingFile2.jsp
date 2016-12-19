<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/MySelectTag" %>
<html>
  <head>
  <link href="css/mycss.css" rel="stylesheet" type="text/css">  
    <title>My JSP 'uploadingFile.jsp' starting page</title>
  </head>
  <body>
  <form action="../uploadingFileServlet2" method="post" name="form2" enctype="multipart/form-data">
   <table border="0" width="100%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
           <h1><center>检测报表(添加记录)</center></h1>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
      <td>接收部门</td>
        <td> 
         	<c:select table="Organizations"/>
        </td>
     </tr>
     <tr>
        <td>上传部门</td>
        <td style="width:500px;height:50px">
         	<c:select3 table="Organizations"/>
        </td>
     </tr>
     <tr>
         <td>报表类型</td>
        <td style="width:500px;height:50px">		  
       		 <c:select2 table="OrgType"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	主题
          	<input type="text"  name="topic" style="width:600px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
     <td>上传报表</td>
        <td>
            <input type="text"  name="fileName" style="width:300px;height:30px;font-size=15px;color=blue;text-align=right">
          	 <input type="file" name="uploadingFile" style="height:30px;width:350px;">
        </td>
     </tr>
     <tr>
        <td colspan="2">
          	说明
          	<input type="text"  name="note" style="width:600px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr align="center">
        <td colspan="2">
          <input type="submit" value="确定" name="comfirm" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
           <input type="reset" value="重置" name="delete" style="height:30px;width:200px;font-size:20px;color=red"/>
            &nbsp; &nbsp; &nbsp; &nbsp;
            <a href="../selectAllReportsServlet2">查看历史记录</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
