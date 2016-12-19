<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
 <link href="css/mycss.css" rel="stylesheet" type="text/css">  
<title>Insert title here</title>
</head>
   <body>
          <form action="../addMarketServlet" method="post">
            <table border="0" align="center" width="100%",height="100%">
            <tr>
              <td colspan="2">
                 <h1><center>市场管理(添加记录)</center></h1>
              </td>
            </tr>
             <tr>
                   <td>名称:</td>
                   <td><input type="text"name="MarketName" style="width:600px;height:30px;font-size=20px;color=blue;text-align=right"></td>   
             </tr> 
             <tr>   
                     <td>组织编号:</td>     
					 <td><input type="text"name="OrgID" style="width:600px;height:30px;font-size=20px;color=blue;text-align=right"></td>           
              </tr>     
               <tr>
                     <td>所在地:</td>
                     <td><input type="text"name="Location" style="width:600px;height:30px;font-size=20px;color=blue;text-align=right"></td>   
               </tr>
               <tr>
                      <td>备注:</td>   
                     <td><input type="text"name="Note" style="width:600px;height:30px;font-size=20px;color=blue;text-align=right"></td>           
               </tr>                                         
                <tr align="center">
                     <td colspan="2" >
	                     <input type="submit"value="提交" style="height:30px;width:200px;font-size:20px;color=red">
	                       &nbsp; &nbsp; &nbsp; &nbsp;
	                     <input type="reset"value="重置" style="height:30px;width:200px;font-size:20px;color=red">
	                       &nbsp; &nbsp; &nbsp; &nbsp;
	                     <a href="../selectAllMarket">查看历史记录</a>
                     </td>
                  </tr>
             </table>
     </form> 
</body>
</html>