package com.klef.ep.Services;


import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import com.klef.ep.models.Buyer;


@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class BuyerServiceImpl implements BuyerService{

	@Override
	public String addBuyer(Buyer byr) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	       EntityManager em = emf.createEntityManager();
	       
	       em.getTransaction().begin();
	       em.persist(byr);     // insert operation
	       em.getTransaction().commit();
	       
	       em.close();
	       emf.close();
	       
	       return "Record Inserted Successfully";
	}


	@Override
	public Buyer CheckBuyerLogin(String email, String password) {
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
         EntityManager em = emf.createEntityManager();
          
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select e from Buyer e where email=? and password=?   "); // atmost one object (0 or 1)
       qry.setParameter(1, email);
       qry.setParameter(2, password);
       
       Buyer byr= null;
       
       if(qry.getResultList().size() > 0) 
       {
            byr = (Buyer) qry.getSingleResult();
       }
       
       em.close();
       emf.close();
     
       return byr;
	}

	@Override
	public Buyer ViewBuyerProfile(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
