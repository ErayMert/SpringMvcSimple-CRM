package com.code.springdemo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.code.springdemo.entity.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactroy;
	
	@Override
	public List<Customer> getCustomers() {
		
		Session session = sessionFactroy.getCurrentSession();
		
		// create a query sort by last name
		List<Customer> list = session.createQuery("from Customer order by lastName", Customer.class).getResultList();

		return list;
	}

	@Override
	public Customer getCustomer(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactroy.getCurrentSession();
		
		Customer customer = session.get(Customer.class, id);
		
		return customer;
	}
	
	@Override
	public void saveCustomer(Customer customer) {
		
		Session session = sessionFactroy.getCurrentSession();
		
		// save / update Customer object
		session.saveOrUpdate(customer);	
	}
	
	@Override
	public void deleteCustomer(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactroy.getCurrentSession();
		
		Query query = session.createQuery("delete from Customer where id=:customerId");
		
		query.setParameter("customerId", id);
		
		query.executeUpdate();
	}
	
	@Override
	public List<Customer> searchCustomers(String theSearchName) {
		// TODO Auto-generated method stub
		Session session = sessionFactroy.getCurrentSession();
		
		Query query = null;
		
		if(theSearchName != null && theSearchName.trim().length()>0)
		{
			query = session.createQuery("from Customer where lower(firstName) like :theName or lower(lastName) like :theName",Customer.class);
			
			query.setParameter("theName", "%" + theSearchName.toLowerCase());
		}
		else
			query = session.createQuery("from Customer", Customer.class);
		
		List<Customer> customers = query.getResultList();
		
		return customers;
	}
}
