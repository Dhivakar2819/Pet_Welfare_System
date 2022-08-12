<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"> -->
<style><%@include file="/WEB-INF/css/login.css"%></s</style>
</head>
<body>

    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form:form action="userlogin" method="post"
				modelAttribute="loginform">
        <h3>User Login</h3>

        <label for="email">E mail</label>
        <form:input path="email" type="text" placeholder="Email" id="email"/>

        <label for="password">Password</label>
        <form:input path="password" type="password" placeholder="Password" id="password"/>

        <form:button>Log In</form:button>
        <form:button><a href="/usersdetail/addformuser">Sign Up</a></form:button>
    </form:form>
   
</body>
</html>