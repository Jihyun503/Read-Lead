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
<img class="mySlides" src="image/img1.jpg" width="450">
<img class="mySlides" src="image/img2.jpg" width="450">
<img class="mySlides" src="image/img3.jpg" width="450">
<img class="mySlides" src="image/img4.jpg" width="450">
<img class="mySlides" src="image/img5.jpg" width="450">
<img class="mySlides" src="image/img6.jpg" width="450">
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