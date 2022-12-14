<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Breed</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/form.css"%></style>
<script><%@include file="/WEB-INF/js/breed.js"%></script>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="addbreed" method="post" modelAttribute="addbreeds" class="container" name="form">
				<div class="form-control">
					<label for="breedType">Breed Type</label>
						<form:input path="breedType" name="breedType" onblur="breedTypeCheck();"
						title="Breed type can't be empty" pattern="^[a-zA-Z\s]+$"
						 required="true" placeholder="Enter the breed type"/>
					<form:errors path="breedType" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Add Breed</form:button>
				</div>
			</form:form>
		</div><br>
		<div><a href="/breed/adminbreedlist" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a></div>
	</div>
	
</body>
</html>