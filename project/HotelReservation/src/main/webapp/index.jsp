<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="EN">
<head>
<meta charset="ISO-8859-1">
<!--  <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	
</head>
<body>

	<header>
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
	        <a class="nav-link text-white" href="login.jsp">Login</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link text-white" href="#">Register</a>
	      </li>

	    </ul>
	  </div>
	</nav>
	</header>
	
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="img/hotel5.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/hotel3.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/hotel4.jpg" alt="Third slide">
    </div>
  </div>
</div>

<!--<img src="img/hotel.jpg" alt="hotel" width="1500" height="600">-->

<footer class="footer mt-auto py-3 bg-dark  text-center">
  <div class="container">
    <span class="text-muted">&copy; Hotel Reservation System</span>
  </div>
</footer>


</body>
</html>
