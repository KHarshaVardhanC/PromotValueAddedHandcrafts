package com.klef.ep.Services;

import java.util.List;

import com.klef.ep.models.Product;

public interface ProductService {
	 public String AddProduct(Product product);
	   public List<Product> ViewAllProducts();
	   public Product ViewProductByID(int id);
}
