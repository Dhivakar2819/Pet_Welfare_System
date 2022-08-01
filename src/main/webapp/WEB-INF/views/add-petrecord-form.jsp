<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Pet Records</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addpetrecord">
				<div>
					<label for="pet_id">Pet id</label>
					<div>
						<form:input path="pet_id" />
					</div>
				</div>
				<div>
					<label for="disease_id">Disease Id</label>
					<div>
						<form:input path="disease_id" />
					</div>
				</div>
				<div>
					<label for="date_observ">Observe date</label>
					<div>
						<form:input path="date_observ" />
					</div>
				</div>
				<div>
					<label for="observation">Observation</label>
					<div>
						<form:input path="observation" />
					</div>
				</div>
				<div>
					<label for="recover_date">Recover Date</label>
					<div>
						<form:input path="recover_date" />
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