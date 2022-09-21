<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style><%@include file="/WEB-INF/css/login.css"%></style>
</head>
<body>

    <div class="background">
        
    </div>
    <form:form action="userlogin" method="post"
				modelAttribute="loginform">
        <h3>Login</h3>

        <label for="email">E mail</label>
        <form:input path="email" type="text" placeholder="Email" id="email"/>

        <label for="password">Password</label>
        <form:input path="password" type="password" placeholder="Password" id="password"/>

        <form:button>Log In</form:button>
        <form:button><a href="/usersdetail/addformuser">Sign Up</a></form:button>
    </form:form>
</body>
</html>