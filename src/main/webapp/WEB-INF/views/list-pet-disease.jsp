<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Pet By Id</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getpet">
				<div>
					<label for="petId">Pet id</label>
					<div>
						<form:input path="petId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="breedId">Breed id</label>
					<div>
						<form:input path="breedId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="petType">Pet Type</label>
					<div>
						<form:input path="petType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="petName">Pet Name</label>
					<div>
						<form:input path="petName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dob">Date of Birth</label>
					<div>
						<form:input path="dob" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true" />
					</div>
					</div>
					<div>
					<label for="dateofOwnership">Date of Ownership</label>
					<div>
						<form:input path="dateofOwnership" readonly="true" />
					</div>
				</div>
				
			</form:form>
		</div>
		
		<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Disease Id</th>
					<th>Disease Name</th>
					<th>Medicine</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="disease" items="${dieaselist}">
					<tr>
						<td>${disease.id}</td>
						<td>${disease.diseaseName}</td>
						<td>${disease.medicine}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>