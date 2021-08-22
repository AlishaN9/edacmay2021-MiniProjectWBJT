package com.cdac.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cdac.dao.UserDaoImpl;
import com.cdac.dao.Userdao;
import com.cdac.entity.users;

public class retrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public retrieveServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

        // Get All User Records
		Userdao userDao=new UserDaoImpl();
		
		List<users> userList = userDao.getAllUser();
        
		HttpSession session=request.getSession();
		session.setAttribute("user", userList);
		
		
		
		for (users users : userList) {
			System.out.println(users);
		}
		
		response.sendRedirect("customer-list.jsp");
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}