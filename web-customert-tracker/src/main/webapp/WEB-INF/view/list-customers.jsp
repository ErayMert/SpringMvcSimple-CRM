<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Customers</title>
</head>
<body>
	
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<br>	
				<h2 style="color: #48D1CC;">CRM - Customer Relationship Manager</h2>
				<br>	
				<table class="table table-hover">
					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach var="theCustomer" items="${customers}">
							<tr>
								<td>${theCustomer.firstName}</td>
								<td>${theCustomer.lastName}</td>
								<td>${theCustomer.email}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<button onclick="window.location.href='showFormForAdd'; return false;" type="button" class="btn btn-primary float-left">Add Customer</button>
			</div>
		</div>
	</div>
</body>
</html>