<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body >
	<div id="root">
		<div id="form" align="center">
			<form:form action="adminloginpage" method="post"
				modelAttribute="adminlogin">
				<h1 align="center">Admin Login</h1>
				
					<table>
						<tr><td><label for="adminId">Admin Id :</label></td>
						<td><form:input path="adminId" plcaeholder="example@gmail.com" />
						</td><tr>
						
						<tr><td>
							<label for="adminPassword">Password</label>
							</td><td>
								<form:input path="adminPassword" type="password"
									placeholder="password" />
							</td></tr>
					</table>
					<div>
						<form:button>Sign in </form:button>
						
					</div>
			</form:form>

		</div>
	</div>
</body>
</html>