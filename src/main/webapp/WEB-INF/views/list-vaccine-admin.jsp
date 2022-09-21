<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Vaccine list</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
</head>
<body >
	<div class="container" >
		<table >
		<caption></caption>
			<thead>
				<tr>
					<th>Vaccine Name</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vaccine" items="${allvaccine}">
					<tr>
						<td>${vaccine.vaccineName}</td>
						<td><a href="/vaccine/updateformvaccine?vacid=${vaccine.vaccineId}">Update</a></td>
						<td><a href="/vaccine/deletevaccine?vacid=${vaccine.vaccineId}"
						onclick="if (confirm('Are you sure you want to delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table></div>
		<a href="/vaccine/addformvaccine"><button class="add">Add</button></a><br>
		<div><a href="/admin/index" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a></div>
	
</body>
</html>