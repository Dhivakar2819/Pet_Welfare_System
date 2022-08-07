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
<div id="root"align="center">
		<div id="form" align="center">
			<form:form action="addnewpetrecord" method="post" modelAttribute="addpetrecord">
				<div>
					<label for="petId">Pet id</label>
					<div>
						<form:input path="petId" />
					</div>
				</div>
				<div>
				<label for="diseaseId">Disease Name : </label></div> <form:select
                                path="diseaseId">
                                <c:forEach var="diseaseId" items="${disease}">
                                    <form:option value="${diseaseId.id}"
                                        label="${diseaseId.diseaseName}" />
                                </c:forEach>
                            </form:select></div>
				<div>
				<div>
					<label for="dateObserv">Observe date</label>
					<div>
						<form:input path="dateObserv" type="date"/>
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
						<form:input path="recoverDate" type="date"/>
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