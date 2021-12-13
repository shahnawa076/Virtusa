<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
<%@include file="coockie.jsp" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
input{
width:100%;
}
input[type=submit]{
	background-color:white;
	border:none;
	color:black;
	padding:8px;
	margin:4px 2px;
	margin-left:15px;
}
option{
color:black;
}
td{
color:red;
}
</style>

<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">city search</a></h1>
		</div>
	</div>
	<!-- end #header -->
	
	<div id="banner"><img src="https://free4kwallpapers.com/uploads/wallpaper/black-amp-yellow-premium-wallpaper-1024x768-wallpaper.jpg" width="1000" height="361" alt="" /></div>
	<div id="welcome">
		<h2 class="title"><a href="#">Welcome to City Search</a></h2>
	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left.jsp"></jsp:include></p>
		</div>
		<div id="column2">
<%-- <%
String slogin=(String)session.getAttribute("islogin");
if(slogin==null){
request.setAttribute("notlogin_msg","Sorry, Login first for classified");
%>
<jsp:forward page="login1.jsp"></jsp:forward>
<%
}
%> --%>
 
<h1>Post classified!</h1>

<form action="/classifiedprocess">
<table>
<tr>
<td>Type</td>
<td><select name="type">
<option>buy</option>
<option>sell</option>
</select></td>
</tr>
<tr><td>Name</td><td><input type="text" name="name"/></td></tr>
<tr><td>Description</td><td><textarea name="description" rows="10" cols="13"></textarea></td></tr>
<tr><td><input type="submit" value="post feed" align="middle"/></td></tr>
</table>
</form>
<br/><br/><br/><br/>
	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.jsp"></jsp:include></p>
		</div>
	</div>
	
	<div id="page">
		<div id="content">
	<img src ="https://free4kwallpapers.com/uploads/wallpaper/black-amp-yellow-premium-wallpaper-1024x768-wallpaper.jpg" onclick="index.jsp" style="opacity:0.4;filter:alpha(opacity=20);height:400px;width:940px;"/><br/>
					<marquee>WORLDS IN YOUR HAND:CITY SEARCH</marquee>		</div>
		<!-- end #content -->
		<div id="sidebar">
			
		</div>
	</div>
	<!-- end #page --> 
</div>
</div>
<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="#">city search</a>.</p>
</div>

</body>
</html>