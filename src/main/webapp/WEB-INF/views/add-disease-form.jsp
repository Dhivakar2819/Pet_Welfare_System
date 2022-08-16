<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Disease</title>
<style><%@include file="/WEB-INF/css/form.css"%></style>
<script><%@include file="/WEB-INF/js/disease.js"%></script>
</head>
<body>
<div id="root" >
		<div id="form">
			<form:form action="addnewdisease" method="post" modelAttribute="adddisease" class="container" name="form">
				<div>
						<form:input path="id" 
						title="Name can't be empty"
						required="true" type="hidden"/>
					</div>
				<div class="form-control">
					<label for="diseaseName">Disease Name</label>
						<form:input path="diseaseName" name="diseaseName" onblur="diseaseNameCheck();"
						title="Disease name can't be empty" pattern="^[a-zA-z\s]+$"
						 required="true" placeholder="Enter the medicine name"/>
					<form:errors path="diseaseName" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="medicine">Medicine</label>
						<form:input path="medicine" name="medicine" onblur="medicineCheck();"
						title="Medicine can't be empty" pattern="^[a-zA-z\s]+$"
						 required="true" placeholder="Enter the medicine"/>
					<form:errors path="medicine" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="price">Price </label>
						<form:input path="price" name="price" onblur="priceCheck();"
						title="Amount must be number" 
						pattern="^\d*\.?\d*$" placeholder="Enter the price" />
					<form:errors path="price" cssClass="text-danger" />
				</div>
				<br>
				<div >
					<form:button>Add Disease</form:button>
				</div>
			</form:form>
		</div><br>
		<div><a href="/disease/admindiseaselist"><button class="back">Back</button></a></div>
	</div>
	
</body>
</html>