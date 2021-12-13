<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<head>
<meta charset="ISO-8859-1">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>City Search</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
<style type="text/css">
@import "gallery.css";
</style>



</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">city search</a></h1>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">

<%@ include file="header1.jsp"  %>

	</div>
	
	<div id="banner">
		<img src="https://wallpaperbat.com/img/271230-mumbai-wallpaper.jpg" width="1000" height="361" alt="" /></div>
	<div id="welcome">
<%@ include file="coockie.jsp" %>
		<h2 class="title"><a href="#">Welcome to City Search</a></h2>
		
	
	<div id="three-columns">
		<div id="column01">
			<p><jsp:include page="left.jsp"></jsp:include></p>
		</div>
		<div id="column03">
			<h2>Top City</h2> 
			<p><jsp:include page="right.jsp"></jsp:include></p>
		</div>
	</div>
	
<div id="page">				
	<div id="content">
	
			<img src ="https://wallpaperaccess.com/full/962325.jpg" onclick="index.jsp" style="opacity:0.4;filter:alpha(opacity=20);height:400px;width:940px;"/><br/>
			<marquee>WORLDS IN YOUR HAND:CITY SEARCH</marquee>
				
		</div>
	</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2><marquee>Free advertisement..</marquee></h2>
					<ul>
						
						<li><a href="city search">City Search</a></li>
						<li><a href="#">Google</a></li>
						
					</ul>
				</li>
			</ul>
		</div>
	</div>
<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="#">city search</a>.</p>
</div>

</body>
</html>