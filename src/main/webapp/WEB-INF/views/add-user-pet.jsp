<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table             { 
  border-spacing: 1; 
  border-collapse: collapse; 
  background:white;
  border-radius:6px;
  overflow:hidden;
  max-width:1000px; 
  width:100%;
  margin:0 auto;
  position:relative;
  front-size:15px;
  padding:15px;
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
		<form:form action="adduserpetform" method="post" modelAttribute="getuser">
		<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" readonly="true" />
					</div>
				</div>
		</form:form>
			<form:form action="adduserpetform" method="post" modelAttribute="petlist">
				<div>
					<label for="petId">Pet id</label>
					<div>
						<form:input path="petId" />
					</div>
				</div>
				
				<div>
					<label for="breedId">Breed id</label>
					<div>
						<form:input path="breedId" />
					</div>
				</div>
				<div>
					<label for="petType">Pet Type</label>
					<div>
						<form:input path="petType" />
					</div>
				</div>
				<div>
					<label for="petName">Pet Name</label>
					<div>
						<form:input path="petName" />
					</div>
				</div>
				<div>
					<label for="dob">Date of Birth</label>
					<div>
						<form:input path="dob" type="date"/>
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
					</div>
					<div>
					<label for="dateofOwnership">Date of Ownership</label>
					<div>
						<form:input path="dateofOwnership" type="date"/>
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>