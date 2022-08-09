<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
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
</style>
<body>
<h1>Home</h1>
<div><a href="/usersdetail/userloginpage">Login</a></div>

<div><a href="/usersdetail/getuserpet?id=">Find By User Id</a></div>
<i class="material-icons">&#xe872;</i>
<div><h1>Breed</h1></div>
<!-- <div><a href="/breed/breedlist">List</a></div> -->
<!-- <div><a href="/breed/addbreed">Add</a></div>
<div><a href="/breed/updatebreed?brid=">Update</a></div>
<div><a href="/breed/deletebreed?brid=">Delete</a></div> -->
<!-- <div><a href="/breed/getbreed?brid=">Find By Id</a></div> -->
<!-- <div><a href="/breed/getbreedpet?id=">Find By Breet By Pet</a></div> -->
<div></div>
<div><h1>Disease</h1></div>
<!-- <div><a href="/disease/diseaselist">List</a></div> -->
<!-- <div><a href="/disease/addformdisease">Add</a></div> -->
<!-- <div><a href="/disease/updateformdisease?disid=">Update</a></div> -->
<div><a href="/disease/deletedisease?disid=">Delete</a></div>
<!-- <div><a href="/disease/getdisease?disid=">Find By Id</a></div> -->
<div><a href="/disease/getdiseasepetrecord?id=">Find By Disease Id</a></div>
<div></div>
<div><h1>pet</h1></div>
<div><a href="/pet/petlist">List</a></div>
<!-- <div><a href="/pet/addpet">Add</a></div> -->
<!-- <div><a href="/pet/updateformpet?petid=">Update</a></div> -->
<!-- <div><a href="/pet/deletepet?petid=">Delete</a></div> -->
<div><a href="/pet/getpet?petid=">Find By Id</a></div>
<!-- <div><a href="/pet/getvaccinebypetid?id=">Find By vaccine By Pet</a></div> -->
<!-- <div><a href="/petrecord/getpetidinpetrecords?id=">Find By Pet Records By Pet</a></div> -->
<div></div>
<div><h1>Pet Record</h1></div>
<!-- <div><a href="/petrecord/petrecordlist">List</a></div> -->
<!-- <div><a href="/petrecord/addformpetrecord">Add</a></div> -->
<!-- <div><a href="/petrecord/updateformpetrecord?prid=">Update</a></div> -->
<!-- <div><a href="/petrecord/deletepetrecord?prid=">Delete</a></div> -->
<div><a href="/petrecord/getpetrecord?prid=">Find By Id</a></div>
<div></div>
<div><h1>User Detail</h1></div>
<!-- <div><a href="/usersdetail/userdetaillist">List</a></div> -->
<!-- <div><a href="/usersdetail/addformuser">Add</a></div> -->
<div><a href="/usersdetail/updateformuser?userid=">Update</a></div>
<div><a href="/usersdetail/deleteuserdetail?userid=">Delete</a></div>
<div><a href="/usersdetail/getuserdetail?userid=">Find By Id</a></div>
<div><a href="/usersdetail/getuserpet?id=">Find By User Id</a></div>
<div></div>
<div><h1>Vaccine Date</h1></div>
<div><a href="/vaccinedate/vaccinedatelist">List</a></div>
<!-- <div><a href="/vaccinedate/addformvaccinedate">Add</a></div> -->
<!-- <div><a href="/vaccinedate/updateformvaccinedate?id=">Update</a></div> -->
<!-- <div><a href="/vaccinedate/deletevaccinedate?id=">Delete</a></div> -->
<div><a href="/vaccinedate/getbyidvaccinedate?id=">Find By Id</a></div>
<div></div>
<div><h1>vaccine</h1></div>
<!-- <div><a href="/vaccine/vaccinelist">List</a></div> 2-->
<!-- <div><a href="/vaccine/addnewvaccine">Add</a></div> -->
<!-- <div><a href="/vaccine/updateformvaccine?vacid=">Update</a></div> -->
<div><a href="/vaccine/deletevaccine?vacid=">Delete</a></div>
<div><a href="/vaccine/getvaccine?vacid=">Find By Id</a></div>
<div><a href="/vaccine/getvaccineidbyvaccinedate?id=">Find By Vaccine Id</a></div>
<div></div>

</body>
</html>