<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
*
{
align :center;}
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
</style>
<body>
<h1>Home</h1>
<div><a href="/usersdetail/userloginpage">User Login</a></div>
<div><a href="/admin/adminlogin">Admin Login</a></div>

<div><a href="/usersdetail/getuserpet?id=">Find By User Id</a></div>
<div><h1>Breed</h1></div>
<div><h1>Disease</h1></div>
<div><a href="/disease/deletedisease?disid=">Delete</a></div>
<div><a href="/disease/getdiseasepetrecord?id=">Find By Disease Id</a></div>
<div></div>
<div><h1>pet</h1></div>
<div><a href="/pet/petlist">List</a></div>
<div><a href="/pet/getpet?petid=">Find By Id</a></div>
<div></div>
<div><h1>Pet Record</h1></div>
<div><a href="/petrecord/getpetrecord?prid=">Find By Id</a></div>
<div></div>
<div><h1>User Detail</h1></div>
<div><a href="/usersdetail/updateformuser?userid=">Update</a></div>
<div><a href="/usersdetail/deleteuserdetail?userid=">Delete</a></div>
<div><a href="/usersdetail/getuserdetail?userid=">Find By Id</a></div>
<div><a href="/usersdetail/getuserpet?id=">Find By User Id</a></div>
<div></div>
<div><h1>Vaccine Date</h1></div>
<div><a href="/vaccinedate/vaccinedatelist">List</a></div>
<div><a href="/vaccinedate/getbyidvaccinedate?id=">Find By Id</a></div>
<div></div>
<div><a href="/vaccine/deletevaccine?vacid=">Delete</a></div>
<div><a href="/vaccine/getvaccine?vacid=">Find By Id</a></div>
<div><a href="/vaccine/getvaccineidbyvaccinedate?id=">Find By Vaccine Id</a></div>
<div></div>

</body>
</html>