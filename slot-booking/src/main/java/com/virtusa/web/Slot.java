package com.virtusa.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Slot extends HttpServlet {
	public static String book;
    public static String getSlot() {
		return book;
	}
	public static void setSlot(String book) {
		Slot.book = book;
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			
			String book=req.getParameter("slot");
			setSlot(book);
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","");
			Statement stmt=con.createStatement(); 	
			String sql="insert into slots values('"+book+"')";
			stmt.executeUpdate(sql);
	        String sql1="update statusupdate SET status='1' where slot='"+book+"'";
			stmt.executeUpdate(sql1);			
			res.sendRedirect("/slot-booking/details.jsp");
	
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}
	
	