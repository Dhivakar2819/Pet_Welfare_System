<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Pet By Id</title>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findpetbyid">
				<div>
					<label for="petType">Pet Type</label>
					<div>
						<form:input path="petType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="petName">Pet Name</label>
					<div>
						<form:input path="petName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dob">Date of Birth</label>
					<div>
						<form:input path="dob" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true" />
					</div>
					</div>
					<div>
					<label for="dateofOwnership">Date of Ownership</label>
					<div>
						<form:input path="dateofOwnership" readonly="true" />
					</div>
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>