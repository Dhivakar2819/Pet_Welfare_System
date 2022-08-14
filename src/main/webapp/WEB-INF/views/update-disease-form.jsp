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
			<form:form action="updatenewdisease" method="post" modelAttribute="updatedisease">
				<div>
						<form:input path="id" 
						title="Name can't be empty"
						required="true" type="hidden"/>
					</div>
				<div>
					<label for="diseaseName">Disease Name</label>
					<div>
						<form:input path="diseaseName" 
						title="Disease name can't be empty" pattern="^[a-zA-z\s]+$"
						 required="true" placeholder="Enter the medicine name"/>
					</div>
					<form:errors path="diseaseName" cssClass="text-danger" />
				</div>
				<div>
					<label for="medicine">Medicine</label>
					<div>
						<form:input path="medicine" 
						title="Medicine can't be empty" pattern="^[a-zA-z\s]+$"
						 required="true" placeholder="Enter the medicine"/>
						
					</div>
					<form:errors path="medicine" cssClass="text-danger" />
				</div>
				<div>
					<label for="price">Price </label>
					<div>
						<form:input path="price"
						title="Amount must be number" 
						pattern="^[0-9]+$" placeholder="Enter the price" />
					</div>
					<form:errors path="price" cssClass="text-danger" />
				</div><br>
				<div>
					<form:button>Update New</form:button>
				</div>
			</form:form>
		</div><br>
		<div><a href="/disease/admindiseaselist"><button>Back</button></a></div>
	</div>
</body>
</html>