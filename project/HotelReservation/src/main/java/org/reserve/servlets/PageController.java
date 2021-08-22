package org.reserve.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class PageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PageController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email.equals("abhishek19@gmail.com")&& password.equals("1122") || email.equals("alisha2804@gmail.com")&& password.equals("7921")){
			request.getSession().invalidate();
			HttpSession newSession = request.getSession(true);
			newSession.setMaxInactiveInterval(300);
			Cookie cEmail = new Cookie ("email", email );
			response.addCookie(cEmail);
			response.sendRedirect("customer-list.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp?error=Invalid Password");
		}
	}

}
