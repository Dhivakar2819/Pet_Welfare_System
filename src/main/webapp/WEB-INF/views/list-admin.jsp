<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Admin Id</th>
					<th>Admin Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${alladmin}">
					<tr>
						<td>${admin.adminId}</td>
						<td>${admin.adminName}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>