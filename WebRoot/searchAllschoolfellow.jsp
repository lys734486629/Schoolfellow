<%@ page language="java" import="java.util.*,javabean.UserBean" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
*{font-family:Tahoma, Arial, Helvetica, Sans-serif,"宋体";}
table{
	width:605px;
	margin:0px auto;
	font:Georgia 11px;
	font-size:12px;
	color:#333333;
	text-align:center;
	border-collapse:collapse;/*细线表格代码*/
}
table td{
	border:1px solid #999;/*细线表格线条颜色*/
	height:22px;
}
caption{text-align:left;font-size:12px;font-weight:bold;margin:0 auto;}
tr.t1 td {background-color:#fff;}
tr.t2 td {background-color:#eee;}
tr.t3 td {background-color:#ccc;}
th,tfoot tr td{font-weight:bold;text-align:center;background:#c5c5c5;}
th{line-height:30px;height:30px;}
tfoot tr td{background:#fff;line-height:26px;height:26px;}
thead{border:1px solid #999;}
thead tr td{text-align:center;}
#page{text-align:center;float:right;}
#page a,#page a:visited{width:60px;height:22px;line-height:22px;border:1px black solid;display:block;float:left;margin:0 3px;background:#c9c9c9;
text-decoration:none;}
#page a:hover{background:#c1c1c1;text-decoration:none;}
.grayr {padding:2px;font-size:11px;background:#fff;float:right;}
.grayr a {padding:2px 5px;margin:2px;color:#000;text-decoration:none;;border:1px #c0c0c0 solid;}
.grayr a:hover {color:#000;border:1px orange solid;}
.grayr a:active {color:#000;background: #99ffff}
.grayr span.current {padding:2px 5px;font-weight:bold; margin:2px; color: #303030;background:#fff;border:1px orange solid;}
.grayr span.disabled {padding:2px 5px;margin:2px;color:#797979;background: #c1c1c1;border:1px #c1c1c1 solid;}
</style>
</head>
  <body style="margin:2px" background="images/adminmoban_18.gif">    
    <table>
    <caption style="color:#c0c0c0">
  欢迎您:<%=session.getAttribute("username") %>
  </caption>
      <!--<th>
                         <tr>
                             <th width="130" style="color:black"><div align="center">姓名</div></th>
						      <th width="65" style="color:black"><div align="center">学号</div></th>
						      <th width="64" style="color:black"><div align="center">学院</div></th>
						      <th width="65" style="color:black"><div align="center">专业</div></th>
						      <th width="60" style="color:black"><div align="center">出生年月</div></th>
						      <th width="90" style="color:black"><div align="center">籍贯</div></th>
						      <th width="90" style="color:black"><div align="center">离校年份</div></th>
                           </tr>
      </th>-->
      <thead>
    <tr>
      <th>姓名</th>
      <th>学号</th>
      <th>学院</th>
      <th>专业</th>
      <th>出生年月</th>
      <th>籍贯</th>
      <th>离校年份</th>
    </tr>
  </thead> 
  <tbody  id="tab">
<% ArrayList<UserBean> userlist1=(ArrayList<UserBean>)session.getAttribute("userlist1");
    String iden=(String)session.getAttribute("identity");     
    UserBean fs=new UserBean();
    int i=0;
                              for(i=0;i<userlist1.size();i++)
                                {         fs=userlist1.get(i);
							    out.print("<tr>");
							    out.print("<td>"+fs.getName()+"</td>");
							    out.print("<td>"+fs.getNumber()+"</td>");
							    out.print("<td>"+fs.getCollege()+"</td>");
							    out.print("<td>"+fs.getMajor()+"</td>");
							    out.print("<td>"+fs.getBirth()+"</td>");
							    out.print("<td>"+fs.getNativeplace()+"</td>");
							    out.print("<td>"+fs.getLeaveyear()+"</td>");
							   	out.print("</tr>");
                                 }
%>
</tbody>
   </table>
      <script type="text/javascript">    
<!--
var Ptr=document.getElementById("tab").getElementsByTagName("tr");
function $() {
    for (i=1;i<Ptr.length+1;i++) { 
    Ptr[i-1].style.backgroundColor = (i%2>0)?"#fff":"#eee"; 
    }
}
window.onload=$;
for(var i=0;i<Ptr.length;i++) {
    Ptr[i].onmouseover=function(){
    this.tmpClass=this.className;
    this.style.backgroundColor = "#ccc";
    
    };
    Ptr[i].onmouseout=function(){
    for (i=1;i<Ptr.length+1;i++) { 
    Ptr[i-1].style.backgroundColor = (i%2>0)?"#eee":"#fff"; 
    }
	}
}
//-->
</script>
  </body>
</html>
