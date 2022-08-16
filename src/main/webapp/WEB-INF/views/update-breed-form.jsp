<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Breed</title>
<style><%@include file="/WEB-INF/css/form.css"%></s</style>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatebreed" method="post" modelAttribute="updatebreeds" class="container" name="form">
				<div>
						<form:input path="id" 
						title="Name can't be empty" 
						required="true" type="hidden"/>
					</div>
				<div class="form-control">
					<label for="breedType">Breed Type</label>
						<form:input path="breedType" name="breedType" onblur="breedTypeCheck();"
						title="Breed type can't be empty" pattern="^[a-zA-z\s]+$"
						 required="true" placeholder="Enter the breed type"/>
					<form:errors path="breedType" cssClass="text-danger" />
				</div><br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<script type="text/javascript">
	 var breedTypeCheck = function() {
		 var nameRegex = new RegExp("^[a-zA-z\s]+$");
		 if(!document.form.breedType.value.match(nameRegex)){
				if(alert("Name can't be empty and must contain only alphabets")){ 
					 document.form.breedType.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}</script>
</body>
</html>