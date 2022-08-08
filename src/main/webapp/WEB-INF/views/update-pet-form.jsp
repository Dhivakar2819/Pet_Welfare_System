<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Pet</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatepets" method="post" modelAttribute="updatepet">
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
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" 
						title="Id must be number" 
						pattern="^[0-9]+$"
						 readonly="true"/>
					</div>
					<form:errors path="userId" cssClass="text-danger" />
				</div>
				
				<div>
				<label for="breedId">Breed Type : </label></div> <form:select
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
						title="Type can't be empty And must be in String"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
					<form:errors path="petType" cssClass="text-danger" />
				</div>
				<div>
					<label for="petName">Pet Name</label>
					<div>
						<form:input path="petName" 
						title="Name can't be empty And Name must be in String"
						pattern="^[A-Za-z]\\w{3,20}$" />
					</div>
					<form:errors path="petName" cssClass="text-danger" />
				</div>
				<div>
					<label for="dob">Date of Birth</label>
					<div>
						<form:input path="dob" type="date"/>
					</div>
					<form:errors path="dob" cssClass="text-danger" />
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
					<form:errors path="dateofOwnership" cssClass="text-danger" />
				</div>
				<div>
					<form:button>Update New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>