<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Disease</title>
<style>
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
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="finddiseasebyid">
			
				<div>
					<label for="id">Disease id</label>
					<div>
						<form:input path="id" readonly="true" />
					</div>
				</div>
				<div>
					<label for="diseaseName">Disease Name</label>
					<div>
						<form:input path="diseaseName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="medicine">Medicine</label>
					<div>
						<form:input path="medicine" readonly="true" />
					</div>
				</div>
				<div>
					<label for="price">Price </label>
					<div>
						<form:input path="price" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>