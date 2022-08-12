<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
</head>
<body>
<div id="root" >
		<div id="form">
			<form:form action="" method="post" modelAttribute="getpetid" >
				<table><tr>
				<td>
					<label for="petType">Pet Type</label>
					
						<form:input path="petType" readonly="true"/>
					</td>
				
				<td>
					<label for="petName">Pet Name</label>
					
						<form:input path="petName" readonly="true"/></td></tr>
					</table>
			</form:form>
		</div>
	<div id="vaccinelist">
		<table>
		<caption>Vaccine Date</caption>
			<thead>
				<tr >
					<th>Vaccine Date</th>
					<th>Update Vaccine date</th>
					<th>Delete Vaccine Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vdate" items="${vaccinelist}">
					<tr>
						<td>${vdate.vaccinationDate}</td>
						<td><a href="/vaccinedate/updateformvaccinedate?id=${vdate.petId}&vid=${vdate.vaccineId}">Update</a></td>
						<td><a href="/vaccinedate/deletevaccinedate?id=${vdate.petId}&vid=${vdate.vaccineId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/vaccinedate/addformvaccinedate?id=${petId}">Add vaccine Date</a>
		<a href="/vaccine/vaccinelist">Vaccine Id Details</a>
		<a href="/pet/getvaccinebypetid?id=${userId}">Back</a>
	</div></div>
</body>
</html>