<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
	<script type="">
function Validate2()
 {
    var Email = document.getElementById("mail").value;
    var regx = /^([a-zA-Z0-9\.-]+)@([a-z0-9 -]+).([a-z]{2,8})(.[a-z]{2,8})?$/;
    if(Email.trim() == (""))
    {
        alert("Blank Field");
        fname.style.border = "solid 3px red";
        return false;
    }
    else if(regx.Email(text))
    {
       document.getElementById("lbltext").innerHTML="Valid";
       document.getElementById("lbltext").style.visibility="visible";
       document.getElementById("lbltext").style.color="green";
    }
    else{
        document.getElementById("lbltext").innerHTML="Invalid";
        document.getElementById("lbltext").style.visibility="visible";
        document.getElementById("lbltext").style.color="red";
    }
 }

</script>
</head>
<body style="background-image:url('img/hotel.jpg'); no-repeat; background-size: cover;">

<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				<a href="index.jsp" class="navbar-brand"> Hotel
					Reservation System </a>
			</div>

		</nav>
	</header>


	<div style="position: absolute; top: 0px; width: 100%" ></div>
	
	<main class="form-signin text-center container h-100 d-flex justify-content-center align-items-center">
		<form  class="col-md-4" action="<%=request.getContextPath()%>/PageController" method="post" onsubmit="return Validate2()">
		
			<h1 class="h3 mb-3 fw-normal " style="color:white"><b>Sign in</b></h1>

			<div class="form-floating mt-2">
				<input type="email" class="form-control" id="mail"
					placeholder="name@example.com" name="email" > <label for="mail" class="form-lable">Email
					address</label>
			</div>
			<div class="form-floating mt-2">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password" name="password"> <label for="floatingPassword">Password</label>
			</div>
             <br>
			
			<button class="w-100 btn btn-success" type="submit">Sign
				in</button>

		</form>
		
	</main>
	
	<div style="position: absolute; bottom: 0px; width: 100%"></div> 
	
	<div>
		<footer class="footer mt-auto py-3 bg-dark  text-center">
	  <div class="container">
	    <span class="text-muted">&copy; Hotel Reservation System</span>
	  </div>
	</footer>
		
		</div>
</body>
</html>
