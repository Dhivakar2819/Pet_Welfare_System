<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Pet Record List</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
</head>
<body>
	<div class="container">
		<table >
		<caption></caption>
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
		</table><br></div>
		<div><a href="/admin/index" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a></div>
	
</body>
</html>