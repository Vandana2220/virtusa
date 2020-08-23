package com.virtusa.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.net.*;
import java.util.*;


public class regenerate extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String mail=OTP.getemail();
				System.out.print(mail);
		String u="https://115764aac0cb.ngrok.io/?mail="+mail;
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
