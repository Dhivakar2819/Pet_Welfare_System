<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Admin</title>
<style><%@include file="/WEB-INF/css/form.css"%></s</style>
</head>
<body>
<div id="root" >
		<div id="form">
			<form:form action="updateadmindetain" method="post" modelAttribute="updateadmin" class="container" name="form">
				<div class="form-control">
					<label for="adminName">Name</label>
						<form:input path="adminName" name="adminName"
						title="Name can't be empty" onblur="adminNameCheck();"
						pattern="^[a-zA-z\s]+$" required="true" placeholder="Enter admin name"/>
					<form:errors path="adminName" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="email">E Mail Id</label>
						<form:input path="email" title="Mail Id is not in correct format"
							required="true" placeholder="example@domain.com"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							name="email" onblur="emailCheck();"/>
					<form:errors path="email" cssClass="text-danger" />
				</div>
				<div class="form-control">
					<label for="adminPassword">Password</label>
						<form:input path="adminPassword" name="password" onblur="passwordCheck();"
						title='Password atleast have letter, one number, one special character and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" placeholder="Password " type="password"/>
					<form:errors path="adminPassword" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
			<a href="/admin/adminlist">Back</a>
			<div>${result}</div>
		</div>
	</div>
	<script type="text/javascript">
	 var adminNameCheck = function() {
		 var nameRegex = new RegExp("^[a-zA-z\s]+$");
		 if(!document.form.adminName.value.match(nameRegex)){
				if(alert("Name can't be empty and must contain only alphabets")){ 
					 document.form.adminName.focus();
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
	 </script>
</body>
</html>