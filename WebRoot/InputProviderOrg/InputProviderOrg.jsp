<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="/MySelectTag" %>
<html>
  <head>
    <title>My JSP 'InputProviderOrg.jsp' starting page</title>
  </head> 
  <body>
     <form action="../addInputProviderOrgSevlet" method="post" name="form">
   <table border="0" width="108%" height="100%">
     <tr>
        <td colspan="2" align="right">
          <input type="submit" value="用户切换" style="width=100px;font-size=20px;width=200px;color=blue"/>
          <input type="submit" value="退出系统" style="width=100px;font-size=20px;width=200px;color=blue"/>
        </td>
     </tr>
     <tr>
        <td colspan="2">
           <h1><center>投入品供应组织(添加记录)</center></h1>
        </td>
     </tr>
     <tr  style="width:500px;height:50px">
        <td> 
         	组织编号<c:select18 table="Organizations"/>
        </td>
        <td>
                             备案编号<input type="text" name="RecordCode" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td> 
         	 生产批准书证号<input type="text" name="ProduceLicenseID" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                             生产批准书期限日期<input type="text" name="ProduceLicenseExpire" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td> 
         	生产批准书电子版 + 存路径<input type="text" name="ProduceLicense" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                            经营许可证号<input type="text" name="SellLicenseID" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
       <td> 
         	经营许可证期限日期<input type="text" name="SellLicenseExpire" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                            经营许可证电子版<input type="text" name="SellLicense" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
     <td> 
                       农药许可证号<input type="text" name="PesticideLicenseID" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                          农药许可证期限日期<input type="text" name="PesticideLicenseExpire" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                        农药许可证号<input type="text" name="PesticideLicense" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                          备案有效期<input type="text" name="FileExpire" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
      <tr>
        <td>
                       化学危险品许可证号<input type="text" name="DangerousLicenseID" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                          化学危险品许可证期限日期<input type="text" name="DangerousLicenseExpire" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
      <tr>
        <td>
                       化学危险品可证号<input type="text" name="DangerousLicense" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                         营业执照证号<input type="text" name="BusinessLicenseID" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                      营业执照期限日期<input type="text" name="BusinessLicenseExpire" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                         营业执照电子版<input type="text" name="BusinessLicense" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
     </tr>
     <tr>
        <td>
                       备案日期<input type="text" name="RecordDate" style="width:250px;height:30px;font-size=15px;color=blue;text-align=right">
        </td>
        <td>
                         信用级别(合格/不合格) <c:select12 table="SubTypeSet"/>
        </td>
     </tr>
     <tr>
       <td colspan="2">
          	备注 <input type="text" name="Note" style="width:650px;height:30px;font-size=15px;color=blue;text-align=right">
       </td>
     </tr>
     <tr align="center">
        <td colspan="2">
          <input type="submit" value="提交" name="comfirm" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
          <input type="reset" value="重置" name="look" style="height:30px;width:200px;font-size:20px;color=red"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
          <a href="../selectInputProviderOrgServelt">查看历史纪录</a>
        </td>
     </tr>
   </table>
   </form>
  </body>
</html>
