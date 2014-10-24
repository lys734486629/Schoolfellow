<%@ page language="java" pageEncoding="GB2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>校友信息管理系统登录界面</title>
<script language="JavaScript">    
 function checkForm()
	{
		var form = document.form1;
		if(form.username.value=="")
		{
			alert('请填写用户名！');
			form.username.focus();
			return false;
		}
		if(form.password.value=="")
		{
			alert('请填写密码！');
			form.password.focus();
			return false;
		}
		if(form.identity.value=="")
		{
			alert('请选择身份！');
			form.password.focus();
			return false;
		}
		return true;
	}
  
  
</script>
<link rel="shortcut icon" href="/favicon.ico">
	<link rel="stylesheet" type="text/css" href="CSS/login.css" />
    <style type="text/css">
<!--
    .m1{margin-right:10%;margin-left:12%}
    .d1{position:relative;top:3px;left:80px} 
	.d2{position:relative;top:-5px;left:80px}   
-->
</style>
</head>
<body>
<!--
<form name="form1" action="./servlet/Loginservlet" method="POST" OnSubmit="return checkForm();">
	<table>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="username" ></td>
			<td><font size=1>如果是新用户请先注册</font></td>			
		</tr>
		<tr>
		    <td >用户身份:</td>
		    <td ><input type="radio" name="identity" value="1"><font size=1>在校学生</font>
		         <input type="radio" name="identity" value="2"><font size=1>校友</font>
		         <input type="radio" name="identity" value="3"><font size=1>管理员</font>
		    </td>
		    <td></td>
		</tr>
		<tr>
			<td>密&nbsp;&nbsp;码：</td>
			<td><input type="password" name="password" ></td>
		</tr>		
		<tr>
		    <td>&nbsp</td>
			<td colospan="2" align="center">
                <input type="submit" name="submit" value="登录" >&nbsp;&nbsp;
			    <input type="reset" name="reset" value="重置" >
			    <a href="register.jsp">注册</a>		    
			</td>
		</tr>
	</table>
</form>-->
<form name="form1" action="./servlet/Loginservlet" method="POST" OnSubmit="return checkForm();">
		<fieldset>
		
			<legend>Log in</legend>
			
			<label for="username">用户名:</label>
			<input type="text" id="username" name="username" size="32" width="2222px" style="background:url(images/username_bg.gif) left no-repeat #FFF; border:2px #ccc solid;height: 30px; width:160px; font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight: 80; margin:1; padding-left: 24px;"/>
			<div class="clear"></div>
			
			<label for="password">密码:</label>
			<input type="password" id="password" name="password" size="32" style="background:url(images/password_bg.gif) left no-repeat #FFF; border: 2px #ccc solid; height: 30px; width:160px; font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight: 80; margin:1; padding-left: 24px;"/>
			<div class="clear"></div>
			
		
       <div class="d1"> <table border="0" cellpadding="0" cellspacing="0"><tr><td style="width:40px" align="right"></td><td style="width:50px" align="right"><p>在校生</p></td><td align="left"><input type="radio" name="identity" value="1" checked="checked" style="width:20px; margin-top:6px; margin-left:0"/></td><td style="width:60px" align="right"><p>校友</p></td><td align="left"><input type="radio" name="identity" value="2" style="width:20px; margin-top:6px; margin-left:0"/></td><!--<td style="width:70px" align="right"><p>管理员</p></td><td align="left"><input type="radio" name="identity" value="3" style="width:20px; margin-top:6px; margin-left:0"/></td>--></tr></table></div>
            
			<div class="clear"></div>
            <br/>
			<div class="d2"><table border="0" cellpadding="0" cellspacing="0"><tr><td width="80px"><input type="submit" class="button" name="commit" value="登录"/></td><td width="80px"><input type="reset" class="button" name="reset" value="重置"/></td><td width="80px"><input type="button" class="button" value="注册" onclick="window.location.href='register.jsp'"></td></tr></table></div>
		  		
		</fieldset>
	</form>
</body>
</html>
