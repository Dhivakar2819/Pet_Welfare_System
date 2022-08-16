<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Disease List</title>
<style><%@include file="/WEB-INF/css/table.css"%></s
</style>
</head>
<body>
	<div id="table root">
		<table  class="container">
		<caption></caption>
			<thead>
				<tr>
					<th>Disease Id</th>
					<th>Disease Name</th>
					<th>Medicine</th>
					<th>Price</th>
					<th>Update</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="disease" items="${alldisease}">
					<tr>
						<td>${disease.id}</td>
						<td>${disease.diseaseName}</td>
						<td>${disease.medicine}</td>
						<td>${disease.price}</td>
						<td><a href="/disease/updateformdisease?disid=${disease.id}">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table><br>
		<div align="center"><a href="/disease/addformdisease"><button>Add</button></a></div><br>
		<div><a href="/admin/index"><button>Back</button></a></div>
	</div>
</body>
</html>