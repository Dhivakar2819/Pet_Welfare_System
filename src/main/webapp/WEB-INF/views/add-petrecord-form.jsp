<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Pet Records</title>
<style><%@include file="/WEB-INF/css/form.css"%></style>
<script><%@include file="/WEB-INF/js/petrecord.js"%></script>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="addnewpetrecord" method="post" modelAttribute="addpetrecord" class="container" name="form">
				<div class="form-control">
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
                            </form:select></div>
				<div class="form-control">
					<label for="dateObserv">Observe date</label>
						<form:input path="dateObserv" type="date"/>
				</div>
				<div class="form-control">
					<label for="observation">Observation</label>
						<form:input path="observation" name="observation" onblur="observationCheck();" placeholder="Enter the observation"/>
					<form:errors path="observation" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="recoverDate">Recover Date</label>
						<form:input path="recoverDate" type="date"/>
				</div>
				<br>
				<div>
					<form:button>Add New Pet Record</form:button>
					
				</div>
				
			</form:form>
			<a href="/petrecord/getpetidinpetrecords?id=${petId}"><button class="back">Back</button></a>
		</div>
		${addresult}${null}
	</div>
</body>
</html>