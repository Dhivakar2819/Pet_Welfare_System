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
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Vaccine Id</th>
					<th>Vaccine Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vaccine" items="${allvaccine}">
					<tr>
						<td>${vaccine.vaccineId}</td>
						<td>${vaccine.vaccineName}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>