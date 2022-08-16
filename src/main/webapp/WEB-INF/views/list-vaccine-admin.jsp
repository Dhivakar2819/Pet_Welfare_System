<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Vaccine list</title>
<style><%@include file="/WEB-INF/css/table.css"%></s
</style>
</head>
<body >
	<div id="table root" >
		<table class="container">
		<caption></caption>
			<thead>
				<tr>
					<th>Vaccine Name</th>
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vaccine" items="${allvaccine}">
					<tr>
						<td>${vaccine.vaccineName}</td>
						<td><a href="/vaccine/updateformvaccine?vacid=${vaccine.vaccineId}">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/vaccine/addformvaccine"><button>Add</button></a><br>
		<div><a href="/admin/index"><button class="back">Back</button></a></div>
	</div>
</body>
</html>