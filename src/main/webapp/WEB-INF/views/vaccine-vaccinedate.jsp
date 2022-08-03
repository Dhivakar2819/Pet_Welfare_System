<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Vaccine</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getVaccine">
				<div>
					<label for="vaccineId">Vaccine Id</label>
					<div>
						<form:input path="vaccineId" />
					</div>
				</div>
				<div>
					<label for="vaccineName">Vaccine Name</label>
					<div>
						<form:input path="vaccineName" />
					</div>
				</div>
				
			</form:form>
		</div>
		<div id="vaccinedatelist">
		<table>
			<thead>
				<tr>
					<th>Pet Id</th>
					<th>Vaccine Id</th>
					<th>Vaccine Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vdate" items="${vaccinedatelist}">
					<tr>
						<td>${vdate.petId}</td>
						<td>${vdate.vaccineId}</td>
						<td>${vdate.vaccineDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>