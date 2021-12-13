package com.virtusa.controller;


import java.io.IOException;

//import org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CityController {
	@GetMapping("admin")
	   public String home1() {
		   return "admin";
	   }
   @GetMapping("/admin1")
     
	   public String adprocess(HttpServletRequest req,HttpServletResponse res) throws IOException {
	   
			 String name=req.getParameter("username");
			 String pass=req.getParameter("userpass");
			 System.out.println(name);
			 if(name.equals("Virtusa") && pass.equals("Virtusa@123")) {
				System.out.println("Success");
			 	//res.sendRedirect("Admin");
			 }else
				 System.out.println("Fails");
			return "adminprocess";
				
   }  
   @GetMapping("/")
   public String home() {
	   return "index";
   }
   @GetMapping("/register")
   public String register() {
	   return "register";
   }
   @GetMapping("/registerprocess")
   public String registerprocess(HttpServletRequest request,HttpServletResponse response) throws Exception{
	  
	   String name=request.getParameter("username");
	   System.out.println(name);
	   String pass=request.getParameter("userpass");
	   String email=request.getParameter("useremail");
	   String address=request.getParameter("useraddress");
	   String country=request.getParameter("usercountry");
	   String contact=request.getParameter("usercontact");
       //PrintWriter out=response.getWriter();
	  
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/citysearch","root","7488432790@Sh");

	   String query="insert into cityuser values(?,?,?,?,?,?,?)";
	   PreparedStatement ps=con.prepareStatement(query);
	   ps.setInt(1,4);//
	   ps.setString(6,name);
	   ps.setString(7,pass);
	   ps.setString(5,email);
	   ps.setString(2,address);
	   ps.setString(4,country);
	   ps.setString(3,contact);

	   int status=ps.executeUpdate();
	   if(status>0){
	   System.out.println("Record Inserted Successfull!!!!");
	   }
  
	   return "index";
   }
   @GetMapping("/adminprocess")
   public String adminprocess() {
	   return "adminprocess";
   }
   @GetMapping("/save")
   public String save(HttpServletRequest request,HttpServletResponse response) throws Exception {
	   String name = request.getParameter("username");
		System.out.println(name);
		//String password = request.getParameter("password");
		String category = request.getParameter("category");
		String email = request.getParameter("usermail");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/citysearch","root","7488432790@Sh");
		PreparedStatement ps=con.prepareStatement("insert into citydetails values(?,?,?,?,?,?,?)");
			ps.setInt(1,3);
			ps.setString(7, name);
			ps.setString(3, category);
			ps.setString(6, email);
			ps.setString(2, address);
			ps.setString(4, city);
			ps.setString(5, contact);
			
			int status = ps.executeUpdate();
			
			if(status>0){
				System.out.println("Record Inserted");
				}
	   return "adminsuccess";
   }
   
   @GetMapping("/adminsuccess")
   public String adminsuccess() {
	   return "adminsuccess";
   }
   @GetMapping("/login1")
   public String login1() {
	   return "loginform";
   }
   @GetMapping("/login")
   public String loginprocess(HttpServletRequest request,HttpServletResponse response) throws Exception {
	   
	
	   String email=request.getParameter("useremail");
	   String password=request.getParameter("userpass");
	   System.out.println(email+" "+ password);
	   boolean status=false;
	   
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/citysearch","root","7488432790@Sh");

	   String query="select * from cityuser where email=? and password=?";
	   PreparedStatement ps=con.prepareStatement(query);
	   ps.setString(1,email);
	   ps.setString(2,password);

	   ResultSet rs=ps.executeQuery();
	   status=rs.next();
	   if(status){
		   System.out.println("record found..");
	   }
	   	   return "loginprocess";
   }
   @GetMapping("/loginprocess")
   public String post1() {
	   return "loginprocess";
   }
   @GetMapping("/postclassified")
   public String post() {
	   return "classified";
   }
   @GetMapping("/classifiedprocess")
   public String process() {
	   return "classifiedprocess";
   }
   @GetMapping("/viewclassified")
   public String view() {
	   return "viewclassified";
   }
   
   
   @GetMapping("/details")
   public String view1() {
	   return "details";
   }
   @GetMapping("/right")
   public String post2() {
	   return "right";
   }
   
   
   
}
