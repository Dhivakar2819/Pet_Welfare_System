<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find by Id</title>
<style><%@include file="/WEB-INF/css/table.css"%></s
</style>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getbreed">
				<div>
					<label for="breedType">Breed Type</label>
					<div>
						<form:input path="breedType" />
					</div>
				</div>
			</form:form>
		</div>
		<div id="table root">
		<table>
		<caption>Pet Details</caption>
			<thead>
				<tr>
					<th>Pet Type</th>
					<th>Pet Name</th>
					<th>Date of Birth</th>
					<th>Gender</th>
					<th>Date of Ownership</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pet" items="${petlist}">
					<tr >
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
		
	</div>
</body>
</html>