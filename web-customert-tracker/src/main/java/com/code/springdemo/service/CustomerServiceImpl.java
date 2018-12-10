package com.code.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.springdemo.dao.CustomerDao;
import com.code.springdemo.entity.Customer;


@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerDao.getCustomers();
	}
	
	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		 customerDao.saveCustomer(customer);		
	}
	
	@Override
	@Transactional
	public Customer getCustomer(int id) {
		// TODO Auto-generated method stub
		return customerDao.getCustomer(id);
	}
	
	@Override
	@Transactional
	public void deleteCustomer(int id) {
		// TODO Auto-generated method stub
		customerDao.deleteCustomer(id);
	}
	
	@Override
	@Transactional
	public List<Customer> searchCustomers(String theSearchName){
		return customerDao.searchCustomers(theSearchName);
	}
}
