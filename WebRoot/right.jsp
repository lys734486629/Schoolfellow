<%@ page contentType="text/html; charset=GB2312" language="java"
	import="java.util.*,java.text.*"%>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
<head>
	<LINK href="Style.css" type=text/css rel=stylesheet>
</head>
<body topmargin="100" bgcolor=#f3f3f3>
	<table >
		<tr>
			<td height="14" colspan="2" align=center
				style="font-size:14px;color=#ff6600">
				欢迎来到校友信息管理系统！
			</td>
		</tr>
		<tr>
			<td height="14" align=center>
				* 当前时间:
			</td>
			<td width="76%">
				<%=sdf.format(date)%>
			</td>
		</tr>
		<tr>
			<td width="24%" height="30" align=center>
				* 您的IP:
			</td>
			<td width="76%">
				<%=request.getRemoteAddr()%>
			</td>
		</tr>
		<tr>
			<td width="24%" height="30" align=center>
				* 服务器名称:
			</td>
			<td width="76%">
				<%=request.getServerName()%>
			</td>
		</tr>
		<tr>
			<td height="30" colspan="2" style="color:#ff0000"></td>
		</tr>
	</table>
</body>
