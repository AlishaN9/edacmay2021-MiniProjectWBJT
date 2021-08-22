package com.cdac.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cdac.dao.UserDaoImpl;
import com.cdac.dao.Userdao;
import com.cdac.entity.users;
import com.cdac.helper.FactoryProvider;

public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public updateServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String name=request.getParameter("name");
			String bookingdate=request.getParameter("bookingdate");
			String aadharno=request.getParameter("aadharno");
			String email=request.getParameter("email");
			String address=request.getParameter("address");
			String ph=request.getParameter("ph");
			
			
			int Id=Integer.parseInt(request.getParameter("Id"));
			
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			users users=session.get(users.class, Id);
			 users.setName(name);
			 users.setBookingDate(bookingdate);
			 users.setAadharNo(aadharno);
			 users.setEmail(email);
			 users.setAddress(address);
			 users.setPh(ph);
			 
			
			
			tx.commit();
			session.close();
			
			response.sendRedirect("customer-list.jsp");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}