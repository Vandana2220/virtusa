package com.virtusa.web;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import com.virtusa.web.CustLogin;


public class Set_slot extends HttpServlet {
	public static String date;
    public static String getDate() {
		return date;
	}
	public static void setDate(String date) {
		Set_slot.date= date;
	}
	public static String totime;
    public static String getTime() {
		return totime;
	}
	public static void setTime(String time) {
		Set_slot.totime = time;
	}
	

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException {
		try {
		
			 // String user=req.getParameter("user");
				String tye=req.getParameter("type_veh");
				String s[]=req.getParameter("date").split(" ");
				String date=s[0];
				setDate(date);
				String time[]=s[1].split(":");
				String totime=(Integer.parseInt(time[0])+1)+":"+time[1];
				setTime(totime);
				String fromtime=time[0]+":"+time[1];
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtusa","root","");
				Statement stmt=con.createStatement(); 			
				String sql="insert into parking values('"+CustLogin.getUser()+"','"+date+"','"+fromtime+"','"+totime+"','"+tye+"')";
				
				stmt.executeUpdate(sql);
				res.sendRedirect("/slot-booking/level.jsp");
			
			
		}catch(Exception e) {
			
		}
		
	}

}
