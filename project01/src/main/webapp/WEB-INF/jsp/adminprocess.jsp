<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">
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
 
<%@ include file="header1.jsp"  %> 

	</div>
	
	<div id="banner"><img src="https://images.pexels.com/photos/164572/pexels-photo-164572.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" width="1000" height="361" alt="" /></div>
	<div id="welcome">
		<h2 class="title"><a href="#">Welcome to City Search</a></h2>
	
	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left.jsp"></jsp:include></p>
		</div>
		<div id="column2">
<%
String userename=request.getParameter("username");
String userpass=request.getParameter("userpass");

session.setAttribute("username","Virtusa");
if(userpass.equals("Virtusa@123")){
%>
<fieldset>
<legend style="font-weight:bold;color:yellow;">save information</legend>

<form method="get" action="/save" >
<table width="100" >
<tbody>
<tr>
<td>&nbsp;Name:<br/></td>
<td>&nbsp;<input type="text" name="username"/></td></tr>
<tr>
<td>&nbsp;Category:</td>
<td>&nbsp;<select name="category">
<option>Bank</option>
<option>Atm</option>
<option>School</option>
<option>Company</option>
<option>Hospital</option>
<option>Hotel</option>

</select>

</td></tr>
<tr>
<td>&nbsp;Email:<br/></td>
<td>&nbsp;<input type="text" name="usermail"/></td></tr>
<tr>
<td>&nbsp;Contact:<br/></td>
<td>&nbsp;<input type="text" name="contact"/></td></tr>
<tr>
<td>&nbsp;Address:<br/></td>
<td>&nbsp;<input type="text" name="address"/></td></tr>
<tr>
<td>&nbsp;City:<br/></td>
<td>&nbsp;<input type="text" name="city"/></td></tr>

<tr><td valign="top"><br/></td><td valign="top"><input type="submit" value="save" name="button1" /></td></tr>


</tbody></table></form></fieldset>
<% }
else{
out.print("Sorry username or  password error!");
%>
<jsp:forward page="admin.jsp"></jsp:forward>
<%
}
%>

	</div>
		<div id="column30">
			<h2>Top City</h2> 
			<p><jsp:include page="right.jsp"></jsp:include></p>
		</div>
	</div>
		
	<div id="page">
		<div id="content">
			
			
				<div id="content">
					<img src ="https://images.pexels.com/photos/164572/pexels-photo-164572.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" onclick="admin.jsp" style=" opacity:0.4;filter:alpha(opacity=20);width:940px;height:400px;"/><br/>
					<marquee>THIS IS ADMIN PAGE</marquee>
				
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
	<!-- end #page --> 
</div>
<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="#">city search</a>.</p>
</div>

</body>
</html>