package com.code.springdemo.dao;

import java.util.List;

import com.code.springdemo.entity.Customer;

public interface CustomerDao {
	
	public List<Customer> getCustomers();
	
	public Customer getCustomer(int id);

	public void saveCustomer(Customer customer);
	
}
