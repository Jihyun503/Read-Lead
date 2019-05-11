<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String filename = request.getParameter("NAME");
	//out.println(filename);
%>
<center>
<%
	BufferedReader reader = null;
	String str1 = "";
	String str2 = "";
	String str3 = "";
	try{
		String filePath = application.getRealPath("/WEB-INF/review/" + filename);
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			if(str.contains("제목")) { str1 = str;}
			else if(str.contains("글쓴이")) { str2 = str;}
			else {str3 = str;}
			//out.println(str+"<br>");
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		reader.close();
	}
	
%>
<table border="1">
			<tr>
				<td>
				<%= str1 %>
				</td>
			<tr>
			<tr>
				<td>
				<%= str2 %>
				</td>
			<tr>
			<tr>
				<td>
				<%= str3 %>
				</td>
			<tr>
			<tr>
				<td>
					<input type="button" onclick="location.href='review.jsp'" value="돌아가기"></button>
				</td>
			</tr>
		</table>
</center>
</body>
</html>