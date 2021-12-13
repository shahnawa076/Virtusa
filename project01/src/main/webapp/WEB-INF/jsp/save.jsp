<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
try{	
	String name = request.getParameter("username");
	//System.out.println(name);
	//String password = request.getParameter("password");
	String category = request.getParameter("category");
	String email = request.getParameter("usermail");
	String contact = request.getParameter("contact");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/citysearch","root","7488432790@Sh");
	PreparedStatement ps=con.prepareStatement("insert into citydetails values(?,?,?,?,?,?,?)");
		ps.setInt(1,5);
		ps.setString(2, name);
		ps.setString(3, category);
		ps.setString(4, email);
		ps.setString(5, address);
		ps.setString(6, city);
		ps.setString(7, contact);
		
		int status = ps.executeUpdate();
		
		if(status>0){
			%>
			<jsp:forward page="adminsuccess"></jsp:forward>
			<% 
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>	
</body>
</html>