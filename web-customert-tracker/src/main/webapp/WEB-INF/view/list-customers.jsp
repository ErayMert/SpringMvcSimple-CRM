<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Customers</title>

<style type="text/css">

	 .searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    background-color: #353b48;
    border-radius: 30px;
    padding: 10px;
    }

    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
    width: 0;
    line-height: 40px;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_input{
    padding: 0 10px;
    width: 450px;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_icon{
    background: white;
    color: #e74c3c;
    }

    .search_icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color:white;
	
</style>
</head>
<body>
	
	<div class="container">
		<div class="row">	
			<div class="col-md-9">
				<br>	
				<h2 style="color: #48D1CC;">CRM - Customer Relationship Manager</h2>
				<br>
				<nav class="navbar navbar-light bg-light">
				  <form:form action="search" method="POST" class="form-inline">
				    <input class="form-control mr-sm-2" type="search" name="theSearchName" placeholder="Search" aria-label="Search">
				    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				  </form:form>
				</nav>
				
				<br>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach var="theCustomer" items="${customers}">
						
							<c:url var="updateLink" value="/customer/showFormForUpdate">
								<c:param name="customerId" value="${theCustomer.id}"></c:param>
							</c:url>
							
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="customerId" value="${theCustomer.id}"></c:param>
							</c:url>
							
							<tr>
								<td>${theCustomer.firstName}</td>
								<td>${theCustomer.lastName}</td>
								<td>${theCustomer.email}</td>
								<td>									
									<a href = ${updateLink} class="btn btn-success btn-sm" role="button"> Update</a>
									<a href = ${deleteLink} onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false" class="btn btn-danger btn-sm" role="button"> Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<button onclick="window.location.href='showFormForAdd'; return false;" type="button" class="btn btn-info ">Add Customer</button>
			</div>
		</div>
	</div>
</body>
</html>