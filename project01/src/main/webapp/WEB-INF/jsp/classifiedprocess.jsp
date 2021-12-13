<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="ISO-8859-1">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>City Search</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
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
		<%@ include file="header1.jsp" %>
	</div>
	
	<div id="banner"><img src="https://c4.wallpaperflare.com/wallpaper/8/325/179/man-made-the-taj-mahal-palace-hotel-gateway-of-india-hotel-wallpaper-preview.jpg" width="1000" height="361" alt="" /></div>
	<div id="welcome">
	<%@ include file="coockie.jsp" %>
		<h2 class="title"><a href="#">Welcome to City Search</a></h2>
		</div>
		
	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left.jsp"></jsp:include></p>
		</div>
		<div id="column2">

<%@ page import="java.sql.*" %>

<%
String buysell=request.getParameter("type");
String name=request.getParameter("name");
String description=request.getParameter("description");

//int userid=0;
//userid=(Integer)session.getAttribute("userid");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/citysearch","root","7488432790@Sh");

String query="insert into cityclassified values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setInt(1,5);
ps.setString(2,buysell);
ps.setString(3,name);
ps.setString(4,description);
//ps.setInt(5,userid);

int status=ps.executeUpdate();
if(status>0){
out.println("classified successfully posted....");
}
else{
out.println("Sorry some problem occured.");
}
}catch(Exception e){e.printStackTrace();}
%>	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.jsp"></jsp:include></p>
		</div>
	</div>
	
	<div id="page">
		<div id="content">
				<img src ="" onclick="index.jsp" style="opacity:0.4;filter:alpha(opacity=20);"/><br/>
					<marquee>WORLDS IN YOUR HAND:CITY SEARCH</marquee>
		</div>
		<!-- end #content -->
		<div id="sidebar">
		
		</div>
	</div>
	</div>
	<!-- end #page --> 

<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="#">city search</a>.</p>
</div>

</body>
</html>