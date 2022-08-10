<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Pet Records</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table             { 
  border-spacing: 1; 
  border-collapse: collapse; 
  background:white;
  border-radius:6px;
  overflow:hidden;
  max-width:1000px; 
  width:100%;
  margin:0 auto;
  position:relative;
  front-size:15px;
  padding:15px;
  }
  th {
  background-color: #04AA6D;
  color: white;
}
</style>
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