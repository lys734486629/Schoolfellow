<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'fellowleft.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style type="text/css">
<!--
    .m1{position:relative;margin-right:10%;margin-left:20%}
    .d1{position:relative;top:14px;left:7px;width:62px;height:33px}    
	.d2{position:relative;top:3.8px;left:6px}  
-->
</style>
<script type="text/javascript" language="javascript" src="JS/jquery.js"></script>
<script type="text/javascript">
<!--//---------------------------------+
//  Developed by Roshan Bhattarai 
//  Visit http://roshanbh.com.np for this script and more.
//  This notice MUST stay intact for legal use
// --------------------------------->
$(document).ready(function()
{
	//slides the element with class "menu_body" when paragraph with class "menu_head" is clicked 
	$("#firstpane p.menu_head").click(function()
    {
		$(this).css({backgroundImage:"url(images/down.png)"}).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
       	$(this).siblings().css({backgroundImage:"url(images/left.png)"});
	});
	//slides the element with class "menu_body" when mouse is over the paragraph
	$("#secondpane p.menu_head").mouseover(function()
    {
	     $(this).css({backgroundImage:"url(images/down.png)"}).next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
         $(this).siblings().css({backgroundImage:"url(images/left.png)"});
	});
});
</script>
<style type="text/css">
body { margin: 0px 0px; font: 75%/120% Verdana, Arial, Helvetica, sans-serif; }
.menu_list { width: 150px; height:390px;position:relative;top:27px;left:40px;border: 5px solid #FFF;  }
.menu_head { padding: 5px 25px; cursor: pointer; position: relative; margin:2px; background: #EDEDEC url(images/left.png) center right no-repeat; }
.menu_body { display:none;}
.menu_body a { display:block; color:#006699; background-color:#EFEFEF; padding-left:50px; text-decoration:none; }
.menu_body a:hover { color: #000000; text-decoration:underline; }
</style>
  <body background="images/adminmoban_18.gif" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <!--This is the first division of left-->
  <!--<p><strong> 鼠标点击 </strong></p>-->
  <div id="firstpane" class="menu_list">
    <!--Code for menu starts here-->
    <p class="menu_head">查看个人信息</p>
    <div class="menu_body"> <a href="./servlet/SearchInfoservlet" style="height:40px;" target="main">个人信息</a>
    </div>
    <p class="menu_head">查看当前工作信息</p>
    <div class="menu_body"> <a href="./servlet/SeaarchWorkservlet?current=1" style="height:40px" target="main">当前工作信息</a> </div>
    <p class="menu_head">查看历史工作信息</p>
    <div class="menu_body"> <a href="./servlet/SeaarchWorkservlet?current=2" style="height:40px;" target="main">历史工作信息</a>
    </div>
    <p class="menu_head">更新工作信息</p>
    <div class="menu_body"> <a href="updatework.jsp" style="height:40px;" target="main">更新信息</a>
    </div>
  </div>
  <!--Code for menu ends here-->
  </body>
</html>
