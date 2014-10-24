<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>校友信息管理系统注册界面</title>
<script language="JavaScript">
  function checkForm()
	{
		var form = document.form2;
		if(form.name.value=="")
		{
			alert('请填写姓名！');
			form.name.focus();
			return false;
		}
		if(form.number.value=="")
		{
			alert('请填写学号！');
			form.number.focus();
			return false;
		}
		if(form.college.value=="")
		{
			alert('请填写学院！');
			form.college.focus();
			return false;
		}
		if(form.major.value=="")
		{
			alert('请填写专业！');
			form.major.focus();
			return false;
		}
	
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
		
		return true;
	}
</script>
</head>
<body>
<center>
<br>
<br>
<br>
<form name="form2" action="./servlet/Registerservlet" method="POST" OnSubmit="return checkForm()">
	<table>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="name" ></td>
		</tr>
		<tr>
		    <td>在校学号:</td>
		    <td><input type="text" name="number" ></td>
		</tr>
		<tr> 
		    <td>学院:</td>
		    <td><input type="text" name="college"></td>
		</tr>
		<tr> 
		   <td>专业:</td>
		   <td><input type="text" name="major"></td>
		</tr>
		<tr>
		   <td>出生年月:<br><font size=1>(形如YYYYMMDD)</font>></td>
		   <td><input type="text" name="birth"></td>
		</tr>
		<tr>
		   <td>离校年份:<br><font size=1>在校生不用填</font></td>
		   <td><input type="text" name="leaveyear"></td>
		</tr>
		<tr>
		   <td>籍贯:</td>
		   <td><input type="text" name="nativeplace"></td>
		</tr>
		<tr>
		   <td>用户名:</td>
		   <td><input type="text" name="username"></td>
		</tr>
		<tr>
		    <td >用户身份:</td>
		    <td ><input type="radio" name="identity" value="1"><font size=1>在校学生</font>
		         <input type="radio" name="identity" value="2"><font size=1>校友</font>
		    </td>
		    <td></td>
		</tr>
		<tr>
			<td>密&nbsp;&nbsp;码：</td>
			<td><input type="password" name="password" id="password" ></td>
		</tr>		
		<tr>
		    <td>&nbsp</td>
			<td colospan="2" align="center">
                <input type="submit" name="login" value="注册" >&nbsp;&nbsp;
			    <input type="reset" name="reset" value="重置" >
			   		    
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>
