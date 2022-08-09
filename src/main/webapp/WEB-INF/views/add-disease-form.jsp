<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Disease</title>
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
<div id="root" align="center">
		<div id="form">
			<form:form action="addnewdisease" method="post" modelAttribute="adddisease">
				<div>
					<label for="id">Disease id</label>
					<div>
						<form:input path="id" title="Id must be number" 
						pattern="^[0-9]+$"
						 required="true" />
					</div>
					<form:errors path="id" cssClass="text-danger" />
				</div>
				<div>
					<label for="diseaseName">Disease Name</label>
					<div>
						<form:input path="diseaseName" 
						title="Name can't be empty And must be in String"
						 required="true"/>
					</div>
					<form:errors path="diseaseName" cssClass="text-danger" />
				</div>
				<div>
					<label for="medicine">Medicine</label>
					<div>
						<form:input path="medicine" 
						title="Name can't be empty And must be in String"
						 required="true"/>
						
					</div>
					<form:errors path="medicine" cssClass="text-danger" />
				</div>
				<div>
					<label for="price">Price </label>
					<div>
						<form:input path="price"
						title="Amount must be number" 
						pattern="^[0-9]+$" />
					</div>
					<form:errors path="price" cssClass="text-danger" />
				</div>
				<div align="center">
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>