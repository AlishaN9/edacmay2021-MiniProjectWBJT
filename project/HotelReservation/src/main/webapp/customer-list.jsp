<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"  %>
    <%@ page isELIgnored="false" %> 
  <%@page import="java.util.List,org.hibernate.Query,org.hibernate.SessionFactory,org.hibernate.Session,org.hibernate.cfg.Configuration
  " %>
    <%@page import="com.cdac.entity.users" %>
  
    <%@page isErrorPage="false" %> 
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="EN">
<head>
<meta charset="ISO-8859-1">
<title>Hotel Reservation System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<style>
	.hi{
	
	border: solid black 2px;
	
	}
	
	
	</style>
</head>
<body style="margin:0">
<div style="width:100%">
	<header>
	 <nav class="navbar navbar-expand-lg navbar-light bg-dark text-white " style="width:100%";>
	  <h3>Hotel Reservation System</h3>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav ">
	      <li class="nav-item active">
	        <a class="nav-link text-white" href="index.jsp">Home<span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	      <form action="<%=request.getContextPath() %>/memberAreaController" method="post">
	      <input type="hidden" name="action" value="destroy">
	      <input type="submit" value="logout" class="btn btn-outline-secondary"/>
	      </form>
	        
	      </li>
	    </ul>
	  </div>
	</nav>
	</header>
	

	<div class="row m-0 p-0" style="background-image:url('img/hotel6.jpg'); no-repeat; background-size: cover; width: 100%; height: 90vh">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Customer Detail</h3>
			<hr>
			<div class="container text-left">

				<a href="booking-form.jsp" class="btn btn-info">Add
					New Customer</a>
			</div>
			<br>
			<table class="table table-bordered hi text-white">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>BookingDate</th>
						<th>AadharNo</th>
						<th>Email</th>
						<th>Address</th>
						<th>Contact</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>								
	
	<%
										SessionFactory factory = new Configuration().configure().buildSessionFactory();
											Session fSession = factory.openSession();

											Query query2 = fSession.createQuery("from users");
											List<users> listUser = query2.getResultList();

											    
											     for(users users:listUser){
										%>
	<tr>
							<td><%=users.getId() %></td>
							<td><%=users.getName() %></td>
							<td><%=users.getBookingDate() %></td>
							<td><%=users.getAadharNo() %></td>
							<td><%=users.getEmail() %></td>
							<td><%=users.getAddress() %></td>
							<td><%=users.getPh() %></td>
							
							 <td><a href="edit.jsp?id=<%=users.getId() %>"class="btn btn-primary">Edit</a>
								   &nbsp;&nbsp;&nbsp;&nbsp;
								<a href="delete?id=<%=users.getId() %>"class="btn btn-danger">Delete</a></td> 
			</tr>
	
	   	     	
	   	
	<%} %> 
	
				 </tbody>
				 
			</table>
		</div>
	</div>
	

<footer class="footer mt-auto py-3 bg-dark  text-center">
  <div class="container">
    <span class="text-muted">&copy; 2021 Hotel Reservation System</span>
  </div>
</footer>
</div>
<%
String email=null, sessionID=null;
Cookie[] cookies = request.getCookies();
if (cookies != null){
	for(Cookie cookie: cookies){
		if(cookie.getName().equals("email"))
		{
			email = cookie.getValue();
		}
		if(cookie.getName().equals("JSESSIONID")){
			sessionID = cookie.getValue();
		}
	}
}
if(sessionID == null || email == null){
	response.sendRedirect("login.jsp");
}


%>
</body>
</html>