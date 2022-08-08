<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User Detail</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
<div id="root" align="center">
		<div id="form">
			<form:form action="updateuser" method="post" modelAttribute="updateusersdetail">
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" title="Id must be number" pattern="^[0-9]+$" readonly="true"/>
					</div>
					<form:errors path="userId" cssClass="text-danger" />
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" 
						title="Name can't be empty And User Name must be in String"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
					<form:errors path="userName" cssClass="text-danger" />
				</div>
				<form:errors />
				<div>
					<label for="email">E Mail Id</label>
					<div>
						<form:input path="email" 
						title="Mail Id is not in correct formet"
						pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"/>
					</div>
					<form:errors path="email" cssClass="text-danger" />
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" 
						title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true"/>
					</div>
					<form:errors path="password" cssClass="text-danger" />
				</div>
				
				</div>
				<div>
					<form:button>Update New</form:button>
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>