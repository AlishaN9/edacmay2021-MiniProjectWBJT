package org.reserve.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class memberAreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public memberAreaController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		switch (action) {
		case "destroy":
			request.getSession().invalidate();
			Cookie [] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("email")) {
					cookie.setValue(null);
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
			response.sendRedirect("login.jsp");
			break;
			
			default:
				break;
	}
	}

}
