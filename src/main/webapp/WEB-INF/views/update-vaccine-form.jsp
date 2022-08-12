<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine</title>
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