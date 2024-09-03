package com.klef.ep.beans;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.klef.ep.models.Buyer;
import com.klef.ep.Services.BuyerService;

@ManagedBean(name="byrbean",eager=true)
public class BuyerBean 
{
	private int id;

	    private String email;
	    private String firstname;
	  private String lastname;
	  private String gender;
	  
	  private String dob;
	  private String city;
	  private String designation;
	  private String state;
	  private int pincode ;
	  private String password;
	  private String rpassword;
	    private String contactno;
	    
	    @EJB(lookup="java:global/JSPFinalProject/BuyerServiceImpl!com.klef.ep.Services.BuyerService")
		BuyerService buyerService;
	    
	    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRpassword() {
		return rpassword;
	}
	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	
	
	
	
	
	
	
	
	
	public void byrlogin() throws IOException
	{
		FacesContext facesContext = FacesContext.getCurrentInstance();
        ExternalContext externalContext = facesContext.getExternalContext();
        
        HttpServletRequest request = (HttpServletRequest) externalContext.getRequest();
        HttpServletResponse response = (HttpServletResponse) externalContext.getResponse();
        
        Buyer byr=buyerService.CheckBuyerLogin(email, password);
		
		if(byr!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("byr", byr);
			
			response.sendRedirect("Buyerhome.jsp");
		}
		else
		{
			response.sendRedirect("loginfail.jsp");
		}
		
	}
}
