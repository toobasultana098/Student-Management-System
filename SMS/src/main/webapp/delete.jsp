<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%
	Connect c1=new Connect();
	String sid=request.getParameter("roll");
	int ro=Integer.parseInt(sid);
	c1.deleteRecord(ro);
	response.sendRedirect("table.jsp");
%>