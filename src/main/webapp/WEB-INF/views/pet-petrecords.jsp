<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view Pet by Pet Records</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getpet">
				
				<table><tr>
					<td><label for="petType">Pet Type</label>
					</td><td>
						<form:input path="petType" readonly="true" />
					</td>
				<td>
					<label for="petName">Pet Name</label>
					</td><td>
						<form:input path="petName" readonly="true"/>
					</td>
				</tr>
				</table>
			</form:form>
		</div>
		<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Pet Id</th>
					<th>Disease Id</th>
					<th>Observe Date</th>
					<th>Observation</th>
					<th>Recover date</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="petrecords" items="${petrecordslist}">
					<tr>
						<td>${petrecords.petId}</td>
						<td>${petrecords.diseaseId}</td>
						<td>${petrecords.dateObserv}</td>
						<td>${petrecords.observation}</td>
						<td>${petrecords.recoverDate}</td>
						
						<td><a href="/disease/getdisease?disid=${petrecords.diseaseId}">Disease Detail</a></td>
						<td><a href="/petrecord/updateformpetrecord?prid=${petrecords.petId}&diseaseid=${petrecords.diseaseId}">Update</a></td>
						<td><a href="/petrecord/deletepetrecord?prid=${petrecords.petId}&diseaseid=${petrecords.diseaseId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/petrecord/addformpetrecord">Add</a>
		<a href="/disease/diseaselist">Disease List</a>
	</div>
	</div>
</body>
</html>