<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine Date</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatevdate">
				<div>
					<label for="pet_id">Pet Id</label>
					<div>
						<form:input path="pet_id" />
					</div>
				</div>
				<div>
					<label for="vaccine_id">Vaccine Id</label>
					<div>
						<form:input path="vaccine_id" />
					</div>
				</div>
				<div>
					<label for="vaccine_date">Vaccine Date</label>
					<div>
						<form:input path="vaccine_date" />
					</div>
				</div>
				<div>
					<form:button>Update New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>