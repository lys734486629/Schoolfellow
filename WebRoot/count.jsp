<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>校友信息管理系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<style type="text/css">
		<!--
		body,td,th {
			font-size: 9pt;
		}
		-->
		</style>
		<script language="JavaScript">
  function checkForm()
	{
		var form = document.form2;
		if(form.year.value=="")
		{
			alert('请填写工作年限！');
			form.year.focus();
			return false;
		}
		
		
		return true;
	}
</script>
	</head>
	<body background="images/adminmoban_18.gif">

	<form name="form1" action="./servlet/Countservlet?" method="post" OnSubmit="return checkForm()">
	  	<select name="major">
       <option value="数学与应用数学" selected>数学与应用数学</option>
       <option value="信息与计算科学">信息与计算科学</option>
       <option value="统计学">统计学</option>
       <option value="光电信息科学与工程">光电信息科学与工程</option>
       <option value="电子信息科学与技术">电子信息科学与技术</option>
       <option value="应用化学">应用化学</option>
       <option value="材料化学">材料化学</option>
       <option value="材料科学与工程">材料科学与工程</option>
       </select>
       <input type="text" name="year"> 
       <input type="submit" name="Submit" value="查询">
       </form>
		
	</body>
</html>
