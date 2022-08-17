<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Breed</title>
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
<body>
<div class="container">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findbreedbyid">
				<div>
					<label for="breedType">Breed Type</label>
					<div>
						<form:input path="breedType" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>