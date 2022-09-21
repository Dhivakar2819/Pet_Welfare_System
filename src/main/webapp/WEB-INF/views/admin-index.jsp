<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Index</title>
<style><%@include file="/WEB-INF/css/style.css"%></s
</style>
</head>
<body>
<div class="index" >
<br>
<br>
<br>
		<div><a href="/pet/petlist"><button>Pet</button></a></div><br>
		<div><a href="/breed/adminbreedlist"><button>Breed</button></a></div><br>
		<div><a href="/disease/admindiseaselist"><button>Disease</button></a></div><br>
		<div><a href="/vaccine/adminvaccinelist"><button>Vaccine</button></a></div><br>
		<div><a href="/petrecord/petrecordlist"><button>Pet Records</button></a></div><br>
		<div><a href="/usersdetail/userdetaillist"><button >User Detail</button></a></div><br>

	<br>
	<div><a href="/usersdetail/userloginpage"><button class="logout" title="log out"
	onclick="if (confirm('Are you sure you want to logout?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;">Log out</button></a></div></div>
</body>
</html>