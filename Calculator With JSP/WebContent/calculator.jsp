<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script>

</script>
</head>

<body>

<%
String str = "0",op2 = "0";
int result = 0;
String op = "+";
char opchar = op.charAt(0);
if (request.getParameter("op") != null){
op = request.getParameter("op");
opchar = op.charAt(0);
str = request.getParameter("operand1");
op2 = request.getParameter("operand2");
switch(opchar){
case '0': result = Integer.parseInt(str) + Integer.parseInt(op2);
break;
case '1': result = Integer.parseInt(str) - Integer.parseInt(op2);
break;
case '2': result = Integer.parseInt(str) * Integer.parseInt(op2);
break;
case '3': result = Integer.parseInt(str) / Integer.parseInt(op2);
break;
case '4': result = Integer.parseInt(str) % Integer.parseInt(op2);
break;
}
}
%>
<center>

<h2>Simple calculator program in jsp</h2>
<form method ="get" name ="f1" >
<input type ="text" size ="20" name ="operand1" value = <%= str %> />

<select name = op size = 1>
<option value = "0" <% if (opchar == '0') out.print("selected"); %> >+</option>
<option value = "1" <% if (opchar == '1') out.print("selected"); %> >-</option>
<option value = "2" <% if (opchar == '2') out.print("selected"); %> >*</option>
<option value = "3" <% if (opchar == '3') out.print("selected"); %> >/</option>
<option value = "4" <% if (opchar == '4') out.print("selected"); %> >/</option>
</select>

<input type ="text" size="20" name ="operand2" value = <%= op2 %> />
<p>
<input type = submit value = Calculate />

Result = <%= result + "" %>
</form>

</body>
</html>