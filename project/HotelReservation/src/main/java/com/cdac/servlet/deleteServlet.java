package com.cdac.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdac.dao.UserDaoImpl;
import com.cdac.dao.Userdao;

public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public deleteServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        
        int getId= Integer.parseInt(request.getParameter("id"));
//        int id=Integer.parseInt(getId);
		Userdao userDao=new UserDaoImpl();
		
		boolean isDeletaed = userDao.deleteUser(getId);
		if(isDeletaed) {
			response.sendRedirect("customer-list.jsp");
		} else {
			System.out.println("Error deleating...");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}