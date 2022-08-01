<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find User Detail</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findusersdetailbyid">
				<div>
					<label for="user_id">User id</label>
					<div>
						<form:input path="user_id" />
					</div>
				</div>
				<div>
					<label for="user_name">User Name</label>
					<div>
						<form:input path="user_name" />
					</div>
				</div>
				<div>
					<label for="e_mail">E Mail Id</label>
					<div>
						<form:input path="e_mail" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>