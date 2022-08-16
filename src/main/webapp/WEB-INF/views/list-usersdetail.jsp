<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Detail</title>
<style><%@include file="/WEB-INF/css/table.css"%></s
</style>
</head>
<body>
	<div id="table root">
		<table class="container">
		<caption></caption>
			<thead>
				<tr>
					<th>User Name</th>
					<th>E Mail</th>
					<th>Phone no</th>
					<th>Address</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="usersdetail" items="${alluserdetail}">
					<tr>
						<td>${usersdetail.userName}</td>
						<td>${usersdetail.email}</td>
						<td>${usersdetail.phoneNo}</td>
						<td>${usersdetail.address}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table><br>
		<div><a href="/admin/index"><button class="back">Back</button></a></div>
	</div>
</body>
</html>