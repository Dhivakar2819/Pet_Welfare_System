<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/form.css"%></style>
<script><%@include file="/WEB-INF/js/pet.js"%></script>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addnewpet" method="post" modelAttribute="addpet" class="container" name="form">
				<div class="form-control">
						<form:input path="userId" title="Id must be number"
							pattern="^[0-9]+$" required="true" type="hidden"/>
					<form:errors path="userId" cssClass="text-danger" />
				</div>

				<div class="form-control">
					<label for="breedId">Breed Type </label>
					<form:select path="breedId">
						<c:forEach var="BreedType" items="${breed}">
							<form:option value="${BreedType.id}"
								label="${BreedType.breedType}" />
						</c:forEach>
					</form:select>
				</div>
				<div class="form-control">
					<label for="petType">Pet Type</label>
						<form:select path="petType">
                    <form:option value="Cow" reqired="required">Cow</form:option>
                    <form:option value="Cat">Cat</form:option>
                    <form:option value="Dog">Dog</form:option>
                    <form:option value="Goat">Goat</form:option>
                    <form:option value="Horse">Horse</form:option>
                </form:select>
						
					<form:errors path="petType" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="petName">Pet Name</label>
						<form:input path="petName" title="Name can't be empty" pattern="^[a-zA-Z\s]+$"
							placeholder="Enter the pet name" required="true" name="petName" onblur="petNameCheck();"/>
					<form:errors path="petName" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="dob">Date of Birth</label>
						<form:input path="dob" type="date" name="dob" onblur="checkDate();" />
				</div>
				<div class="form-control">
					<label for="gender">Gender</label>
						<form:radiobutton path="gender" value="Male" required="required" />
						Male
						<form:radiobutton path="gender" value="Female" />
						Female
					<form:errors path="gender" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="dateofOwnership">Date of Ownership</label>
						<form:input path="dateofOwnership" name="dateofOwnership" type="date" onblur="checkDateOwner();"/>
				</div>
				<br>
				<div>
					<form:button class="button">Add New Pet</form:button></div>
					<div>
				</div>
			</form:form>
			<br>
			<a href="/usersdetail/getuserpet?id=${userId}" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a>
			<div>${result}</div>

		</div>
	</div>
</body>
</html>