package com.klef.ep.Services;

import com.klef.ep.models.Seller;

public interface SellerService 
{
	public String addSeller(Seller slr);
  public Seller CheckSellerLogin(String email,String password);
  public Seller ViewSellerProfile(int id);
}