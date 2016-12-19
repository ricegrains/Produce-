<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'a.jsp' starting page</title>
    

  </head>
 
  <body>
   <c:if test="${guanli==null}">
   <script>
          alert("对不起，您不能进入此页面，只供管理员进入，谢谢！！！");
   </script>
   </c:if>
    hello
  </body>
</html>
