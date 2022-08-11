<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Pet By Id</title>
<style>
*
{
align :center;}
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
				
			</form:form>
		</div>
		
		<div id="table root">
		<table >
		<caption>Disease</caption>
			<thead>
				<tr>
					<th>Disease Name</th>
					<th>Medicine</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="disease" items="${dieaselist}">
					<tr>
						<td>${disease.diseaseName}</td>
						<td>${disease.medicine}</td>
						<td>${disease.price}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>