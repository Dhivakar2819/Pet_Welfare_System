<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Vaccine</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addvaccine">
				<div>
					<label for="vaccineId">Vaccine Id</label>
					<div>
						<form:input path="vaccineId" />
					</div>
				</div>
				<div>
					<label for="vaccineName">Vaccine Name</label>
					<div>
						<form:input path="vaccineName" />
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