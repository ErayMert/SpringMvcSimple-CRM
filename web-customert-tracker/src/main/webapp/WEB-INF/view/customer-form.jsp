<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Add Customer</title>
</head>
<body>
	
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<br>
				<h2 style="color: #	E6E6FA">Add New Customer</h2>
				<br>
				
				<form:form action="saveCustomer" modelAttribute="customer" method="POST">
				  
				  <form:hidden path="id"/>
				  
				  <div class="form-row">
				  	 <div class="form-group col-md-9">
					    <label>First Name</label>
					    <form:input path="firstName" class="form-control" placeholder="First Name"/>
					  </div>
					  <div class="form-group col-md-9">
					    <label>Last Name</label>
					    <form:input path="lastName" class="form-control" placeholder="Last Name"/>
					  </div>
					    <div class="form-group col-md-9">
					      <label>Email</label>
					    <form:input path="email" class="form-control" placeholder="Email"/>
					    </div>
				  </div>
				  <input type="submit" value="Save" class="btn btn-primary"/>
				</form:form>
					<br>
					<a style="text-decoration-line:underline clear;" href="${pageContext.request.contextPath}/customer/list">Back to List</a>
			</div>
		</div>
	</div>
</body>
</html>