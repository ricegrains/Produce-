<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>

<html >
<head >
    <title>农产品追溯系统</title>
    <link href="script/alogin.css" rel="stylesheet" type="text/css" />
	<script >
		function onstart(){
			var nn = document.getElementById("validateCodeValue");
		 
			var date = new Date();
			var m =date.getMinutes();
			var s =date.getSeconds();
			var f =(99%s)+1;
		    nn.style.display='inline';
			nn.innerHTML=''+f+m+s;
		}
		function loginCheck(){
			var bln = true;
			var empid = document.getElementById("empid");
			var password = document.getElementById("password");
			var validateCode = document.getElementById("validateCode");
			var validateCodeValue = document.getElementById("validateCodeValue");
			
			if(empid.value==''){
				alert("请输入账号！",'warning');
				bln = false;
			}else{
				if(password.value==''){
					alert("请输入密码！",'warning');
					bln=false;
				}else{
					if(validateCode.value==''){
						alert("请输入验证码！");
						bln=false;
					}
				}
			}
			if(bln==true){
				if(validateCode.value==validateCodeValue.innerHTML){
					location.href="LoginCheck?empid="+empid.value+"&password="+password.value;
				}else{
					alert("验证码输入有误，请重新输入！",'warning');
					var date = new Date();
					var m =date.getMinutes();
					var s =date.getSeconds();
					var f =(99%s)+1;
					validateCodeValue.innerHTML=''+f+m+s;
				}
			}
		}
		
		 function showPasswordError(){
			 alert("密码有误，请重新输入！",'warning');
		 }
	</script>
</head>
<body bgcolor="#009900">
<br>
<br>
<br>
<center>
    <div class="Main">
        <ul>
            <li class="top"></li>
            <li class="top2"></li>
            <li class="topA"></li>
            <li class="topB">
            <span>
                <img src="images/welcome.gif" alt="" style="" />
            </span>
            </li>
            <li class="topC"></li>
            <li class="topD">
			<br>
                <ul class="login">
                    <li>
                    	<span class="left"><font color=black>帐号：</font></span> 

                    	<span style="left"> <input name="empid" type="text" class="txt" value="100"/> </span>
                    </li>
                    <li>
                    	<span class="left"><font color=black>密  码：</font></span> 
                    	<span style="left"><input name="password" type="password" class="txt" value="123"/></span>
                    </li>
                     <li>
                     	<span class="left"><font color=black>验证码：</font></span> 
						<input id="validateCode" type="text" class="txtCode" onfocus="onstart();"/>
					    <span style="display: none;color: red;background-image:url('images/login/VerifyCode.jpg');" id="validateCodeValue" ></span>
                    </li>
                </ul>
            </li>
            <li class="topE"></li>
            <li class="middle_A"></li>
            <li class="middle_B"></li>
            <li class="middle_C">
            <span class="btn">
	               <input type="image" src="images/btnlogin.gif" onclick="loginCheck();"/>
            </span>
            </li>
            <li class="middle_D"></li>
            <li class="bottom_A"></li>
            <li class="bottom_B">
            
            </li>
        </ul>
    </div>
  
	     </center>
</body>
</html>
