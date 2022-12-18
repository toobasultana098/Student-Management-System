<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%
	Connect c1 = new Connect();
%>
<%
	int r = Integer.parseInt(request.getParameter("roll"));
	String n = request.getParameter("name");
	String c = request.getParameter("city");
	int m = Integer.parseInt(request.getParameter("marks"));
	boolean b = c1.saveRecord(r, n, c, m);
	response.sendRedirect("add.jsp?result="+b);
%>