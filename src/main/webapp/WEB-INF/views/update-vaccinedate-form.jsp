<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine Date</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatenewvaccinedate" method="post" modelAttribute="updatevdate">
				<div>
					<label for="petId">Pet Id</label>
					<div>
						<form:input path="petId" readonly="true" />
					</div>
				</div>
				<div>
				<label for="vaccineId">Vaccine Id : </label></div> <form:select
                                path="vaccineId">
                                <c:forEach var="vaccine" items="${vaccine}">
                                    <form:option value="${vaccine.vaccineId}"
                                        label="${vaccine.vaccineName}" />
                                </c:forEach>
                                </form:select></div>
				<div>
					<label for="vaccineDate">Vaccine Date</label>
					<div>
						<form:input path="vaccineDate" type="date"/>
					</div>
				</div>
				<div>
					<form:button>Update New</form:button>
				</div>
			</form:form>
		</div>
	
</body>
</html>