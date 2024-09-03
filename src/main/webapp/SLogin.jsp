<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html">
<h:head>
  <meta charset="UTF-8"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
  <title>Seller Login</title>
  <link type="text/css"  rel="stylesheet"  href="style.css"/>
  
  
  
</h:head>
<h:body>
 <nav class="navbar">
		<div class="navdiv">
			<div class="logo"><a href="#">Handcrafts</a> </div>
			<ul>
				<li><a href="index.xhtml">Home</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
				<button><a href="BLogin.jsp">Login as a Buyer</a></button>
			</ul>
		</div>
	</nav>
	
<div class="container">
  <h1>Seller Login</h1>
  <form action="checkslrlogin.jsp" method="post">
    <div class="input">
      <label for="email">Email</label><br />
      <input type="email" name="email" id="email" required>
    </div><br></br>
    <div class="input">
      <label for="contactno">Contact No</label>
      <input type="number" name="contactno" id="contactno" required>
    </div><br></br>
    <div class="input">
      <label for="password">Password</label>
      <input type="password" name="password" id="password" required>
    </div><br></br>
    <div class="forgot">
      <a href="#">Forgot Password?</a>
    </div><br></br>
    <button class="btn" type="submit">Sign In</button>
  </form>
  <p>Don't have an account? <a href="Sregistration.jsp">Sign Up</a></p>
</div>
</h:body>
</html>
