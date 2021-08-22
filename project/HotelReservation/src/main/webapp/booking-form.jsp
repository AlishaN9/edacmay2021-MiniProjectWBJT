<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>

<html>
<head>
<title>Alumni</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
	crossorigin="anonymous"></script>

</head>
<body style="background-image:url('img/hotel.jpg'); no-repeat; background-size: cover;">

	
	  <nav class="navbar navbar-expand-lg navbar-light bg-dark text-white">
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
	        <a class="nav-link text-white" href="#">Customer</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<br>

	<main
		class="form-signin text-center container h-100 d-flex justify-content-center align-items-center">
		 <form class="col-md-4" action="insert">
			<!--<img class="mb-4"
				src=""
				alt="" width="72" height="57"> -->
			<h1 class="h3 mb-3 fw-normal">Please Fill Details</h1>

			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingInput"
					placeholder="name@example.com" name="name" required> <label
					for="floatingInput">Name</label>
			</div>
			
			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingInput"
					placeholder="name@example.com" name="bkgdate" required> <label
					for="floatingInput">Booking Date</label>
			</div>
			
			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingInput"
					placeholder="name@example.com" name="aadharno" required> <label
					for="floatingInput">Aadhar No</label>
			</div>
			
			
			<div class="form-floating mt-2">
				<input type="email" class="form-control" id="floatingInput"
					placeholder="name@example.com" name="email" required> <label
					for="floatingInput">Email address</label>
			</div>
			
			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingInput"
					placeholder="name@example.com" name="address" required> <label
					for="floatingInput">Address</label>
			</div>
			
			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingInput"
					placeholder="name@example.com" name="ph" required> <label
					for="floatingInput">Contact</label>
			</div>
			
			
			<!--  <div class="form-floating mt-2">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password" name="password"> <label
					for="floatingPassword">Password</label>
			</div>

			<div class="checkbox mb-3 mt-2">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div> -->
			<br>
			<button class="w-100 btn btn-lg btn-success" type="submit">Submit
				</button>

		</form>
	</main>
	
<footer class="footer mt-auto py-3 bg-dark  text-center">
  <div class="container">
    <span class="text-muted">&copy; 2021 Hotel Reservation System</span>
  </div>
</footer>
</body>
</html>
