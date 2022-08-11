<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User Detail</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	background-image:
		url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000");
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
}

table {
	border-spacing: 1;
	border-collapse: collapse;
	background: white;
	border-radius: 6px;
	overflow: hidden;
	max-width: 1000px;
	width: 100%;
	margin: 0 auto;
	position: relative;
	front-size: 15px;
	padding: 15px;
}

th {
	background-color: #04AA6D;
	color: white;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="adduser" method="post"
				modelAttribute="adduserdetail">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" title="User name can't be empty "
							required="true" placeholder="Enter the user name" />
					</div>
					<form:errors path="userName" cssClass="text-danger" />
				</div>
				<div>
					<label for="email">E Mail Id</label>
					<div>
						<form:input path="email" title="Mail Id is not in correct format"
							required="true" placeholder="example@domain.com"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"/>
					</div>
					<form:errors path="email" cssClass="text-danger" />
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password"
							title='Password must begin with letter and contain atleast one number and must have atleast 8 characters'
							required="true" placeholder="Enter the password"
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"/>
					</div>
					<form:errors path="password" cssClass="text-danger" />
				</div>
				<div>
					<label for="phoneNo">Phone no</label>
					<div>
						<form:input path="phoneNo" title="Phone no can't be empty "
							required="true" placeholder="Enter the phone number" />
					</div>
					<form:errors path="phoneNo" cssClass="text-danger" />
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" title="Address no can't be empty "
							required="true" placeholder="Enter the address" />
					</div>
					<form:errors path="address" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Registration</form:button>
				</div><br>
				<${result}>
				<div cssClass="text-danger">${message}</div>
			</form:form>
		</div><br>
		<div><a href="/usersdetail/userloginpage"><button>Back</button></a></div>
	</div>
</body>
</html>