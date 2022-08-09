<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.chainsys.petwelfaresystem.Services.BreedServices"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User Detail</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table             { 
  border-spacing: 1; 
  border-collapse: collapse; 
  background:white;
  border-radius:6px;
  overflow:hidden;
  max-width:1000px; 
  width:100%;
  margin:0 auto;
  position:relative;
  front-size:15px;
  padding:15px;
  }
  th {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>

<div id="root" align="center">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getuser">
				<div>
					<label for="userId"></label>
					<div>
						<form:input path="userId" type="hidden" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="email">E Mail Id</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div><br>
				</form:form>
				</div>
				<div id="petlist">
		<table style="width:90%" align="center">

			<thead>
				<tr>
					<!-- <th>Pet Id</th>
					<th>User Id</th>
					<th>Breed Id</th> -->
					<th>Pet Type</th>
					<th>Pet Name</th>
					<th>Date of Birth</th>
					<th>Gender</th>
					<th>Date of Ownership</th>
					<th>Breed</th>
					<th>Pet Records</th>
					<th>Vaccine</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody align="center">
				<c:forEach var="pet" items="${petlist}">
					<tr>
						<%-- <td>${pet.petId}</td>
						<td>${pet.userId}</td>
						<td>${pet.breedId}</td> --%>
						<td>${pet.petType}</td>
						<td>${pet.petName}</td>
						<td>${pet.dob}</td>
						<td>${pet.gender}</td>
						<td>${pet.dateofOwnership}</td>
						<td><a href="/breed/getbreed?brid=${pet.breedId}">Breed</a></td>
						<td><a href="/petrecord/getpetidinpetrecords?id=${pet.petId}">Pet Records</a></td>
						<td><a href="/pet/getvaccinebypetid?id=${pet.petId}">Vaccine </a></td>
						<td><a href="/pet/updateformpet?petid=${pet.petId}">Update</a></td>
						<td><a href="/pet/deletepet?petid=${pet.petId}">delete</a></td>
				</c:forEach>
				
			</tbody>
		</table>
		
		<br>
		<div><a href="/pet/addpet"><button>Add</button></a></div>
		<div><a href="/breed/breedlist"><button>Breed List</button></a></div>
		
	</div>
		</div>
</body>
</html>