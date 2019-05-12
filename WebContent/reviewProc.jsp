<%@page import="java.io.File"%>
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
	String dirPath = application.getRealPath("/WEB-INF/review");
	//out.println(dirPath);
	File dir = new File(dirPath);
	String fileNames[] = dir.list();
	
	BufferedReader reader = null;
	String str1[] = dir.list();
	
	int idx;
	
	for(int i=0; i<fileNames.length; i++){
		String filePath = application.getRealPath("/WEB-INF/review/" + fileNames[i]);
		reader = new BufferedReader(new FileReader(filePath));
	try{
		while(true){
			String str = reader.readLine();
			if(str.contains("글쓴이")) { str1[i] = str; break;}
		}
	}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			reader.close();
		}
		
		idx = str1[i].indexOf(" ", 4);
		str1[i] = str1[i].substring(idx+1);
	}
%>
<center>
<img src="image/review.png"><br><br>
<%
	for(int i = 0; i<str1.length; i++){ %>
		<a href="reviewReader.jsp?NAME=<%= fileNames[i]%>">
	<%= str1[i] %> </a><hr style="width: 400px"><br>
		
<% 	}
%>
</center>
</body>
</html>