<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
</head>
<body><div>
<div  class="container" >
		<div id="form">
			<form:form action="" method="post" modelAttribute="getpetid" >
				<table>
				<caption></caption>
				<tr><th></th></tr>
				<tr>
				<td>
					<label for="petType">Pet Type</label>
					
						<form:input path="petType" readonly="true"/>
					</td>
				
				<td>
					<label for="petName">Pet Name</label>
					
						<form:input path="petName" readonly="true"/></td></tr>
					</table><br>
			</form:form>
		</div>
	<div id="vaccinelist">
		<table >
		<caption></caption>
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
		</table><br>
		<table>
		<caption></caption>
		<thead>
		<tr><th>Vaccine name</th></tr>
		</thead>
		<tbody>
		<c:forEach var="vname" items="${vaccineName}">
					<tr>
						<td>${vname.vaccineName}</td>
						</tr></c:forEach>
						
		</tbody>
		</table>
		<a href="/vaccinedate/addformvaccinedate?id=${petId}"><button>Add</button></a>
		
	</div>
	${delete}</div>
	<a href="/usersdetail/getuserpet?id=${userId}" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a>
	</div>
</body>
</html>