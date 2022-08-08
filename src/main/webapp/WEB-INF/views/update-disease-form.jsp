<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Disease</title>
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
			<form:form action="updatenewdisease" method="post" modelAttribute="updatedisease">
				<div>
					<label for="id">Disease id</label>
					<div>
						<form:input path="id" title="Id must be number" 
						pattern="^[0-9]+$"
						 readonly="true" />
					</div>
					<form:errors path="id" cssClass="text-danger" />
				</div>
				<div>
					<label for="diseaseName">Disease Name</label>
					<div>
						<form:input path="diseaseName" 
						title="Name can't be empty And must be in String"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
					<form:errors path="diseaseName" cssClass="text-danger" />
				</div>
				<div>
					<label for="medicine">Medicine</label>
					<div>
						<form:input path="medicine" 
						title="Name can't be empty And must be in String"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
						
					</div>
					<form:errors path="medicine" cssClass="text-danger" />
				</div>
				<div>
					<label for="price">Price </label>
					<div>
						<form:input path="price"
						title="Amount must be number" 
						pattern="^[0-9]+$" />
					</div>
					<form:errors path="price" cssClass="text-danger" />
				</div>
				<div>
					<form:button>Update New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>