package com.ntu.cz3002.assignment.controller;


import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
  
public class LoginDao {  
	public static boolean validate(String username,String password){  
		 boolean status=false;  
	     Connection conn = null; 
		 try
		 {  
			   String URL = "jdbc:mysql://localhost/test";
			   Class.forName("com.mysql.jdbc.Driver");
			   conn = DriverManager.getConnection(URL, "root", "password");
			     
			   PreparedStatement ps=conn.prepareStatement(  
			     "select * from user where uname=? and pword=?");  
			   ps.setString(1,username);  
			   ps.setString(2,password);  
			   ResultSet rs=ps.executeQuery();  
			   
			   status=rs.next();  
		 }
		 catch(Exception e){e.printStackTrace();}  
	return status;  
	}  
}