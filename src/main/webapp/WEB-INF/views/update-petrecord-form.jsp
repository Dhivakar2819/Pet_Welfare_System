<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Pet Records</title>
<style><%@include file="/WEB-INF/css/form.css"%></style>
<script><%@include file="/WEB-INF/js/petrecord.js"%></script>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatenewrecord" method="post" modelAttribute="updatepetrecord" class="container" name="form">
				
				<div>
						<form:input path="petId" 
						title="Id must be number" 
						pattern="^[0-9]+$"
						 required="true" type="hidden"/>
					<form:errors path="petId" cssClass="text-danger" />
				</div>
				<div class="form-control">
				<label for="diseaseId">Disease Name : </label> <form:select
                                path="diseaseId">
                                <c:forEach var="diseaseId" items="${disease}">
                                    <form:option value="${diseaseId.id}"
                                        label="${diseaseId.diseaseName}" />
                                </c:forEach>
                            </form:select>
                            <form:errors path="diseaseId" cssClass="text-danger" /></div>
				<div class="form-control">
					<label for="dateObserv">Observe date</label>
						<form:input path="dateObserv" type="date"/>
					<form:errors path="dateObserv" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="observation">Observation</label>
						<form:input path="observation" placeholder="Enter the observation"/>
					<form:errors path="observation" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="recoverDate">Recover Date</label>
						<form:input path="recoverDate" type="date"/>
					<form:errors path="recoverDate" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Update</form:button>
				</div>
				${updateresult}
			</form:form>
		</div>
	</div>
</body>
</html>