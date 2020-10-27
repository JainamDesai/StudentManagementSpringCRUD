<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>
<jsp:include page="base.jsp"></jsp:include>
</head>
<body style="background: rgba(123,33,144,155)">
<div class="container">
<div class="jumbotron">
<h1><b>Students List:</b></h1>
</div>
<table class="table">
  <thead>
    <tr>
      <th scope="col" >Student Id</th>
      <th scope="col">Student Name</th>
      <th scope="col">Student Last Name</th>
      <th scope="col">Student Email</th>
       <th scope="col">Student Password</th>
        <th scope="col">Update</th>
         <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="student" var="s">
    <tr>
      <td style="color: white">${s.id}</td>
      <td style="color: white">${s.stud_name}</td>
      <td style="color: white">${s.stud_lname}</td>
      <td style="color: white">${s.email}</td>
      <td style="color: white">${s.pass}</td>
      <td style="color: white"><a href="updateStudent/${s.id}">Update Student</a></td>
      <td style="color: white"><a href="deleteStudent/${s.id}">Delete Student</a></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<div class="text-center">
<a href="addStudent" class="btn btn-primary">ADD STUDENT</a><br>
</div>
</div>
</body>
</html>