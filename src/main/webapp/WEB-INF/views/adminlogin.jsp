<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style><%@include file="/WEB-INF/css/login.css"%>
</style>
</head>
<body >
	<div class="background"></div>
			<form:form action="adminloginpage" method="post" modelAttribute="adminlogins">
				<h3>Admin Login</h3>
				
						<label for="email">Admin Mail Id</label>
						<form:input path="email" plcaeholder="example@domain.com" id="email"/>
						
							<label for="adminPassword">Password</label>
								<form:input path="adminPassword" type="password"
									placeholder="Password" id="password"/>
						<form:button>Sign in </form:button>
						
					<br>
					${signin}
			</form:form>
			

</body>
</html>