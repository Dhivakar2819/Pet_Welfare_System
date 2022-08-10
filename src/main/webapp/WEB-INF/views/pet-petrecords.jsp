<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view Pet by Pet Records</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table             { 
  border-spacing: 1; 
  border-collapse: collapse; 
  background:white;
  border-radius:6px;
  overflow:hidden;
  max-width:1000px; 
  width:100%;
  margin:0 auto;
  position:relative;
  front-size:15px;
  padding:15px;
  align:center;
  }
  th {
  background-color: #04AA6D;
  color: white;
}
</style>
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
				<br>
			</form:form>
		</div>
		<div id="table root">
		<table align="center">
			<thead>
				<tr align="center">
					<th>Observe Date</th>
					<th>Observation</th>
					<th>Recover date</th>
					<th>Disease Id</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="petrecords" items="${petrecordslist}">
					<tr align="center">
						<td>${petrecords.dateObserv}</td>
						<td>${petrecords.observation}</td>
						<td>${petrecords.recoverDate}</td>
						
						<td><a href="/disease/getdisease?disid=${petrecords.diseaseId}">Disease Detail</a></td>
						<td><a href="/petrecord/updateformpetrecord?prid=${petrecords.petId}&diseaseid=${petrecords.diseaseId}">Update</a></td>
						<td><a href="/petrecord/deletepetrecord?prid=${petrecords.petId}&diseaseid=${petrecords.diseaseId}">Delete</a></td>
					</tr>
				</c:forEach>
				</table><br><table align="center">	<thead>
				<tr><th>Medicine Name</th>
				<th>Price</th></tr></thead>
					<c:forEach var="diseasePrice" items="${diseasePrice}">
					<br><tr align="center"><td>${diseasePrice.medicine}</td>
					<td>${diseasePrice.price}</td></tr>
					
				</c:forEach>
				<tr><td align="right">total Amount</td><td align="center">${totalAmount}</td></tr>
			</tbody>
		</table><br>
		<br><div align="center">
		<a href="/petrecord/addformpetrecord">Add</a><br>
		<a href="/disease/diseaselist">Disease List</a></div>
	</div>
	</div>
</body>
</html>