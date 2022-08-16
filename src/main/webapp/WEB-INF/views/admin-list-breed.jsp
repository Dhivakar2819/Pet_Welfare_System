<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<style><%@include file="/WEB-INF/css/table.css"%></s
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
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="breed" items="${allbreeds}">
					<tr>
						<td>${breed.id}</td>
						<td>${breed.breedType}</td>
						<td><a href="/breed/updatebreed?brid=${breed.id}">Update</a></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<div><a href="/breed/addbreed"><button>Add</button></a></div>
		<div><a href="/admin/index"><button>Back</button></a></div>
	</div>
</body>
</html>