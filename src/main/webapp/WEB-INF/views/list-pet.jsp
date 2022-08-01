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
						<td>${pet.id}</td>
						<td>${pet.userId}</td>
						<td>${pet.breedId}</td>
						<td>${pet.petType}</td>
						<td>${pet.petName}</td>
						<td>${pet.dob}</td>
						<td>${pet.gender}</td>
						<td>${pet.dateofOwnership}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>