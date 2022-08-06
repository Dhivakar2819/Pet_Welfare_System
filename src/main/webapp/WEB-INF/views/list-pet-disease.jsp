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
					<th>Disease Id</th>
					<th>Disease Name</th>
					<th>Medicine</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="disease" items="${dieaselist}">
					<tr>
						<td>${disease.id}</td>
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