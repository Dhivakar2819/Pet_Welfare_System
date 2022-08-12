<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body >
	<div id="root">
		<div id="form">
			<form:form action="adminloginpage" method="post"
				modelAttribute="adminlogin">
				<h1 >Admin Login</h1>
				
					<table>
					<caption>login</caption>
						<tr><td><label for="email">Admin Mail Id</label></td>
						<td><form:input path="email" plcaeholder="example@domain.com" />
						</td><tr>
						
						<tr><td>
							<label for="adminPassword">Password</label>
							</td><td>
								<form:input path="adminPassword" type="password"
									placeholder="Password" />
							</td></tr>
					</table><br>
					<div>
						<form:button>Sign in </form:button>
						
					</div><br>
					${signin}
			</form:form>

		</div>
	</div>
</body>
</html>