<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine</title>
<style><%@include file="/WEB-INF/css/form.css"%></s</style>
<script><%@include file="/WEB-INF/js/vaccine.js"%></script>
</head>
<body>
<div >
		<div id="form">
			<form:form action="updatevaccines" method="post" modelAttribute="updatevaccine" class="container" name="form">
				<div>
						<form:input path="vaccineId" 
						title="Name can't be empty"
						required="true" type="hidden"/>
					</div>
				<div class="form-control">
					<label for="vaccineName">Vaccine Name</label>
						<form:input path="vaccineName" name="vaccineName" onblur="vaccineNameCheck();"
						title="Name can't be empty "
						 required="true" pattern="^[a-zA-z\s]+$"
						 placeholder="Enter the vaccine name"/>
					 <form:errors path="vaccineName" cssClass="text-danger" />
				</div><br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div><br>
		<div><a href="/vaccine/adminvaccinelist"><button>Back</button></a></div>
	</div>
	
</body>
</html>