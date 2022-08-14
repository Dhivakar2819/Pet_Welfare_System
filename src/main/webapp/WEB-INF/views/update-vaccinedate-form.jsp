<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
						<form:input path="petId" 
						title="Id must be number" 
						pattern="^[0-9]+$"
						 required="true" type="hidden"/>
					</div>
					<form:errors path="petId" cssClass="text-danger" />
				</div>
				<div>
				<label for="vaccineId">Vaccine Id : </label> <form:select
                                path="vaccineId">
                                <c:forEach var="vaccine" items="${vaccine}">
                                    <form:option value="${vaccine.vaccineId}"
                                        label="${vaccine.vaccineName}" />
                                </c:forEach>
                                </form:select>
                                <form:errors path="vaccineId" cssClass="text-danger" />
                                </div>
				<div>
					<label for="vaccinationDate">Vaccine Date</label>
					<div>
						<form:input path="vaccinationDate" type="date" />
					</div>
					<form:errors path="vaccinationDate" cssClass="text-danger" required="required"/>
				</div><br>
				<div>
					<form:button>Update</form:button>
				</div>
				${updateresult}
			</form:form>
		</div>
	</div>
</body>
</html>