package com.virtusa.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.net.*;
import java.util.*;

public class OTP extends HttpServlet {
	public static String email;
	public static String getemail() {
		return email;
	}
	public static void setemail(String email) {
		OTP.email =email;
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name=req.getParameter("name"),email=req.getParameter("email"),contact=req.getParameter("contact");
		setemail(email);
		String u="https://115764aac0cb.ngrok.io/?mail="+email;
		 URL url = new URL(u);
		 HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		 conn.setRequestMethod("GET");
		 conn.setRequestProperty("Content-Type","application/x-www-form-urlencoded");
         Scanner sc = new Scanner(url.openStream());
         String inline="";
         while(sc.hasNext()){
	    	 inline+=sc.nextLine();
         }
         String s[]=inline.split(":"); 
//         res.sendError(200);
         inline=s[1].substring(0,s[1].length()-1 );
    
         HttpSession session=req.getSession();  
         session.setAttribute("OTP",inline);
         res.sendRedirect("/slot-booking/otp.jsp");
        
	}
}
