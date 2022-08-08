<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Breed</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatebreed" method="post" modelAttribute="updatebreeds">
				<div>
					<label for="id">Breed id</label>
					<div>
						<form:input path="id" title="Id must be number" 
						pattern="^[0-9]+$"  readonly="true" />
					</div>
					<form:errors path="id" cssClass="text-danger" />
				</div>
				<div>
					<label for="breedType">Breed Type</label>
					<div>
						<form:input path="breedType" 
						title="Breed type can't be empty And must be in String"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
					<form:errors path="breedType" cssClass="text-danger" />
				</div>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>