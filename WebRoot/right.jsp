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
				��ӭ����У����Ϣ����ϵͳ��
			</td>
		</tr>
		<tr>
			<td height="14" align=center>
				* ��ǰʱ��:
			</td>
			<td width="76%">
				<%=sdf.format(date)%>
			</td>
		</tr>
		<tr>
			<td width="24%" height="30" align=center>
				* ����IP:
			</td>
			<td width="76%">
				<%=request.getRemoteAddr()%>
			</td>
		</tr>
		<tr>
			<td width="24%" height="30" align=center>
				* ����������:
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
