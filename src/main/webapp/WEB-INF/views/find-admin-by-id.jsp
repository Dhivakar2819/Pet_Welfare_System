<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Admin by id</title>
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
			<form:form action="" method="post" modelAttribute="findadminSbyid">
				<div>
					<label for="adminName">Name</label>
					<div>
						<form:input path="adminName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="email">Password</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="adminPassword">Password</label>
					<div>
						<form:input path="adminPassword" readonly="true"/>
					</div>
				</div>
	
			</form:form>
		</div>
	</div>
</body>
</html>