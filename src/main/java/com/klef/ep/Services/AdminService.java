package com.klef.ep.Services;

import java.util.List;

import com.klef.ep.models.Admin;
import com.klef.ep.models.Buyer;
import com.klef.ep.models.Seller;

public interface AdminService 
{
   public Admin CheckAdminLogin(String username,String password);
   public String AddBuyer(Buyer byr);
   public String AddSeller(Seller slr);
   public List<Buyer> ViewAllSeller();
   public List<Seller> ViewAllBuyer();
}