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
				<div>
					<label for="petId">Pet id</label>
					<div>
						<form:input path="petId" />
					</div>
				</div>
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="breedId">Breed id</label>
					<div>
						<form:input path="breedId" />
					</div>
				</div>
				<div>
					<label for="petType">Pet Type</label>
					<div>
						<form:input path="petType" />
					</div>
				</div>
				<div>
					<label for="petName">Pet Name</label>
					<div>
						<form:input path="petName" />
					</div>
				</div>
				<div>
					<label for="dob">Date of Birth</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
					</div>
					<div>
					<label for="dateofOwnership">Date of Ownership</label>
					<div>
						<form:input path="dateofOwnership" />
					</div>
				</div>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>