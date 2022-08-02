<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Breed</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatebreed" method="post" modelAttribute="updatebreeds">
				<div>
					<label for="id">Breed id</label>
					<div>
						<form:input path="id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="breedType">Breed Type</label>
					<div>
						<form:input path="breedType" />
					</div>
				</div>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>