package com.cdac.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdac.dao.UserDaoImpl;
import com.cdac.dao.Userdao;
import com.cdac.entity.users;

public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InsertServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Insert Student
		
		
		String name = request.getParameter("name");
		String bookingdate = request.getParameter("bkgdate");
		String aadharno = request.getParameter("aadharno");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String ph = request.getParameter("ph");
		
		
		
		users users = new users(name, bookingdate, aadharno, email, address, ph);
		
		Userdao userDao=new UserDaoImpl();	
		int userInserted = 0;
		userInserted = userDao.insertUser(users);
		System.out.println("User Inserted: "+userInserted);
		
		RequestDispatcher rd = request.getRequestDispatcher("retrive");
		rd.forward(request, response);    
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}