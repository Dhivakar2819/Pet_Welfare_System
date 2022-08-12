<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
</head>
<body>
	<div id="table root">
		<table>
		<caption>Admin</caption>
			<thead>
				<tr>
					<th>Admin Name</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody >
				<c:forEach var="admin" items="${alladmin}">
					<tr>
						<td>${admin.adminName}</td>
						<td><a href="/admin/updateadmin?adid=${admin.adminId}">Update</a></td>
						<td><a href="/admin/deleteadmin?adid=${admin.adminId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/admin/addadmin"><button>Add Admin</button></a>
		<div>${delete}</div>
		<div><a href="/admin/index"><button>Back</button></a></div>
	</div>
</body>
</html>