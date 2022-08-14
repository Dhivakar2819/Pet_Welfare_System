<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>view Pet by Pet Records</title>
<style><%@include file="/WEB-INF/css/table.css"%></s
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getpet">

				<table>
					<tr>
						<td><label for="petType">Pet Type</label></td>
						<td><form:input path="petType" readonly="true" /></td>
						<td><label for="petName">Pet Name</label></td>
						<td><form:input path="petName" readonly="true" /></td>
					</tr>
				</table>
				<br>
			</form:form>
		</div>
		<div id="table root">
			<table>
				<caption></caption>
				<thead>
					<tr>
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
						<tr>
							<td>${petrecords.dateObserv}</td>
							<td>${petrecords.observation}</td>
							<td>${petrecords.recoverDate}</td>

							<td><a
								href="/disease/getdisease?disid=${petrecords.diseaseId}">Disease
									Detail</a></td>
							<td><a
								href="/petrecord/updateformpetrecord?prid=${petrecords.petId}&diseaseid=${petrecords.diseaseId}">Update</a></td>
							<td><a
								href="/petrecord/deletepetrecord?prid=${petrecords.petId}&diseaseid=${petrecords.diseaseId}">Delete</a></td>
						</tr>
					</c:forEach>
			</table>
			<br>
			<table>
				<caption>Disease</caption>
				<thead>
					<tr>
						<th>Medicine Name</th>
						<th>Price</th>
					</tr>
				</thead>
				<c:forEach var="diseasePrice" items="${diseasePrice}">
					<br>
					<tr>
						<td>${diseasePrice.medicine}</td>
						<td>${diseasePrice.price}</td>
					</tr>

				</c:forEach>
				<tr>
					<td>total Amount</td>
					<td>${totalAmount}</td>
				</tr>
				</tbody>
			</table>
			<br> <br>
			<div>
				<a href="/petrecord/addformpetrecord?id=${petId}">Add</a><br> <a
					href="/disease/diseaselist">Disease List</a>
			</div>
		</div>
		${delete}
	</div>
	<script type="text/javascript">
		function ConfirmDelete() {
			return confirm("Are you sure you want to delete?");
		}
	</script>
</body>
</html>