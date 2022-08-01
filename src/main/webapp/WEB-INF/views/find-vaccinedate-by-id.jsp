<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Vaccine Date</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findvdatebyid">
				<div>
					<label for="petId">Pet Id</label>
					<div>
						<form:input path="petId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="vaccineId">Vaccine Id</label>
					<div>
						<form:input path="vaccineId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="vaccineDate">Vaccine Date</label>
					<div>
						<form:input path="vaccineDate" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>