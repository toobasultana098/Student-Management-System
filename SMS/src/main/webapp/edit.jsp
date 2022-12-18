<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.show" %>
<%@ page import= "p1.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%
	Connect c1=new Connect();
	int roll=Integer.parseInt(request.getParameter("roll"));
	show s1=c1.getRecordByRoll(roll);
%>
<div class="m-4">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">STUDENT MANAGEMENT SYSTEM</a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="add.jsp" class="nav-item nav-link">Add</a>
                    <a href="table.jsp" class="nav-item nav-link">Show</a>
                    <a href="search.jsp" class="nav-item nav-link">Search</a>
                </div>
            </div>
        </div>
    </nav>
    
    <br><br>
    <h2>Update</h2>
    <br><br>
    <form action="update.jsp" method="post">
    <input type="hidden" name="roll" value=<%=s1.getRoll() %>>
    <div class="row mb-3">
        <label for="roll" class="col-sm-2 col-form-label">Roll</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="roll" value=<%=s1.getRoll() %> disabled>
        </div>
    </div>
    <div class="row mb-3">
        <label for="name" class="col-sm-2 col-form-label">Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name" value=<%=s1.getName() %>>
        </div>
    </div>
    <div class="row mb-3">
        <label for="city" class="col-sm-2 col-form-label">City</label>
        <div class="col-sm-10">
           <select class="form-select" name = "city" >
   				<option value ="asn">Asansol</option>
   				<option value = "rnj">Durgapur</option>
   				<option value = "drg">Raniganj</option>
			</select>
        </div>
    </div>
    <div class="row mb-3">
        <label for="marks" class="col-sm-2 col-form-label">Marks</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="marks" value=<%=s1.getMarks() %>>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-10 offset-sm-2">
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </div>
</form>
</div>
</body>
</html>