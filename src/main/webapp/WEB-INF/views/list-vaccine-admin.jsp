<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vaccine list</title>
</head>
<body >
	<div id="table root" align="center">
		<table>
			<thead>
				<tr>
					<th>Vaccine Id</th>
					<th>Vaccine Name</th>
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vaccine" items="${allvaccine}">
					<tr>
						<td>${vaccine.vaccineId}</td>
						<td>${vaccine.vaccineName}</td>
						<td><a href="/vaccine/updateformvaccine?vacid=${vaccine.vaccineId}">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/vaccine/addnewvaccine">Add</a>
	</div>
</body>
</html>