<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read, Lead</title>
<style>
	#b 
	{
		background-image:url('image/jspbg.jpg');
		background-size: 1254px;
	}
</style>
</head>
<body>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
	String contentPage2 = request.getParameter("CONTENTPAGE2");

%>
<center>
<table width="1040" height="712" cellpadding="2" cellspacing="0" id="b" border="0">
<tr height="140">
	<td colspan=3>
		<jsp:include page="top.jsp" flush="false"/>
	</td>
</tr>

<tr height ="530">
	<td width="553" valign="top">
		<jsp:include page="<%= contentPage %>" flush="false"/>
	</td>
	<td width="130" valign="top">
		<jsp:include page="middle.jsp" flush="false"/>
	</td>
	<td valign="top">
		<jsp:include page="<%= contentPage2 %>" flush="false"/>
	</td>
</tr>

<tr>
	<td colspan=3>
		<jsp:include page="footer.jsp" flush="false"/>
	</td>
</tr>

</table>
</center>

</body>
</html>