<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>view Pet by Pet Records</title>
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
</head>
<body><div>
	<div class="container">
		<div id="form">
		<div  >
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
		<div id="table root">
			<table >
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
				<caption><h5>Medicine Cost</h5></caption>
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
			</table></div>
			<br> <br>
			<div>
				<a href="/petrecord/addformpetrecord?id=${petId}"><button>Add</button></a><br> <a
					href="/disease/diseaselist"><button>Disease List</button></a>
					
			</div>
		
		${delete}
	</div></div><a href="/usersdetail/getuserpet?id=${userId}"><button class="back">Back</button></a></div>
	<script type="text/javascript">
		function ConfirmDelete() {
			return confirm("Are you sure you want to delete?");
		}
	</script>
</body>
</html>