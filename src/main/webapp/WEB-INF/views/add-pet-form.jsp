<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addpet">
				<div>
					<label for="pet_id">Pet id</label>
					<div>
						<form:input path="pet_id" />
					</div>
				</div>
				<div>
					<label for="user_id">User Id</label>
					<div>
						<form:input path="user_id" />
					</div>
				</div>
				<div>
					<label for="breed_id">Breed id</label>
					<div>
						<form:input path="breed_id" />
					</div>
				</div>
				<div>
					<label for="pet_type">Pet Type</label>
					<div>
						<form:input path="pet_type" />
					</div>
				</div>
				<div>
					<label for="pet_name">Pet Name</label>
					<div>
						<form:input path="pet_name" />
					</div>
				</div>
				<div>
					<label for="dob">Date of Birth</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
					<div>
					<label for="date_of_ownership">Date of Ownership</label>
					<div>
						<form:input path="date_of_ownership" />
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>