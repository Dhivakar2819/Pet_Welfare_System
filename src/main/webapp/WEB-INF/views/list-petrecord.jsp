<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.springframework.ui.Model" %>
<%@ page import="com.chainsys.petwelfaresystem.Services.DiseaseServices" %>
<%@ page import="com.chainsys.petwelfaresystem.Services.PetRecordServices" %>
<%@ page import="com.chainsys.petwelfaresystem.model.Disease" %>
<%@ page import="com.chainsys.petwelfaresystem.model.PetRecords" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
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
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<c:forEach var="petrecords" items="${allpetrecords}">
					
						<td>${petrecords.petId}</td>
						<td id="id1">${petrecords.diseaseId}</td>
						<td>${petrecords.dateObserv}</td>
						<td>${petrecords.observation}</td>
						<td>${petrecords.recoverDate}</td>
						<td>
						
						<td id="summa"></td>
				</c:forEach>
				<c:forEach var="diseasePrice" items="${diseasePrice}">
					<td>${diseasePrice.Price}</td>
				</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>