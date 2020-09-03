package com.virtus.web;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.HttpCookie;


public class Verify extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			String enteredOTP=req.getParameter("otp");
			HttpSession session=req.getSession(false);  
			System.out.println("fasdaff");
				
	        String n=(String)session.getAttribute("OTP");
			if(n.equals(enteredOTP)) {
				session.removeAttribute("OTP");
				res.sendRedirect("/slot-booking/disp.jsp");
			}
			else {
				req.setAttribute("successful","true");
				res.sendRedirect("/slot-booking/otp.jsp");
			}
		}catch(Exception e) {
			
			HttpSession session1=req.getSession(false);
			session1.setAttribute("Message","Failed to send OTP");
			res.sendRedirect("/slot-booking/details.jsp");
		}
		
        
	}

}
