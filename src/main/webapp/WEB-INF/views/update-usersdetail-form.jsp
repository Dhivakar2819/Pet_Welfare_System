<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User Detail</title>
</head>
<body>
<div id="root" >
		<div id="form">
			<form:form action="updateuser" method="post" modelAttribute="updateusersdetail">
				<div>
						<form:input path="userId" 
						title="Name can't be empty"
						required="true" type="hidden"/>
					</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" 
						title="User name can't be empty " pattern="^[a-zA-z\s]+$"
						 required="true" placeholder="Enter the user name"/>
					</div>
					<form:errors path="userName" cssClass="text-danger" />
				</div>
				<div>
					<label for="email">E Mail Id</label>
					<div>
						<form:input path="email" 
						title="Mail Id is not in correct format"
						pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true" placeholder="example@domain.com"/>
					</div>
					<form:errors path="email" cssClass="text-danger" />
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" 
						title='Password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true"
						placeholder="Enter the password"/>
					</div>
					<form:errors path="password" cssClass="text-danger" />
				</div>
				<div>
					<label for="phoneNo">Phone no</label>
					<div>
						<form:input path="phoneNo" 
						title="Phone no can't be empty "
						 required="true" pattern='[0-9]{3}-[0-9]{3}-[0-9]{4}'
				placeholder='123-456-7890'/>
					</div>
					<form:errors path="phoneNo" cssClass="text-danger" />
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" 
						title="Address no can't be empty " pattern="^[a-zA-Z0-9\s,. '-]{3,}$"
						 required="true" placeholder="Enter the address"/>
					</div>
					<form:errors path="address" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Update</form:button>
				</div>
				<${result}>
				<div cssClass="text-danger">${message}</div>
			</form:form>
		</div>
	</div>
	
		
</body>
</html>