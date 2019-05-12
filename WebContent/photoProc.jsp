<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>

<div class="w3-content" style="max-width:800px;position:relative">
<img class="mySlides" src="image/img_1.jpg">
<img class="mySlides" src="image/img_2.jpg">
<img class="mySlides" src="image/img_3.jpg">
<img class="mySlides" src="image/img_4.jpg">
<a class="w3-btn-floating" onclick="plusDivs(-1)">&#10094;</a>
<a class="w3-btn-floating" onclick="plusDivs(+1)">&#10095;</a>
</center>

</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
</body>
</html>