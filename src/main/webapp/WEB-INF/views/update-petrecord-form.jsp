<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Pet Records</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatenewrecord" method="post" modelAttribute="updatepetrecord">
				<div>
					<label for="petId">Pet id</label>
					<div>
						<form:input path="petId" 
						title="Id must be number" 
						pattern="^[0-9]+$"
						 required="true"/>
					</div>
					<form:errors path="petId" cssClass="text-danger" />
				</div>
				<div>
				<label for="diseaseId">Disease Name : </label></div> <form:select
                                path="diseaseId">
                                <c:forEach var="diseaseId" items="${disease}">
                                    <form:option value="${diseaseId.id}"
                                        label="${diseaseId.diseaseName}" />
                                </c:forEach>
                            </form:select>
                            <form:errors path="diseaseId" cssClass="text-danger" />
				<div>
					<label for="dateObserv">Observe date</label>
					<div>
						<form:input path="dateObserv" type="date"/>
					</div>
					<form:errors path="dateObserv" cssClass="text-danger" />
				</div>
				<div>
					<label for="observation">Observation</label>
					<div>
						<form:input path="observation" placeholder="Enter the observation"/>
					</div>
					<form:errors path="observation" cssClass="text-danger" />
				</div>
				<div>
					<label for="recoverDate">Recover Date</label>
					<div>
						<form:input path="recoverDate" type="date"/>
					</div>
					<form:errors path="recoverDate" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>