<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>view Pet by Pet Records</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
</head><div>
		<div class="container">
		
			<form:form action="" method="post" modelAttribute="getpet">

				
				<table>
			
				<caption></caption>
					<tr>
						<th><label for="petType">Pet Type</label></th>
						<th><form:input path="petType" readonly="true" /></th>
						<th><label for="petName">Pet Name</label></th>
						<th><form:input path="petName" readonly="true" /></th>
					</tr>
				</table>
				<br>
			</form:form>
		</div>
		
		
		<div class="grid-container">
		<div class="grid-item">
			<table>
				<caption></caption>
				<thead>
					<tr>
						<th>Disease</th>
						<th>Medicine Name</th>
						<th>Price</th>
					</tr>
				</thead><tbody>
				<c:forEach var="diseasePrice" items="${diseasePrice}">
					<br>
					<tr>
						<td>${diseasePrice.diseaseName}</td>
						<td>${diseasePrice.medicine}</td>
						<td>${diseasePrice.price}</td>
					</tr>

				</c:forEach>
				
				</tbody>
			</table></div>
		
		
		<div class="grid-item">
			<table >
				<caption></caption>
				<thead>
					<tr>
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
							<td>${petrecords.dateObserv}</td>
							<td>${petrecords.observation}</td>
							<td>${petrecords.recoverDate}</td>

							<td><a
								href="/petrecord/updateformpetrecord?prid=${petrecords.petId}&diseaseid=${petrecords.diseaseId}">Update</a></td>
							<td><a
								href="/petrecord/deletepetrecord?prid=${petrecords.petId}&diseaseid=${petrecords.diseaseId}"
								onclick="if (confirm('Are you sure you want to delete?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;">Delete</a></td>
						</tr>
					</c:forEach></tbody>
			</table>
			</div>
			</div>
			
				<div><h4>Total Amount  :  ${totalAmount}</h4></div>
				
			<br> <br>
			<div>
				<a href="/petrecord/addformpetrecord?id=${petId}"><button>Add</button></a><br> <a
					href="/disease/diseaselist"><button>Disease List</button></a>
					
			</div>
			
		
		<div>${delete}</div></div>
<a href="/usersdetail/getuserpet" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a>
	
</body>
</html>