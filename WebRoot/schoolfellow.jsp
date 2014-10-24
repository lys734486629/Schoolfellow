<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>校友信息管理系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css">
		<!--
		body,td,th {
			font-size: 9pt;
		}
		-->
		</style>
<style type="text/css">
<!--
    .m1{margin-right:10%;margin-left:12%}
    .d1{position:relative;top:14px;left:7px;width:62px;height:33px}    
	.d2{position:relative;top:3.8px;left:6px}  
-->
</style>
<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}

.time1{height:20px;line-height:20px;overflow:hidden;font-size:12px;width:127px;position:relative;top:3px;left:0px}
.time2{
	height: 20px;
	line-height: 20px;
	overflow: hidden;
	font-size: 12px;
	width: 50px;
	position: relative;
	top: 3px;
	left: -2px;
}
</style>
<script type="text/javascript">
function initArray(){
  for(i=0;i<initArray.arguments.length;i++)
  this[i]=initArray.arguments[i];
}

var isnMonths=new initArray("1","2","3","4","5","6","7","8","9","10","11","12");
var isnDays=new initArray("星期日","星期一","星期二","星期三","星期四","星期五","星期六","星期日");
today=new Date();
hrs=today.getHours();
min=today.getMinutes();
sec=today.getSeconds();
clckh=""+((hrs>12)?hrs-12:hrs);
clckm=((min<10)?"0":"")+min;clcks=((sec<10)?"0":"")+sec;
clck=(hrs>=12)?"下午":"上午";
var stnr="";
var ns="0123456789";
var a="";

function getFullYear(d){
  yr=d.getYear();
  if(yr<1000)
  yr+=1900;
  return yr;
}
</script>

<!--十，分，秒-->
<script type="text/javascript">
function showLocale(obj){
	var str;
	var hh = obj.getHours();
	if(hh<10)
	hh = '0' + hh;
	
	var mm = obj.getMinutes();
	if(mm<10) mm = '0' + mm;
	
	var ss = obj.getSeconds();
	if(ss<10) ss = '0' + ss;

	str = hh + ":" + mm + ":" + ss;
	return(str);
}
function tick(){
	var today;
	today = new Date();
	document.getElementById("clock").innerHTML = showLocale(today);
	window.setTimeout("tick()", 1000);
}
</script>
	</head>
	<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="m1">
	<!--
	<iframe width="750" height="400" name="right" align="right">
	</iframe>
	<%String current; %>
	     <p>
		<a href="./servlet/SearchInfoservlet" target="right">查看个人信息
		</a>
		</p>
		<p>
		<a href="./servlet/SeaarchWorkservlet?current=1" target="right">查看当前工作信息
		</a>
		</p>
		<p>
		<a href="./servlet/SeaarchWorkservlet?current=2" target="right">查看历史工作信息
		</a>
		</p>
		<p>
		<a href="updatework.jsp" target="right">更新工作信息
		</a>
		</p>-->
		<!-- ImageReady Slices (adminmoban.psd) -->
<table id="__01" width="1001" height="631" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2">
			<img src="images/adminmoban_01.gif" width="112" height="88" alt=""></td>
		<td width="88">
			<img src="images/adminmoban_02.gif" width="88" height="88" alt=""></td>
		<td colspan="4">
			<img src="images/adminmoban_03.gif" width="200" height="88" alt=""></td>
		<td colspan="3">
			<img src="images/adminmoban_04.gif" width="200" height="88" alt=""></td>
		<td colspan="3">
			<img src="images/adminmoban_05.gif" width="200" height="88" alt=""></td>
		<td colspan="6">
			<img src="images/adminmoban_06.gif" width="200" height="88" alt=""></td>
		<td width="1">
			<img src="images/分隔符.gif" width="1" height="88" alt=""></td>
	</tr>
	<tr>
		<td width="28">
			<img src="images/adminmoban_07.gif" width="28" height="33" alt=""></td>
		<td colspan="3" width="202" height="33" background="images/adminmoban_08.gif" style="background-repeat:no-repeat">
<table cellspacing="0"><tr><td><script type="text/javascript">
//下面各行分别是一种风格，把不需要的删掉即可
document.write("<div class='time1'>"+ getFullYear(today)+"年"+ 

isnMonths[today.getMonth()] +"月"+ today.getDate() +"日, "+ isnDays

[today.getDay()] +","+"</div>");
</script></td><td><div class="time2" id="clock"></div><script type="text/javascript">tick()</script></td></tr></table>
</td>
	  <td colspan="4">
		  <img src="images/adminmoban_09.gif" width="202" height="33" alt=""></td>
		<td colspan="3"><img src="images/adminmoban_10.gif" width="202" height="33" alt=""></td>
		<td colspan="3">
			<img src="images/adminmoban_11.gif" width="202" height="33" alt=""></td>
		<td width="20">
			<img src="images/adminmoban_12.gif" width="20" height="33" alt=""></td>
		<td colspan="2" background="images/adminmoban_13.gif" height="33"><div class="d1"><a href="schoolfellow.jsp" style="font-size:12">网站首页</a></div></td>
		<td width="16">
			<img src="images/adminmoban_14.gif" width="16" height="33" alt=""></td>
		<td width="66" height="33" background="images/adminmoban_15.gif"><div class="d2"><a href="logout.jsp" style="font-size:12">安全退出</a></div></td>
		<td>
			<img src="images/分隔符.gif" width="1" height="33" alt=""></td>
	</tr>
	<tr>
		<td colspan="3"><img src="images/adminmoban_16.gif" width="200" height="14" alt=""></td>
		<td colspan="16" rowspan="2"><img src="images/adminmoban_17.gif" width="800" height="41" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="1" height="14" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="3" background="images/adminmoban_18.gif" width="200" height="464"><iframe src="fellowleft.jsp" width="200" height="464" frameborder="0" scrolling="no"></iframe></td>
		<td>
			<img src="images/分隔符.gif" width="1" height="27" alt=""></td>
	</tr>
	<tr>
		<td colspan="3"><img src="images/adminmoban_19.gif" width="93" height="400" alt=""></td>
		<td colspan="10" background="images/adminmoban_20.gif" width="609" height="400"><iframe src="blank.jsp" width="609" height="400" frameborder="0" name="main"></iframe></td>
		<td colspan="3"><img src="images/adminmoban_21.gif" width="98" height="400" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="1" height="400" alt=""></td>
	</tr>
	<tr>
		<td colspan="16"><img src="images/adminmoban_22.gif" width="800" height="37" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="1" height="37" alt=""></td>
	</tr>
	<tr>
		<td colspan="5"><img src="images/adminmoban_23.gif" width="250" height="31" alt=""></td>
		<td colspan="4"><img src="images/adminmoban_24.gif" width="250" height="31" alt=""></td>
		<td colspan="3"><img src="images/adminmoban_25.gif" width="250" height="31" alt=""></td>
		<td colspan="7"><img src="images/adminmoban_26.gif" width="250" height="31" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="1" height="31" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/分隔符.gif" width="28" height="1" alt=""></td>
		<td width="84">
			<img src="images/分隔符.gif" width="84" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="88" height="1" alt=""></td>
		<td width="30">
			<img src="images/分隔符.gif" width="30" height="1" alt=""></td>
		<td width="39">
			<img src="images/分隔符.gif" width="20" height="1" alt=""></td>
		<td width="43">
			<img src="images/分隔符.gif" width="43" height="1" alt=""></td>
		<td width="107">
			<img src="images/分隔符.gif" width="107" height="1" alt=""></td>
		<td width="32">
			<img src="images/分隔符.gif" width="32" height="1" alt=""></td>
		<td width="68">
			<img src="images/分隔符.gif" width="68" height="1" alt=""></td>
		<td width="100">
			<img src="images/分隔符.gif" width="100" height="1" alt=""></td>
		<td width="34">
			<img src="images/分隔符.gif" width="34" height="1" alt=""></td>
		<td width="116">
			<img src="images/分隔符.gif" width="116" height="1" alt=""></td>
		<td width="50">
			<img src="images/分隔符.gif" width="50" height="1" alt=""></td>
		<td width="36">
			<img src="images/分隔符.gif" width="36" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="20" height="1" alt=""></td>
		<td width="46">
			<img src="images/分隔符.gif" width="46" height="1" alt=""></td>
		<td width="16">
			<img src="images/分隔符.gif" width="16" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="16" height="1" alt=""></td>
		<td>
			<img src="images/分隔符.gif" width="66" height="1" alt=""></td>
		<td></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
	</body>
</html>
