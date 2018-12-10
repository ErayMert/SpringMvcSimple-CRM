package com.code.testdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
/**
 * Servlet implementation class TestDbServlet
 */
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = "root";
		String password = "";
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/crm_mvc?useSsl=false&serverTimezone=UTC";
		
		String driver = "com.mysql.jdbc.Driver";
		
		try {
			PrintWriter out = response.getWriter();
			out.println("Connection to database: " + jdbcUrl);
			Class.forName(driver);
			
			Connection connection = DriverManager.getConnection(jdbcUrl, username, password);
			
			out.println("SUCCESS!!!");
			
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
