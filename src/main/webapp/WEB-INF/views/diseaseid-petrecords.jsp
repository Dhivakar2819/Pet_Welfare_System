<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Disease</title>
<style>
body {
  /* background-image: url("https://img.freepik.com/premium-photo/group-pets-posing-around-border-collie-dog-cat-ferret-rabbit-bird-fish-rodent_191971-22249.jpg?w=826" ); */
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table,th, td {
  table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

}
th {
  background-color: #04AA6D;
  color: white;
}
td{
	backgoung-colour: #c4f5dc;
}
</style>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdisease">
				<div>
					<label for="id">Disease id</label>
					<div>
						<form:input path="id" />
					</div>
				</div>
				<div>
					<label for="diseaseName">Disease Name</label>
					<div>
						<form:input path="diseaseName" />
					</div>
				</div>
				<div>
					<label for="medicine">Medicine</label>
					<div>
						<form:input path="medicine" />
					</div>
				</div>
				<div>
					<label for="price">Price </label>
					<div>
						<form:input path="price" />
					</div>
				</div>
			</form:form>
		</div>
		<div id="diseaselist">
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
				<c:forEach var="petrecords" items="${diseaselist}">
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