<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
*{
align:center;
}
html {
  background-color: #56baed;
}

body {
  font-family: "Poppins", sans-serif;
  height: 100vh;
}
</style>
</head>
<body >
	<div id="root">
		<div id="form" >
			<form:form action="userlogin" method="post"
				modelAttribute="loginform">
				<h1>User Login</h1>
				
						<div><label for="email">Email :</label></div>
						<div></div><form:input path="email" placeholder="example@gmail.com" />
						</div>
						
						<div>
							<label for="password">Password</label>
							</div>
								<form:input path="password" type="password"
									placeholder="password" />
							</td></tr>
					<div>
					<tr>	<td><form:button>Sign in</form:button></td>
						<td><form:button>
							<a href="/usersdetail/addformuser">Sign Up</a>
						</form:button></td></tr>
					</div>
					</table>
			</form:form>

		</div>
	</div>
</body>
</html>