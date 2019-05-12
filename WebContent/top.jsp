<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

	  #topMenu {           
                        height: 30px; 
                        width: 1250px; 
                }
                #topMenu ul li {                       
                        list-style: none;           
                        color: white;               
                        background-color: rgba( 255, 255, 255, 0.5 );  
                        float: left;                
                        line-height: 70px;       
                        vertical-align: middle;     
                        text-align: center;         
                }
                #topMenu .menuLink {                               
                        text-decoration:none;                      
                        color: gray;                              
                        display: block;                            
                        width: 130px;                              
                        font-size: 15px;                           
                        font-weight: bold;                         
                        font-family: "Trebuchet MS", Dotum, Arial; 
                }
                #topMenu .menuLink:hover {            
                        color: red;                   
                        background-color: #4d4d4d;    
                }
}
</style><!-- 
<a href="main.jsp" style="margin-left:90px;">메인</a> 
<a href="library.jsp" style="margin-left:200px;">모모를 만날 수 있는 곳</a>
<a href="book.jsp" style="margin-left:400px;">책소개</a>
<a href="review.jsp" style="margin-left:550px;">리뷰</a>
<a href="photo.jsp" style="margin-left:600px;">갤러리</a> -->
<center>
<nav id="topMenu" >
                <ul>
                        <li><a class="menuLink" href="main.jsp">Read, Lead</a></li>
                        <li><a class="menuLink" href="library.jsp">모모 만나기</a></li>
                        <li><a class="menuLink" href="book.jsp">모모를 소개할게</a></li>
                        <li><a class="menuLink" href="review.jsp">모모와 대화하기</a></li>
                        <li><a class="menuLink" href="photo.jsp">모모의 이야기</a></li>
                        <li><a class="menuLink" href="etc.jsp">모모 etc</a></li>
                </ul>
        </nav>
</center>

