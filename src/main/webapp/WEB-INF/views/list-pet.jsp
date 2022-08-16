<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Pet List</title>
<style><%@include file="/WEB-INF/css/table.css"%></s
</style>
</head>
<body>
	<div id="table root">
		<table  class="container">
		<caption></caption>
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
				<c:forEach var="pet" items="${allPets}">
					<tr >
						<td>${pet.petType}</td>
						<td>${pet.petName}</td>
						<td>${pet.dob}</td>
						<td>${pet.gender}</td>
						<td>${pet.dateofOwnership}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table><br>
		<div><a href="/admin/index"><button  class="back">Back</button></a></div>
	</div>
</body>
</html>