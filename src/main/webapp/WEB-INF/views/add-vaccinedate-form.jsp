<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Vaccine Date</title>
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
			<form:form action="addnewvaccinedate" method="post" modelAttribute="addvdate">
				<div>
					<label for="petId">Pet Id</label>
					<div>
						<form:input path="petId" 
						title="Id must be number" 
						pattern="^[0-9]+$"
						 required="true" />/>
					</div>
					<form:errors path="petId" cssClass="text-danger" />
				</div>
				<div>
				<label for="vaccineId">Vaccine Id : </label></div> <form:select
                                path="vaccineId">
                                <c:forEach var="vaccine" items="${vaccine}">
                                    <form:option value="${vaccine.vaccineId}"
                                        label="${vaccine.vaccineName}" />
                                </c:forEach>
                                </form:select></div>
                                <form:errors path="vaccineId" cssClass="text-danger" />
                                </div>
				<div>
					<label for="vaccineDate">Vaccine Date</label>
					<div>
						<form:input path="vaccineDate" type="date" />
					</div>
					<form:errors path="vaccineDate" cssClass="text-danger" required="required"/>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>