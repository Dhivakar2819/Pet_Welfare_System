<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Breed</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findbreedbyid">
				<div>
					<label for="breed_id">Breed id</label>
					<div>
						<form:input path="breed_id" />
					</div>
				</div>
				<div>
					<label for="breed_type">Breed Type</label>
					<div>
						<form:input path="breed_type" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>