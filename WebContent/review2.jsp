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
<h2>책 리뷰 작성</h2>
<form action="review2Proc.jsp" method="post">
이름 : <input type="text" name="name"> <br>
제목 : <input type="text" name="title"> <br>
<textarea rows="10" cols="40" name="content"></textarea> <br>
<input type="submit" value="작성">

</form>
</center>
</body>
</html>