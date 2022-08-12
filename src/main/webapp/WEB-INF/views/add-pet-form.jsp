<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="addnewpet" method="post" modelAttribute="addpet">
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" 
						title="Id must be number" 
						pattern="^[0-9]+$"
						 required="true"/>
					</div>
					<form:errors path="userId" cssClass="text-danger" />
				</div>
				
				<div>
				<label for="breedId">Breed Type  </label></div><div> <form:select
                                path="breedId">
                                <c:forEach var="BreedType" items="${breed}">
                                    <form:option value="${BreedType.id}"
                                        label="${BreedType.breedType}" />
                                </c:forEach>
                            </form:select></div>
				<div>
					<label for="petType">Pet Type</label>
					<div>
						<form:input path="petType" 
						title="Type can't be empty"
						 required="true"
						 placeholder="Enter the pet type"
						 />
					</div>
					<form:errors path="petType" cssClass="text-danger" />
				</div>
				<div>
					<label for="petName">Pet Name</label>
					<div>
						<form:input path="petName" 
						title="Name can't be empty"
						placeholder="Enter the pet name"
						required="true"/>
					</div>
					<form:errors path="petName" cssClass="text-danger" />
				</div>
				<div>
					<label for="dob">Date of Birth</label>
					<div>
						<form:input path="dob" type="date"/>
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:radiobutton path="gender" value="Male" required="required"/>Male
						<form:radiobutton path="gender" value="Female" />Female
					</div>
					<form:errors path="gender" cssClass="text-danger" />
					</div>
					<div>
					<label for="dateofOwnership">Date of Ownership</label>
					<div>
						<form:input path="dateofOwnership" type="date" />
					</div>
				</div>
				<br>
				<div>
					<form:button>Add New Pet</form:button>
				</div>
			</form:form><br>
			<div>${result}</div>
		</div></div>
</body>
</html>