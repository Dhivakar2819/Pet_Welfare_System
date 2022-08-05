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
			<form:form action="userlogin" method="post"
				modelAttribute="loginform">
				<h1 align="center">User Login</h1>
				
					<table>
						<tr><td><label for="email">Email :</label></td>
						<td><form:input path="email" plcaeholder="example@gmail.com" />
						</td><tr>
						
						<tr><td>
							<label for="password">Password</label>
							</td><td>
								<form:input path="password" type="password"
									placeholder="password" />
							</td></tr>
					</table>
					<div>
					<tr>	<td><form:button>Sign in </form:button></td>
						<td><form:button>
							<a href="/usersdetail/addformuser">Sign Up</a>
						</form:button></td></tr>
					</div>
			</form:form>

		</div>
	</div>
</body>
</html>