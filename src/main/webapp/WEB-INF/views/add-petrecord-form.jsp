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
					<label for="id">Pet id</label>
					<div>
						<form:input path="id" />
					</div>
				</div>
				<div>
					<label for="diseaseId">Disease Id</label>
					<div>
						<form:input path="diseaseId" />
					</div>
				</div>
				<div>
					<label for="dateObserv">Observe date</label>
					<div>
						<form:input path="dateObserv" />
					</div>
				</div>
				<div>
					<label for="observation">Observation</label>
					<div>
						<form:input path="observation" />
					</div>
				</div>
				<div>
					<label for="recoverDate">Recover Date</label>
					<div>
						<form:input path="recoverDate" />
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