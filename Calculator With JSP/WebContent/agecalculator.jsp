<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>


<%
String dob = " ";
String  year="0";
String  month="0";
String  day="0";



if (request.getParameter("operand1") != null){

	dob = request.getParameter("operand1");

	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/M/yyyy");    
	LocalDate today = LocalDate.now();
	LocalDate birthday = LocalDate.parse(dob, formatter);


	Period p = Period.between(birthday, today);
	year=p.getYears()+"";
	month=p.getMonths()+"";
	day=p.getDays()+"";
	
}       
%>
<form method ="get" name ="f1" >
<input type ="text" size ="20" name ="operand1" value = <%= dob %> />
<p>
<input type = submit value = Calculate />

You are  <%= year + "" %> years, <%= month + "" %>months and <%= day + "" %> days old
</form>

</body>
</html>