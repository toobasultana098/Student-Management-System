<%@page import="p1.show"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</div>
<%
	Connect c1 = new Connect();
	String x=request.getParameter("roll");
	show s1=null;
%>
<h2>Enter Roll Number To Searched</h2>
<br>
<br>
<form action="search.jsp" method="post">
    <div class="row mb-3">
        <label for="roll" class="col-sm-2 col-form-label">Roll</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="roll" placeholder="Roll">
        </div>
    </div>
    <div class="row">
        <div class="col-sm-10 offset-sm-2">
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </div>
</form>
<%
if(x!=null)
{
	int roll=Integer.parseInt(x);
	s1=c1.getRecordByRoll(roll);
	String r=String.valueOf(s1.getRoll());
	String m=String.valueOf(s1.getMarks());
	String n=s1.getName();
	String c=s1.getCity();
%>
<table class="table table-success">
    <thead>
        <tr>
            <th>Roll</th>
            <th>Name</th>
            <th>City</th>
            <th>Marks</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%=r %></td>
            <td><%=n %></td>
            <td><%=c %></td>
            <td><%=m %></td>
            
        </tr>               
    </tbody>
</table>
<%
}
%>
</body>
</html>