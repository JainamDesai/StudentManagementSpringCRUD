<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title}</title>
<jsp:include page="base.jsp"></jsp:include>
</head>
<body style="background: rgba(123,45,56,178)">
<div class="container">
<div class="jumbotron">
<h1><b>Student Registration Form:-</b></h1>
</div>
<form action="saveUser" method="post">
  <div class="form-group">
    <label for="name" style="color: white">Student First Name</label>
    <input type="text" class="form-control" id="name"  name="stud_name" placeholder="please enter name............">
  </div>
    <div class="form-group" style="color: white">
    <label for="lname">Student Last Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="stud_lname"  placeholder="please enter last name...........">
  </div>
  <div class="form-group" style="color: white">
    <label for="exampleInputEmail1">Student Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email"  placeholder="please enter email...........">
  </div>
  <div class="form-group" style="color: white">
    <label for="exampleInputPassword1">Student Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="pass" placeholder="please enter password............">
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Submit Student Info</button>
  </div>
</form>
</div>
</body>
</html>