package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Buyer_table")
public class Buyer implements Serializable
{
	
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)  // auto_increment
  private int id;

  @Column(length = 40,nullable = false,unique = true)
    private String email;
    @Column(length = 20,nullable = false)
    private String firstname;
  @Column(length = 10,nullable = false)
  private String lastname;
  @Column(length = 10,nullable = false)
  private String gender;
  
  @Column(length = 12,nullable = false)
  private String dob;
  @Column(length = 20,nullable = false)
  private String city;
  @Column(length = 20,nullable = false)
  private String designation;
  @Column(length = 30,nullable = false)
  private String state;
  @Column(length = 10,nullable = false)
  private int pincode ;
  @Column(length = 20,nullable = false)
  private String password;
  @Column(length = 20,nullable = false)
  private String rpassword;
  @Column(length = 12,nullable = false, unique=true)
    private String contactno;
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
  
}