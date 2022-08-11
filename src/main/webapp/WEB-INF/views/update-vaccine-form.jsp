<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine</title>
<style>
*{
align:center;
}
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
			<form:form action="updatevaccines" method="post" modelAttribute="updatevaccine">
				<div>
					<label for="vaccineName">Vaccine Name</label>
					<div>
						<form:input path="vaccineName" 
						title="Name can't be empty "
						 required="true"
						 placeholder="Enter the vaccine name"/>
					</div>
					 <form:errors path="vaccineName" cssClass="text-danger" />
				</div><br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div><br>
		<div><a href="/vaccine/adminvaccinelist"><button>Back</button></a></div>
	</div>
</body>
</html>