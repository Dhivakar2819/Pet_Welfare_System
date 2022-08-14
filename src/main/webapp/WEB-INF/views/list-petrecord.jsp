<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Pet Record List</title>
<style><%@include file="/WEB-INF/css/table.css"%></s
</style>
</head>
<body>
	<div id="table root">
		<table>
		<caption>Pet Records</caption>
			<thead>
				<tr>
					<th>Observe Date</th>
					<th>Observation</th>
					<th>Recover date</th>
					
				</tr>
			</thead>
			<tbody>
			
				<c:forEach var="petrecords" items="${allpetrecords}">
				<tr>
						<td>${petrecords.dateObserv}</td>
						<td>${petrecords.observation}</td>
						<td>${petrecords.recoverDate}</td>
						<tr>
				</c:forEach>	
			</tbody>
		</table><br>
		<div><a href="/admin/index"><button>Back</button></a></div>
	</div>
</body>
</html>