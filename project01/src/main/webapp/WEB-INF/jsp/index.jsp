<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  padding-bottom:70px;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: black;
  font-size: 40px;
  padding: 8px 12px;
  position: absolute;
  width: 100%;
  text-align: center;
  background-color:white;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;

}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.6s;
  animation-name: fade;
  animation-duration: 1.8s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>

<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">city search</a></h1>
		</div>
	</div>
	<!-- 
	<div id="banner"><img src="https://wallpaperbat.com/img/92572-itap-of-mumbai-city-all-lit-up-for-diwali-celebration-in-india.jpg" width="1000" height="361" alt="" />
	-->
	<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 4</div>
  <img src="https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&w=1000&q=80" style="width:100%;height:450px;">
  <div class="text">university</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 4</div>
  <img src="https://www.ayurmade.com/wp-content/uploads/2021/07/111-1.jpg" style="width:100%; height:450px">
  <div class="text">Hospital</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 4</div>
  <img src="https://images.livemint.com/img/2021/06/24/1600x900/f015cd82-f8e2-11ea-b2bb-535a8d08f761_1604569758851_1604569791417_1624515143042.jpg" style="width:100%;height:450px;">
  <div class="text">Bank</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 4</div>
  <img src="https://images.unsplash.com/photo-1602431729022-e9f55bb94f08?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80" style="width:100%;height:450px;">
  <div class="text">Shopping Malls</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
</div>
	
	
	
	
	
	
	<div id="welcome">
	
	<h2 class="title"><a href="#">Welcome to City Search</a></h2>
	<p><jsp:include page="paragraph.jsp"></jsp:include></p>
	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left.jsp"></jsp:include></p>
		</div>
		<div id="column2">

      <h2>City Search offers..</h2>
      <ul>
    <li><a href="/viewclassified">Classified </a></li>
    <li><a href="/postclassified">Post Classified </a></li>
    <li><a href="/viewclassified">Free Advertisement </a></li>
    <li><a href="/details?city=delhi">Local Information</a></li>
      </ul>	
	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.jsp"></jsp:include></p>
		</div>
	</div>
	
	
	
	<div id="page">
		<div id="content">
			
			
				<div id="content">
	
					<img src ="https://images.unsplash.com/photo-1608377205700-249f4b48b180?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80" onclick="index" style="opacity:0.7;filter:alpha(opacity=20);height:400px;width:940px;"/><br/>
					<marquee>"Be where the world is going":CITY SEARCH</marquee>
				
			</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2><marquee>Go Explore...</marquee></h2>
					<ul>
						
						<li><a href="city search">City Search</a></li>
						<li><a href="google.com">Google</a></li>
						
					</ul>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- end #page --> 

<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="#">city search</a>.</p>
</div>


<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2500); // Change image every 2 seconds
}
</script>



</body>
</html>