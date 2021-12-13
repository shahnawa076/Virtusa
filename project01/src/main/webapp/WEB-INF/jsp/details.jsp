<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
<%@ page import="java.sql.*" %>
<%@ include file="coockie.jsp" %>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
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
<%@ include file="header.jsp" %>
	</div>
	
	<div id="banner"><img src="https://free4kwallpapers.com/uploads/wallpaper/black-amp-yellow-premium-wallpaper-1024x768-wallpaper.jpg" width="1000" height="361" alt="" /></div>
	<div id="welcome">
	
		<h2 class="title"><a href="#">Welcome to City Search</a></h2>
	</div>
		
	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left.jsp"></jsp:include></p>
		</div>
		<div id="column2">


	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.jsp"></jsp:include></p>
		</div>
	</div>
	
	<div id="page">

<%
String category=request.getParameter("category");
String city=request.getParameter("city");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/citysearch","root","7488432790@Sh");

String query="select * from citydetails where category=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,category);
ResultSet rs=ps.executeQuery();
String query1="select * from citydetails where city=?";
PreparedStatement rss=con.prepareStatement(query1);
rss.setString(1,city);
ResultSet rss1=rss.executeQuery();
out.print("<table style='background-color:33ccff';table-layout:fixed' border='1' cellpadding='1' width='100%' cellspacing='1'>");
out.print("<tr><th>Address</th><th>Category</th><th>City</th><th>Contact</th><th>Email</th>");

while(rs.next()){
out.print("<tr><td>"+rs.getString(2)+"</td><td> "+rs.getString(3)+"</td><td> "+rs.getString(4)+"</td><td> "+rs.getString(5)+" </td><td>"+rs.getString(6)+" </td></tr>");
}
while(rss1.next()){
out.print("<tr><td>"+rss1.getString(2)+"</td><td> "+rss1.getString(3)+"</td><td> "+rss1.getString(4)+"</td><td> "+rss1.getString(5)+" </td><td>"+rss1.getString(6)+" </td></tr>");
}
out.print("</table>");
}catch(Exception e){e.printStackTrace();}
%>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			
		</div>
	
	<!-- end #page --> 

<div id="footer">
	<p>Copyright (c) 2021 Sitename.com. All rights reserved. Design by <a href="#">city search</a>.</p>
</div></div>

</body>
</html>