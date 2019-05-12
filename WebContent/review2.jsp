<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<center>
<img src="image/review2.png"><br><br>

<form action="review2Proc.jsp" method="post">
<table border="1" width="430" style="background:pink; text-align:center;">
<tr>
	<td bgcolor="white">제목 : </td> 
	<td><input type="text" name="name"> </td>
</tr>
<tr>
	<td bgcolor="white">이름 : </td>
	<td><input type="text" name="title"> </td>
</tr>
<tr>
<td colspan="2"><textarea rows="10" cols="55" name="content"></textarea> </td>
</tr>
</table>
<br>
<input type="submit" value="작성">
</form>
</center>
</body>
</html>