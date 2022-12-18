<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%
Connect c1 = new Connect();
int r=Integer.parseInt(request.getParameter("roll"));
String n =request.getParameter("name");
String c =request.getParameter("city");
int m= Integer.parseInt(request.getParameter("marks"));

c1.updateRecords(r, n, m, c);
response.sendRedirect("table.jsp");

%>