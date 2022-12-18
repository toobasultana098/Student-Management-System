<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SMS - Add</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<%
	String s = request.getParameter("result");
%>
</head>
<body>
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
    <form action="save.jsp" method="post">
    <div class="row mb-3">
        <label for="roll" class="col-sm-2 col-form-label">Roll</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="roll" placeholder="Roll">
        </div>
    </div>
    <div class="row mb-3">
        <label for="name" class="col-sm-2 col-form-label">Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name" placeholder="Name">
        </div>
    </div>
    <div class="row mb-3">
        <label for="city" class="col-sm-2 col-form-label">City</label>
        <div class="col-sm-10">
           <select class="form-select" name = "city">
   				<option value ="asn">Asansol</option>
   				<option value = "rnj">Durgapur</option>
   				<option value = "drg">Raniganj</option>
			</select>
        </div>
    </div>
    <div class="row mb-3">
        <label for="marks" class="col-sm-2 col-form-label">Marks</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="marks" placeholder="Marks">
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-sm-10 offset-sm-2">
            <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="checkRemember">
                    <label class="form-check-label" for="checkRemember">Remember me</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-10 offset-sm-2">
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
    </div>
</form>
</div>
<%
	
    if(s!=null){
	if(s.equals("true")){
%>
<div class="alert alert-success alert-dismissible fade show">
    <strong>Success!</strong>Your data has been registered successfully.
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
</div>
<%
	}else{
%>
<div class="alert alert-danger alert-dismissible fade show">
    <strong>Error!</strong> Problem in data saving...
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
</div>
<%
	}
    }
%>
</body>
</html>