<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Vaccine</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findvaccinebyid">
				<div>
					<label for="vaccine_id">Vaccine Id</label>
					<div>
						<form:input path="vaccine_id" />
					</div>
				</div>
				<div>
					<label for="vaccine_name">Vaccine Name</label>
					<div>
						<form:input path="vaccine_name" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>