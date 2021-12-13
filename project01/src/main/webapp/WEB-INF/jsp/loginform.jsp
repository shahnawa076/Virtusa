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
<body>
<fieldset>
<legend style="font-weight:bold;color:blue;bgcolor:grey">Login Form</legend>
<form method="get" action="/login">
<table height="200" >
<tbody>
<tr>
<td>&nbsp;Email Id:<br></td>
<td>&nbsp;<input type="text" name="useremail"></td></tr>
<tr>
<td>&nbsp;Password:</td>
<td>&nbsp;<input type="password" name="userpass"></td></tr>

<tr><td><input type="submit" value="login" name="button1"></td></tr>
</tbody>
</table>
</form>
</fieldset>

</body>
</html>