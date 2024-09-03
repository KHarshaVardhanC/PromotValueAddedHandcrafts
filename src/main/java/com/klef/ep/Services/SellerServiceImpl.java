package com.klef.ep.Services;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Seller;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class SellerServiceImpl implements SellerService {

	

	@Override
	public String addSeller(Seller slr) {
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	       EntityManager em = emf.createEntityManager();
	       
	       em.getTransaction().begin();
	       em.persist(slr);     // insert operation
	       em.getTransaction().commit();
	       
	       em.close();
	       emf.close();
	       
	       return "Record Inserted Successfully";
	}
	
	@Override
	public Seller CheckSellerLogin(String email, String password) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();
         
        em.getTransaction().begin();
        
        Query qry = em.createQuery("  select e from Seller e where email=? and password=?   "); // atmost one object (0 or 1)
      qry.setParameter(1, email);
      qry.setParameter(2, password);
      
      Seller slr= null;
      
      if(qry.getResultList().size() > 0) 
      {
           slr = (Seller)qry.getSingleResult();
      }
      
      em.close();
      emf.close();
    
      return slr;
	}

	@Override
	public Seller ViewSellerProfile(int id) {
		// TODO Auto-generated method stub
		return null;
	}


}
