<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Disease</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="finddiseasebyid">
			
				<div>
					<label for="diseaseName">Disease Name</label>
					<div>
						<form:input path="diseaseName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="medicine">Medicine</label>
					<div>
						<form:input path="medicine" readonly="true" />
					</div>
				</div>
				<div>
					<label for="price">Price </label>
					<div>
						<form:input path="price" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>