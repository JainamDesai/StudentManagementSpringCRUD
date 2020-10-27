<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Update Form</title>
<jsp:include page="base.jsp"></jsp:include>
</head>
<body style="background: rgba(123,45,56,178)">
<div class="container">
<div class="jumbotron">
<h1><b>Student Update Form:-</b></h1>
</div>
<form action="${pageContext.request.contextPath}/saveUser" method="post">
<div class="form-group">
    <label for="id" style="color: white">Student Id</label>
    <input type="number" class="form-control" id="id"  name="id" value="${student.id}">
  </div>
  <div class="form-group">
    <label for="name" style="color: white">Student First Name</label>
    <input type="text" class="form-control" id="name"  name="stud_name" value="${student.stud_name}">
  </div>
    <div class="form-group" style="color: white">
    <label for="lname">Student Last Name</label>
    <input type="text" class="form-control" id="lname" name="stud_lname"  value="${student.stud_lname}">
  </div>
  <div class="form-group" style="color: white">
    <label for="exampleInputEmail1">Student Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email" value="${student.email}">
  </div>
  <div class="form-group" style="color: white">
    <label for="exampleInputPassword1">Student Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="pass" value="${student.pass}">
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Submit Student Info</button>
  </div>
</form>
</div>
</body>
</html>