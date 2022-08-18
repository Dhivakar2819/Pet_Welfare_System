<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
<title>Breed List</title>
</head>
<body>
	<div id="table root" >
		<table  class="container">
		<caption></caption>
			<thead>
				<tr>
					<th>Breed Id</th>
					<th>Breed Type</th>
					<th>Update</th>
					<th>Delete</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="breed" items="${allbreeds}">
					<tr>
						<td>${breed.id}</td>
						<td>${breed.breedType}</td>
						<td><a href="/breed/updatebreed?brid=${breed.id}">Update</a></td>
						<td><a href="/breed/deletebreed?brid=${breed.id}">Delete</a></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<div><a href="/breed/addbreed"><button class="add">Add</button></a></div>
		<div><a href="/admin/index" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a></div>
	</div>
</body>
</html>