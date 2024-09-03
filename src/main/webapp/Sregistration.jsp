<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Seller Registration</title>
<link type="text/css"  rel="stylesheet"  href="RegStyle.css"/>
</head>
<body>
<nav class="navbar">
		<div class="navdiv">
			<div class="logo"><a href="#">Handcrafts</a> </div>
			<ul>
				<li><a href="index.xhtml">Home</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
			</ul>
		</div>
	</nav><br><br>
	<div class="container">
	
<h1>Seller Registration</h1>
<br><br>
<form action="addSeller.jsp" method="post">

<div class="input">
      <label for="email">Email</label><br />
     <input title="must end with @gmail.com" pattern="[a-zA-Z0-9._+]+[a-z@]+\.[a-z]{2,4}" type="email" name="email" placeholder="Enter Email" required>
    </div><br></br>
    <div class="input">
      <label for="firstname">FirstName</label><br />
      <input pattern="[A-Za-z0-9 ]{2,}" type="text" name="firstname" placeholder="Enter FirstName" required>
    </div><br></br>
    <div class="input">
      <label for="lastname">LastName</label><br />
      <input title="must be alphabets" pattern="[a-zA-Z]+" type="text" name="lastname" placeholder="Enter LastName"    required>
    </div><br></br>
    <div class="input">
      <label for="gender">Gender</label><br />
      <input type="radio" name="gender" value="Male">Male
<input type="radio" name="gender" value="Female">Female
    </div><br></br>
    <div class="input">
      <label for="dob">Date of Birth</label><br />
     <input type="date" name="dob"   required>
    </div><br></br>
    <div class="input">
      <label for="city">City</label><br />
	<input title="must be alphabets" pattern="[a-zA-Z ]+" type="text" name="city" placeholder="Enter City" required>
    </div><br></br>
    <div class="input">
      <label for="designation">Designation</label><br />
	<input type="text" name="designation" placeholder="Enter Designation" required>
    </div><br></br>
    <div class="input">
      <label for="state">State</label><br />
      <input title="must be alphabets" pattern="[a-zA-Z ]+" type="text" name="state" placeholder="Enter State"  required>
    </div><br></br>
    <div class="input">
      <label for="pincode">Pincode</label><br />
	<input title="must be 6 characters" pattern="[0-9]{6,6}" type="number" name="pincode" placeholder="Enter Pincode"  required>
    </div><br></br>
     <div class="input">
      <label for="contactno">Contact Number</label><br />
	<input title="must be 10 characters" pattern="[0-9]{10,10}" type="text" name="contactno" placeholder="Enter Conatact "  required>
    </div><br></br>
    <div class="input">
      <label for="password">New Password</label><br />
	<input title="Length must be in 8-12 characters" pattern="[a-zA-Z0-9@#$]{8,12}" type="password" name="password" placeholder="Password"  required>
    </div><br></br>
    <div class="input">
      <label for="rpassword" >Re-Enter Password</label><br />
	<input title="Length must be in 8-12 characters" pattern="[a-zA-Z0-9@#$]{8,12}" type="password" name="rpassword" placeholder="Re-enter Password"  required>
    </div><br></br>
     
     <button class="btn" type="submit">Sign Up</button>
</form>

</div>
</body>
</html>
