<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Vaccine</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/form.css"%>
</style>
<script><%@include file="/WEB-INF/js/vaccine.js"%></script>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="addnewvaccine" method="post" modelAttribute="addvaccine" class="container" name="form">
				<div class="form-control">
					<label for="vaccineName">Vaccine Name</label>
						<form:input path="vaccineName" name="vaccineName" onblur="vaccineNameCheck();"
						title="Name can't be empty "
						 required="true" pattern="^[a-zA-z\s]+$"
						 placeholder="Enter the vaccine name"/>
				</div><br>
				<div>
					<form:button>Add New Vaccine</form:button>
				</div>
				${result}
			</form:form>
		</div><br>
		<div><a href="/vaccine/adminvaccinelist" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a></div>
	</div>
	
</body>
</html>