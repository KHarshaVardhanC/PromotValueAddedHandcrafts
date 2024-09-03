<%@page import="com.klef.ep.models.Buyer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
 	Buyer byr=(Buyer)session.getAttribute("byr");
 %>
 
 <!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="RegStyle.css" />
  <title>Document</title>
</head>
<body>

<nav class="navbar">
    <div class="navdiv">
      <div class="logo"><a href="#">Handcrafts</a> </div>
      <ul>
        <li><a href="index.xhtml">Home</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
        <li>
        <div id="pf">
        <span class="material-symbols-outlined" onclick="showProfile()" >
					account_circle
				</span>
				</div>
          <ul id="profile">
          	<li class="sub-item">
              <span class="material-icons-outlined"> account_circle</span>
              <p><%=byr.getFirstname() %></p>
            </li>
            <li class="sub-item">
              <span class="material-icons-outlined"> grid_view </span>
              <p>Dashboard</p>
            </li>
            <li class="sub-item">
              <span class="material-icons-outlined">
                format_list_bulleted
              </span>
              <p>My Orders</p>
            </li>
            <li class="sub-item">
              <span class="material-icons-outlined"> manage_accounts </span>
             <a href="BProfile.jsp"><p> Profile</p></a> 
            </li>
            <li class="sub-item">
              <span class="material-icons-outlined"> logout </span>
              <a href="BLogout.jsp"><p>Logout</p></a>
            </li>
          </ul>
        </li>
        
      </ul>
    </div>
  </nav><br></br>

<h3 align="center">I am in Seller Profile</h3>

Name <%=byr.getFirstname()%><br>
Department <%=byr.getDesignation()%><br>
Date Of Birth<%=byr.getDob()%><br>
Contact No<%=byr.getContactno()%><br>

</body>
</html>
 