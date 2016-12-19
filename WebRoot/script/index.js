		function onstart(){
			alert("ddddddddd");
			var date = new Date();
			var m =date.getMinutes();
			var s =date.getSeconds();
			var f =(99%s)+1;

			var validateCodeValue = document.getElementById("validateCodeValue");
			validateCodeValue.innerHLML=''+f+m+s;
		}
		function showValidateCode(){
			document.getElementById("validateCodeValue").style.display='block';
		}
		function loginCheck(){
			var bln = true;
			var empid = document.getElementById("empid");
			var password = document.getElementById("password");
			var validateCode = document.getElementById("validateCode");
			var validateCodeValue = document.getElementById("validateCodeValue");
			alert(validateCodeValue)
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