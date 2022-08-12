<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
</head>
<body>
<div id="root" >
		<div id="form">
			<form:form action="addadmindetail" method="post" modelAttribute="addadmin">
			<br>
				<div>
					<label for="adminName">Name</label>
					<div>
						<form:input path="adminName" 
						title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true" placeholder="Enter admin name"/>
					</div>
					<form:errors path="adminName" cssClass="text-danger" />
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
					<label for="adminPassword">Password</label>
					<div>
						<form:input path="adminPassword" 
						title='Password atleast have letter, one number, one special character and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" placeholder="Password " type="password"/>
					</div>
					<form:errors path="adminPassword" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Create Account</form:button>
					
					
				</div>
			</form:form>
			<a href="/admin/adminlogin"><button>Sign in</button></a>
		</div>
		<div>${result}${message}
					</div>
	</div>
</body>
</html>