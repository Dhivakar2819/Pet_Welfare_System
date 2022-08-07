<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="index">
<form:form action="" method="post"
				modelAttribute="buttom">
		<div><a href="/usersdetail/userdetaillist">User Detail</a></div>
		<div><a href="/petrecord/petrecordlist">Pet Records</a></div>
		<div><a href="/vaccine/adminvaccinelist">Vaccine</a></div>
		<div><a href="/pet/petlist">Pet</a></div>
		<div><a href="/disease/admindiseaselist">Disease</a></div>
		<div><a href="/breed/adminbreedlist">Breed</a></div>
	</form:form>
	</div>
</body>
</html>