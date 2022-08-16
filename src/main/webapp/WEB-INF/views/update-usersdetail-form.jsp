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
<div id="root" >
		<div id="form">
			<form:form action="updateuser" method="post" modelAttribute="updateusersdetail" class="container" name="form">
				<div>
						<form:input path="userId" 
						title="Name can't be empty"
						required="true" type="hidden"/>
					</div>
				<h3> User Details</h3>
				<div class="form-control">
					<label for="userName">User Name</label>
					<form:input path="userName" name="userName" title="User name can't be empty "
						required="true" placeholder="Enter the user name" pattern="^[a-zA-z\s]+$"
						onblur="userNameCheck();" />
				</div>
				
				<div class="form-control">
					<label for="email">E Mail Id</label>
					<form:input path="email" title="Mail Id is not in correct format"
						required="true" placeholder="example@domain.com" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
						name="email" onblur="emailCheck();"/>
					
				</div>
				<div class="form-control">
					<label for="password">Password</label>
					<form:input path="password"
						title='Password must begin with letter and contain atleast one number and must have atleast 8 characters'
						required="true" placeholder="Enter the password"
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						name="password" onblur="passwordCheck();"/>
					
				</div>
				<div class="form-control">
					<label for="phoneNo">Phone no</label>
					<form:input path="phoneNo" title="Phone no can't be empty " type="tel"
						required="true" pattern='[0-9]{10}' placeholder='1234567890'
						name="phoneNo" onblur="numberCheck();"/>
					
				</div>
				<div class="form-control">
					<label for="address">Address</label>

					<form:input path="address" title="Address no can't be empty "
						required="true" placeholder="Enter the address" pattern="^[a-zA-Z0-9\s,. '-]{3,}$" name="address"
						onblur="addressCheck();"/>
				</div>

				<div>
					<form:button class="button">Registration</form:button>
				</div>
				
				${result} ${message}
			</form:form>
		</div>
		<br>
		<div>
			<a href="/usersdetail/userloginpage"><button class="back">Back</button></a>
		</div></div>
	<script type="text/javascript">
	 var userNameCheck = function() {
		 var nameRegex = new RegExp("^[a-zA-z\s]+$");
		 if(!document.form.userName.value.match(nameRegex)){
				if(alert("Name can't be empty and must contain only alphabets")){ 
					 document.form.userName.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}
	 var emailCheck = function() {
		 var nameRegex = new RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");
		 if(!document.form.email.value.match(nameRegex)){
				if(alert("Email not in the correct format")){ 
					 document.form.email.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}
	 var passwordCheck = function() {
		 var nameRegex = new RegExp("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
		 if(!document.form.password.value.match(nameRegex)){
				if(alert("Password must begin with letter and contain atleast one number and must have atleast 8 characters")){ 
					 document.form.password.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}
	 var phoneNoCheck = function() {
		 var nameRegex = new RegExp("[0-9]{10}");
		 if(!document.form.phoneNo.value.match(nameRegex)){
				if(alert("Phone number must have 10 digits")){ 
					 document.form.phoneNo.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	 }
	 var addressCheck = function() {
		 if(document.form.address.value == ""){
				if(alert("Address cannot be blank")){ 
					 document.form.address.focus();
			    }
				else
					document.activeElement.blur();
			}
		 else{
		    	return false;
		    }
	 }
	</script>
				
	
		
</body>
</html>