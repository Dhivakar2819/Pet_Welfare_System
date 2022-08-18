<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Breed</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/table.css"%>
</style>
<body>
<div class="container">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findbreedbyid">
				<div>
					<label for="breedType">Breed Type</label>
					<div>
						<form:input path="breedType" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<button class="back" onclick="history.back()" ><em class="fa fa-arrow-circle-o-left"  style="font-size:36px"></em></button>
</body>
</html>