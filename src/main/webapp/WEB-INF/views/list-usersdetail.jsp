<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Detail</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
</head>
<body>
	<div class="container">
		<table>
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
		<div><a href="/admin/index" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a></div>
	</div>
</body>
</html>