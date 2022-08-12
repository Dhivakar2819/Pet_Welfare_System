<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Admin by id</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findadminSbyid">
				<div>
					<label for="adminName">Name</label>
					<div>
						<form:input path="adminName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="email">Password</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="adminPassword">Password</label>
					<div>
						<form:input path="adminPassword" readonly="true"/>
					</div>
				</div>
	
			</form:form>
		</div>
	</div>
</body>
</html>