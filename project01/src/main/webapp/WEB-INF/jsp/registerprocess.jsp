<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jspf"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	
<jsp:include page="header1" ></jsp:include>

	</div>
	
	<div id="banner">
	<img src="" width="1000" height="361" alt="" /></div>
	<div id="welcome">	
<%@ include file="coockie.jsp"  %>
		<h2 class="title"><a href="#">Welcome to City Search</a></h2>
		

	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left"></jsp:include></p>
		</div>
		<div id="column2">

    <jsp:include page="login1"></jsp:include>
	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right"></jsp:include></p>
		</div>
	</div>
	
	<div id="page">
		<div id="content">
				<img src ="" onclick="index" style="opacity:0.4;filter:alpha(opacity=20);"/><br/>
					<marquee>WORLDS IN YOUR HAND:CITY SEARCH</marquee>
		</div>
		<!-- end #content -->
		<div id="sidebar">
		
		</div>
	</div>
	<!-- end #page --> 
</div>
<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="#">city search</a>.</p>
</div>
<!-- end #footer -->

</body>
</html>