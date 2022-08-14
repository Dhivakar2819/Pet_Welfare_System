<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User Detail</title>
<style><%@include file="/WEB-INF/css/form.css"%></s</style>
</head>
<body>
		<div>
		<div>
			<form:form action="adduser" method="post"
				modelAttribute="adduserdetail" class="container">
				<h3> User Details</h3>
				<div class="form-control">
					<label for="userName">User Name</label>
					<form:input path="userName" title="User name can't be empty "
						required="true" placeholder="Enter the user name" pattern="^[a-zA-z\s]+$"
						id="username" />
				</div>
				
				<div class="form-control">
					<label for="email">E Mail Id</label>
					<form:input path="email" title="Mail Id is not in correct format"
						required="true" placeholder="example@domain.com" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
						id="email" />
					
				</div>
				<div class="form-control">
					<label for="password">Password</label>
					<form:input path="password"
						title='Password must begin with letter and contain atleast one number and must have atleast 8 characters'
						required="true" placeholder="Enter the password"
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						id="password" />
					
				</div>
				<div class="form-control">
					<label for="phoneNo">Phone no</label>
					<form:input path="phoneNo" title="Phone no can't be empty " type="tel"
						required="true" pattern='[0-9]{10}' placeholder='1234567890'
						id="phoneNo" />
					
				</div>
				<div class="form-control">
					<label for="address">Address</label>

					<form:input path="address" title="Address no can't be empty "
						required="true" placeholder="Enter the address" pattern="^[a-zA-Z0-9\s,. '-]{3,}$" id="address"/>
				</div>

				<div>
					<form:button class="button">Registration</form:button>
				</div>
				
				${result}
				<div>${message}</div>
			</form:form>
		</div>
		<br>
		<div>
			<a href="/usersdetail/userloginpage"><button class="back">Back</button></a>
		</div></div>
	<!-- <script>
	const form = document.getElementById("form");
	const username = document.getElementById("userName");
	const email = document.getElementById("email"); 
	const password = document.getElementById("password");
	const phoneno = document.getElementById("phoneNo");
	const address = document.getElementById("address");
	
	form.addEventListener('Registration',e=>{
		e.preventDefault();
		checkInput();
	});
	function checkInput(){
		const usernameValue = username.value.trim();
		const emailValue = email.value.trim();
		const passwordValue = password.value.trim(); 
		const phonenoValue = phoneno.value.trim();
		const addressValue = address.value.trim();I
		
		if(usernameValue===''){
				setError(username, 'Username Cannot Be Blank');
				}
		else if(!isusername(usernameValue))
		{ setError(username, 'Not a valid user name');}
				else{
				setSuccess(username);
				}
		function isusername(username){
			return /^[a-zA-z\s]+$/.test(username);
		}
		if(emailValue === ''){ setError(email, 'Email Cannot Be Blank');
		} else if(!isEmail(emailValue))
		{ setError(email, 'Not a valid Email');}
		else{
		setSuccess(email);
		}
		function isEmail(email){
		return	/^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/.test(email);
		}
		}
	</script> -->
</body>
</html>