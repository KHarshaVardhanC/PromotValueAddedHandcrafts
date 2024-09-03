<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.klef.ep.Services.SellerService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Seller"%>
    
    
<%

InitialContext context=new InitialContext();
SellerService sellerService=(SellerService)context.lookup("java:global/JSPFinalProject/SellerServiceImpl!com.klef.ep.Services.SellerService");


String email=request.getParameter("email");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String city=request.getParameter("city");
String designation=request.getParameter("designation");
String state=request.getParameter("state");
String pin=request.getParameter("pincode");
int pincode=Integer.parseInt(pin);
String password=request.getParameter("password");
String rpassword=request.getParameter("rpassword");
String contactno=request.getParameter("contactno");

Seller slr=new Seller();

slr.setEmail(email);
slr.setFirstname(firstname);
slr.setLastname(lastname);
slr.setGender(gender);
slr.setDob(dob);
slr.setCity(city);
slr.setDesignation(designation);
slr.setState(state);
slr.setPincode(pincode);
slr.setPassword(password);
slr.setRpassword(rpassword);
slr.setContactno(contactno);

sellerService.addSeller(slr);

response.sendRedirect("addslrsuccess.jsp");

%>