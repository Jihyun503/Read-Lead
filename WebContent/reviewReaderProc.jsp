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
	int idx1, idx2;
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
	idx1 = str1.indexOf(" ", 4);
	str1 = str1.substring(idx1+1);
	
	idx2 = str2.indexOf(" ",5);
	str2 = str2.substring(idx2+1);
	
%>
<img src="image/review3.png"><br><br>
<table border="1" style="text-align:center; background:pink;">
			<tr bgcolor="white">
				<td width="70">제목</td> 
				<td width="335">
				<%= str2 %>
				</td>
			</tr>
			<tr bgcolor="white">
				<td>글쓴이</td> 
				<td>
				<%= str1 %>
				</td>
			</tr>
			<tr bgcolor="white">
				<td colspan="2" height="200">
				<%= str3 %>
				</td>
			</tr>
		</table>
		<br>
		<a href="review.jsp"><img src="image/back.png"></a>
</center>
</body>
</html>