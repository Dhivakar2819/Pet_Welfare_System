<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vaccine Date List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Pet Id</th>
					<th>Vaccine Id</th>
					<th>Vaccine Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vdate" items="${allvdate}">
					<tr>
						<td>${vdate.petId}</td>
						<td>${vdate.vaccineId}</td>
						<td>${vdate.vaccineDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>