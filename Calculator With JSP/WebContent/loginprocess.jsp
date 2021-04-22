<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
<%
String id=request.getParameter("id");
String password=request.getParameter("password");
if(id.equals("rinith") && password.equals("abc")){
%>
<h1>Welcome </h1>
<a href="calculator.jsp">Calculator</a>
<a href="agecalculator.jsp">Age Calculator</a>


<% } else { %>
<h1>Incorrect Credentials </h1>
<% } %>


</body>
</html>