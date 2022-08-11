<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Index</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table             { 
  border-spacing: 1; 
  border-collapse: collapse; 
  background:white;
  border-radius:6px;
  overflow:hidden;
  max-width:1000px; 
  width:100%;
  margin:0 auto;
  position:relative;
  front-size:15px;
  padding:15px;
  }
  th {
  background-color: #04AA6D;
  color: white;
}
button{
font-size:30px;
width:25%;
}
</style>
</head>
<body>
<div id="index" align="center">
<br>
<br>
<br>
		<div><a href="/pet/petlist"><button>Pet</button></a></div><br>
		<div><a href="/breed/adminbreedlist"><button>Breed</button></a></div><br>
		<div><a href="/disease/admindiseaselist"><button>Disease</button></a></div><br>
		<div><a href="/vaccine/adminvaccinelist"><button>Vaccine</button></a></div><br>
		<div><a href="/petrecord/petrecordlist"><button>Pet Records</button></a></div><br>
		<div><a href="/usersdetail/userdetaillist"><button >User Detail</button></a></div><br>
	</div>
</body>
</html>