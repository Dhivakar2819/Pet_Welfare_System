<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine</title>
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
			<form:form action="updatevaccines" method="post" modelAttribute="updatevaccine">
				<div>
					<label for="vaccineId">Vaccine Id</label>
					<div>
						<form:input path="vaccineId" 
						title="Id must be number" 
						pattern="^[0-9]+$"
						 readonly="true" />
					</div>
					 <form:errors path="vaccineId" cssClass="text-danger" />
				</div>
				<div>
					<label for="vaccineName">Vaccine Name</label>
					<div>
						<form:input path="vaccineName" 
						title="Name can't be empty And must be in String"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
					 <form:errors path="vaccineName" cssClass="text-danger" />
				</div>
				<div>
					<form:button>Update New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>