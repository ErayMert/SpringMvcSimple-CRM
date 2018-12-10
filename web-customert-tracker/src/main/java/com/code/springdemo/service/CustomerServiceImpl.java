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
}