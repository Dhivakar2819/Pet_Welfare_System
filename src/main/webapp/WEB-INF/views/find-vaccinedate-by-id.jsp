<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title> Vaccine Date</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findvdatebyid">
				<div>
					<label for="vaccinationDate">Vaccine Date</label>
					<div>
						<form:input path="vaccinationDate" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>