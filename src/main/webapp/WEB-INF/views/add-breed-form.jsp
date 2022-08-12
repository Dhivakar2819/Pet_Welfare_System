<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Breed</title>
<style><%@include file="/WEB-INF/css/style.css"%></s</style>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="addbreed" method="post" modelAttribute="addbreeds">
				<div>
					<label for="breedType">Breed Type</label>
					<div>
						<form:input path="breedType" 
						title="Breed type can't be empty"
						 required="true" placeholder="Enter the breed type"/>
					</div>
					<form:errors path="breedType" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Add Breed</form:button>
				</div>
			</form:form>
		</div><br>
		<div><a href="/breed/adminbreedlist"><button>Back</button></a></div>
	</div>
</body>
</html>