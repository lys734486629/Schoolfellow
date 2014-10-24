<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>校友信息管理系统注册界面</title>
<script language="JavaScript">
  function checkForm()
	{
		var form = document.form3;
		if(form.company.value=="")
		{
			alert('请填写工作单位！');
			form.company.focus();
			return false;
		}
		if(form.industry.value=="")
		{
			alert('请填所属行业！');
			form.industry.focus();
			return false;
		}
		if(form.post.value=="")
		{
			alert('请填写职位！');
			form.post.focus();
			return false;
		}
		if(form.salary.value=="")
		{
			alert('请填写工资！');
			form.salary.focus();
			return false;
		}
	
		if(form.workchange.value=="")
		{
			alert('请填写工作次数！');
			form.workchange.focus();
			return false;
		}
		if(form.workyear.value=="")
		{
			alert('请填写工作年限！');
			form.workyear.focus();
			return false;
		}
		
		return true;
	}
</script>
</head>
<body background="images/adminmoban_18.gif">
<center>
<form name="form3" action="./servlet/UpdateWorkservlet" method="POST" OnSubmit="return checkForm()">
	<table>
		<tr>
			<td style="font-size:20px;font-weight:bold;color:#c0c0c0;">工作单位：</td>
			<td><input type="text" name="company" ></td>
		</tr>
		<tr>
		    <td style="font-size:20px;font-weight:bold;color:#c0c0c0;">所属行业:</td>
		    <td><input type="text" name="industry" ></td>
		</tr>
		<tr> 
		    <td style="font-size:20px;font-weight:bold;color:#c0c0c0;">职位:</td>
		    <td><input type="text" name="post"></td>
		</tr>
		<tr> 
		   <td style="font-size:20px;font-weight:bold;color:#c0c0c0;">工资:</td>
		   <td><input type="text" name="salary"></td>
		</tr>
		<tr>
		   <td style="font-size:20px;font-weight:bold;color:#c0c0c0;">工作次数:</td>
		   <td><input type="text" name="workchange"></td>
		</tr>
		<tr>
		   <td style="font-size:20px;font-weight:bold;color:#c0c0c0;">工作年限:</td>
		   <td><input type="text" name="workyear"></td>
		</tr>
		<tr>
		    <td>&nbsp</td>
			<td colospan="2" align="center">
                <input type="submit" name="login" value="更新" >&nbsp;&nbsp;
			    <input type="reset" name="reset" value="重置" >
			   		    
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>
