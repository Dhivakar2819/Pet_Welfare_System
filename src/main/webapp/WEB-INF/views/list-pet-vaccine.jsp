<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
</head>
<body>
<div id="root" align="center">
		<div id="form" align="center">
			<form:form action="" method="post" modelAttribute="getpet">
				<table><tr>
				<td>
					<label for="petType">Pet Type</label>
					</td><td>
						<form:input path="petType" />
					</td>
				
				<td>
					<label for="petName">Pet Name</label></td>
					<td>
						<form:input path="petName" /></td></tr>
					</table>
			</form:form>
		</div>
	<div id="vaccinelist" align="center">
		<table>
			<thead>
				<tr>
					<th>Pet Id</th>
					<th>Vaccine Id</th>
					<th>Vaccine Date</th>
					<!-- <th>Vaccine name</th> -->
					<th>Update Vaccine date</th>
					<th>Delete Vaccine Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vdate" items="${vaccinelist}">
					<tr>
						<td>${vdate.petId}</td>
						<td>${vdate.vaccineId}</td>
						<td>${vdate.vaccineDate}</td>
						<!-- <td>acti -->
						<td><a href="/vaccinedate/updateformvaccinedate?id=${vdate.petId}&vid=${vdate.vaccineId}">Update</a></td>
						<td><a href="/vaccinedate/deletevaccinedate?id=${vdate.petId}&vid=${vdate.vaccineId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<form:button><a href="/vaccinedate/addformvaccinedate">Add vaccine Date</a></form:button>
		<form:button><a href="/vaccine/vaccinelist">Vaccine Id Details</a></form:button>
	</div>
</body>
</html>