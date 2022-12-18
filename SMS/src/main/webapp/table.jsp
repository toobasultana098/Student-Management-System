<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%@ page import= "p1.show" %>
<%@ page import= "java.util.ArrayList" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SMS - Index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
Connect c1=new Connect();
ArrayList<show> arr=c1.getRecords();
%>
<table class="table table-success">
    <thead>
        <tr>
            <th>Roll</th>
            <th>Name</th>
            <th>City</th>
            <th>Marks</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <%
    	for(int i=0;i<arr.size();i++){
    		show s1=(show)arr.get(i);
			String r=String.valueOf(s1.getRoll());
			String m=String.valueOf(s1.getMarks());
			String n=s1.getName();
			String c=s1.getCity();
    %>
        <tr>
            <td><%=r %></td>
            <td><%=n %></td>
            <td><%=c %></td>
            <td><%=m %></td>
            
            <td><a href ="edit.jsp?roll=<%=r%>"><i class="fa fa-edit"></i></a></td>
            <td><a href ="delete.jsp?roll=<%=r%>"><i class="fa fa-trash"></i></a></td>
        </tr>
    <%
    	}
    %>                  
    </tbody>
</table>
</body>
</html>