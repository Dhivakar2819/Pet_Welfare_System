<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Pet Records</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findpetrecordbyid">
				<div>
					<label for="id">Pet id</label>
					<div>
						<form:input path="id" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="diseaseId">Disease Id</label>
					<div>
						<form:input path="diseaseId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateObserv">Observe date</label>
					<div>
						<form:input path="dateObserv" readonly="true" />
					</div>
				</div>
				<div>
					<label for="observation">Observation</label>
					<div>
						<form:input path="observation" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="recoverDate">Recover Date</label>
					<div>
						<form:input path="recoverDate"  readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>