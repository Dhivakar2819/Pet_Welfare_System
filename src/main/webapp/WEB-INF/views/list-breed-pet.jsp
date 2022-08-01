<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find by Id</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getbreed">
				<div>
					<label for="id">Breed id</label>
					<div>
						<form:input path="id" />
					</div>
				</div>
				<div>
					<label for="breed_type">Breed Type</label>
					<div>
						<form:input path="breed_type" />
					</div>
				</div>
			</form:form>
		</div>
		<div id="petlist">
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
				<c:forEach var="pet" items="${petlist}">
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
		
	</div>
</body>
</html>