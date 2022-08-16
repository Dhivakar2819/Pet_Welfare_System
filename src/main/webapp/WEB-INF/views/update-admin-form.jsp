<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Admin</title>
<style><%@include file="/WEB-INF/css/form.css"%></style>
<script><%@include file="/WEB-INF/js/admin.js"%></script>
</head>
<body>
<div id="root" >
		<div id="form">
			<form:form action="updateadmindetain" method="post" modelAttribute="updateadmin" class="container" name="form">
				<div class="form-control">
					<label for="adminName">Name</label>
						<form:input path="adminName" name="adminName"
						title="Name can't be empty" onblur="adminNameCheck();"
						pattern="^[a-zA-z\s]+$" required="true" placeholder="Enter admin name"/>
					<form:errors path="adminName" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="email">E Mail Id</label>
						<form:input path="email" title="Mail Id is not in correct format"
							required="true" placeholder="example@domain.com"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							name="email" onblur="emailCheck();"/>
					<form:errors path="email" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="adminPassword">Password</label>
						<form:input path="adminPassword" name="password" onblur="passwordCheck();"
						title='Password atleast have letter, one number, one special character and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" placeholder="Password " type="password"/>
					<form:errors path="adminPassword" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
			<a href="/admin/adminlist"><button  class="back">Back</button></a>
			<div>${result}</div>
		</div>
	</div>
</body>
</html>