<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
  /* background-image: url("https://img.freepik.com/premium-photo/group-pets-posing-around-border-collie-dog-cat-ferret-rabbit-bird-fish-rodent_191971-22249.jpg?w=826" ); */
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table,th, td {
  table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

}
th {
  background-color: #04AA6D;
  color: white;
}
td{
	backgoung-colour: #c4f5dc;
}
</style>
</head>
<body>
<div id="root" align="center">
		<div id="form">
			<form:form action="updateadmindetain" method="post" modelAttribute="updateadmin">
				<div>
					<label for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" title="Id must be number" pattern="^[0-9]+$" readonly="true"/>
					</div>
					<form:errors path="adminId" cssClass="text-danger" />
				</div>
				<div>
					<label for="adminName">Name</label>
					<div>
						<form:input path="adminName" 
						title="Name can't be empty And Admin Name must be in String"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
					<form:errors path="adminName" cssClass="text-danger" />
				</div>
				<div>
					<label for="adminPassword">Password</label>
					<div>
						<form:input path="adminPassword" 
						title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true"/>
					</div>
					<form:errors path="adminPassword" cssClass="text-danger" />
				</div>
				<div>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>