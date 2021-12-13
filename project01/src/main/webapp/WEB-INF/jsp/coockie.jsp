<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String login=(String)session.getAttribute("islogin");
if(login!=null){
Cookie ck[]=request.getCookies();
out.print("<h3>you are logged as:"+ck[0].getValue());
out.print("</h3>");}
%><br/>

</body>
</html>