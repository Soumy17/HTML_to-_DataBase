<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*"%>


<%
 String firstName = request.getParameter("firstName");
 String lastName = request.getParameter("lastName");
 String gender = request.getParameter("gender");
 String email = request.getParameter("email");
 String password = request.getParameter("password");
 String number = request.getParameter("number");

 try{
 
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","Soumy@123");
 PreparedStatement ps = conn.prepareStatement("insert into registration(firstname,lastname,gender,email,password,number) values (?,?,?,?,?,?)");
 ps.setString(1, firstName);
 ps.setString(2,lastName);
 ps.setString(3, gender);
 ps.setString(4, email);
 ps.setString(5, password);
 ps.setString(6, number);
 
 ps.executeUpdate();

 out.println("Inserted records into the table..."); 	 

 }
 catch(Exception e)
 {
	 out.println(e);
 }
 
 
 
 %>