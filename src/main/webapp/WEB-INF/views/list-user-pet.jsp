<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.chainsys.petwelfaresystem.services.BreedServices"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User Detail</title>
<style><%@include file="/WEB-INF/css/table.css"%></s
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div id="root">

		<a href="/usersdetail/userloginpage"><button class="back">Log Out</button></a>
		<form:form action="" method="post" modelAttribute="getuser">
			<div>
				<label for="userName">User Name</label>
				<div>
					<form:input path="userName" readonly="true" />
				</div>
			</div>
			<div>
				<label for="email">E Mail Id</label>
				<div>
					<form:input path="email" readonly="true" />
				</div>
			</div>
			<br>
		</form:form>
	</div>
	<div id="petlist">
		<table style="width: 90%" class="container">
			<caption>Pet</caption>
			<thead>
				<tr>
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
			<tbody>
				<c:forEach var="pet" items="${petlist}">
					<tr>

						<td>${pet.petType}</td>
						<td>${pet.petName}</td>
						<td>${pet.dob}</td>
						<td>${pet.gender}</td>
						<td>${pet.dateofOwnership}</td>
						<td><a href="/breed/getbreed?brid=${pet.breedId}">Breed</a></td>
						<td><a href="/petrecord/getpetidinpetrecords?id=${pet.petId}">Pet
								Records</a></td>
						<td><a href="/pet/getvaccinebypetid?id=${pet.petId}">Vaccine
						</a></td>
						<td><a href="/pet/updateformpet?petid=${pet.petId}">Update</a></td>
						<td><a href="/pet/deletepet?petid=${pet.petId}"
							onclick="ConfirmDelete()">delete</a></td>
				</c:forEach>
				
			</tbody>
		</table>
		<a href="/pet/addpet?userId=${userId}">
								<button id="button">Add</button></a>
		<script type="text/javascript">
			function ConfirmDelete() {
				return confirm("Are you sure you want to delete?");
			}
		</script>
</body>
</html>