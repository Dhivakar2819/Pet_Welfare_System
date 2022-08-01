<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pet List</title>
</head>
<body>
	<div id="table root">
		<table>
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
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pet" items="${allPets}">
					<tr>
						<td>${pet.pet_id}</td>
						<td>${pet.user_id}</td>
						<td>${pet.breed_id}</td>
						<td>${pet.pet_type}</td>
						<td>${pet.pet_name}</td>
						<td>${pet.dob}</td>
						<td>${pet.gender}</td>
						<td>${pet.date_of_ownership}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>