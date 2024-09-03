package com.klef.ep.Services;

import com.klef.ep.models.Buyer;

public interface BuyerService 
{
	public String addBuyer(Buyer byr);
  public Buyer CheckBuyerLogin(String email,String password);
  public Buyer ViewBuyerProfile(int id);
}