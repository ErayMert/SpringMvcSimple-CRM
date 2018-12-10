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
		return null;
	}
	
	@Override
	public void saveCustomer(Customer customer) {
		
		Session session = sessionFactroy.getCurrentSession();
		session.save(customer);	
	}
}
