<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pet Record List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Pet Id</th>
					<th>Disease Id</th>
					<th>Observe Date</th>
					<th>Observation</th>
					<th>Recover date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="petrecords" items="${allpetrecords}">
					<tr>
						<td>${petrecords.pet_id}</td>
						<td>${petrecords.disease_id}</td>
						<td>${petrecords.date_observ}</td>
						<td>${petrecords.observation}</td>
						<td>${petrecords.recover_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>