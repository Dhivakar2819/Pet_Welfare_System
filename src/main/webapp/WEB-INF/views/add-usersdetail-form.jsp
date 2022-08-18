<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User Detail</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/form.css"%></style>
<script><%@include file="/WEB-INF/js/usersDetail.js"%></script>
</head>
<body>
		<div>
		<div>
			<form:form action="adduser" method="post"
				modelAttribute="adduserdetail" class="container" name="form">
				<h3> User Details</h3>
				<div class="form-control">
					<label for="userName">User Name</label>
					<form:input path="userName" name="userName" title="User name can't be empty "
						required="true" placeholder="Enter the user name" pattern="^[a-zA-Z\s]+$"
						onblur="userNameCheck();" />
				</div>
				
				<div class="form-control">
					<label for="email">E Mail Id</label>
					<form:input path="email" title="Mail Id is not in correct format" type="email"
						required="true" placeholder="example@domain.com" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
						name="email" onblur="emailCheck();"/>
					
				</div>
				<div class="form-control">
					<label for="password">Password</label>
					<form:input path="password"
						title='Password must begin with letter and contain atleast one number and must have atleast 8 characters'
						required="true" placeholder="Password@123" type="password"
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						name="password" onblur="passwordCheck();"/>
					
				</div>
				<div class="form-control">
					<label for="phoneNo">Phone no</label>
					<form:input path="phoneNo" title="Phone no can't be empty " type="tel"
						required="true" pattern='[0-9]{10}' placeholder='1234567890'
						name="phoneNo" onblur="numberCheck();"/>
					
				</div>
				<div class="form-control">
					<label for="address">Address</label>

					<form:input path="address" title="Address no can't be empty "
						required="true" placeholder="Enter the address" pattern="^[a-zA-Z0-9\s,. '-]{3,}$" name="address"
						onblur="addressCheck();"/>
				</div>

				<div>
					<form:button class="button">Registration</form:button>
				</div>
				
				${result}
				<div>${message}</div>
			</form:form>
		</div>
		<br>
		<div>
			<a href="/usersdetail/userloginpage" class="back"><em class="fa fa-arrow-circle-o-left" style="font-size:36px"></em></a>
		</div></div>
</body>
</html>