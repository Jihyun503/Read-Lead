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
		background-size: 1650px;
	}
</style>
</head>
<body>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
	String contentPage2 = request.getParameter("CONTENTPAGE2");
	//String middle = request.getParameter("MIDDLE");

%>
<center>
<table width="1650" height="939" cellpadding="2" cellspacing="0" id="b" border="1">
<tr height="170">
	<td colspan=3>
		<jsp:include page="top.jsp" flush="false"/>
	</td>
</tr>

<tr height ="710">
	<td width="741" valign="top">
		<jsp:include page="<%= contentPage %>" flush="false"/>
	</td>
	<td width="162" valign="top">
<%-- 		<jsp:include page="<%= middle %>" flush="false"/>
 --%>		<jsp:include page="middle.jsp" flush="false"/>
	</td>
	<td width="737" valign="top">
		<jsp:include page="<%= contentPage2 %>" flush="false"/>
	</td>
</tr>

<tr>
	<td colspan=3>
		footer
	</td>
</tr>

</table>
</center>

</body>
</html>