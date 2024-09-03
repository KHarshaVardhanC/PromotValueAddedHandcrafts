package com.klef.ep.Services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Product;


@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class ProductServiceImpl implements ProductService {

	
	
	
	public String AddProduct(Product product) 
	{
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
	   	  em.persist(product);     // insert product
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
	   	  emf.close();
	   	  
	   	  return "Product Inserted Successfully";
	}

	public List<Product> ViewAllProducts() 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
    	 EntityManager em = emf.createEntityManager();
    	  
       em.getTransaction().begin();
       
       Query qry = em.createQuery("   select p from Product p "); // p is an alias of Product class
       List<Product> productlist = qry.getResultList();
    
       em.close();
 	    emf.close();
 	    
 	    return productlist;
	}

	public Product ViewProductByID(int id) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select p from Product p where id=?  "); // atmost one object (0 or 1)
	     qry.setParameter(1, id);
	     
	     Product p = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    p = (Product) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return p;
	}
}
