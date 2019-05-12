<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String str = request.getParameter("result");

	if(str.equals("ok")){
		out.println("<font color='red'>리뷰</font>작성이 완료되었습니다.");
	}
	else{
		out.println("파일에 데이터를 저장할 수 없습니다.");
	}

%>

<meta http-equiv='refresh' content='1;url=review.jsp'>