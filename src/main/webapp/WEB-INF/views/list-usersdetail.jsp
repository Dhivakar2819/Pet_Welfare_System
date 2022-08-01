<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Detail</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>User Id</th>
					<th>user Name</th>
					<th>E Mail</th>
					<th>Password</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="usersdetail" items="${alluserdetail}">
					<tr>
						<td>${usersdetail.user_id}</td>
						<td>${usersdetail.user_name}</td>
						<td>${usersdetail.e_mail}</td>
						<td>${usersdetail.password}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>