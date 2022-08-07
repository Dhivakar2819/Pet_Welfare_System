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
<style>
body {
  /* background-image: url("https://img.freepik.com/premium-photo/group-pets-posing-around-border-collie-dog-cat-ferret-rabbit-bird-fish-rodent_191971-22249.jpg?w=826" ); */
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table,th, td {
  table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

}
th {
  background-color: #04AA6D;
  color: white;
}
td{
	backgoung-colour: #c4f5dc;
}
</style>
</head>
<body>

<div id="root" align="center">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getuser">
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" readonly="true"/>
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
				</div>
				</form:form>
				</div>
				<div id="petlist">
		<table style="width:90%" align="center">

			<thead>
				<tr>
					<th>Pet Id</th>
					<th>User Id</th>
					<th>Breed Id</th>
					<th>Pet Type</th>
					<th>Pet Name</th>
					<th>Date of Birth</th>
					<th>Gender</th>
					<th>Date of Ownership</th>
					<th>Breed Name</th>
					<th>Pet Records</th>
					<th>Vaccine Date</th>
					<th>update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody align="center">
				<c:forEach var="pet" items="${petlist}">
					<tr>
						<td>${pet.petId}</td>
						<td>${pet.userId}</td>
						<td>${pet.breedId}</td>
						<td>${pet.petType}</td>
						<td>${pet.petName}</td>
						<td>${pet.dob}</td>
						<td>${pet.gender}</td>
						<td>${pet.dateofOwnership}</td>
						<td><a href="/breed/getbreed?brid=${pet.breedId}">Breed</a></td>
						<td><a href="/petrecord/getpetidinpetrecords?id=${pet.petId}">Pet Records</a></td>
						<td><a href="/pet/getvaccinebypetid?id=${pet.petId}">Vaccine detail</a></td>
						<td><a href="/pet/updateformpet?petid=${pet.petId}">Update</a></td>
						<td><a href="/pet/deletepet?petid=${pet.petId}">Delete</a></td>
				</c:forEach>
				<%-- <td><a href="updateuserform?userId=${user.userid }"><input
                                    onclick="change()" type="button" value="Update" id="myButton1"></input></a></td> --%>
			</tbody>
		</table>
		<div><a href="/pet/addpet">Add</a></div>
		<div><a href="/breed/breedlist">Breed List</a></div>
		
	</div>
		</div>
</body>
</html>