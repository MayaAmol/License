<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="C:\Users\training.D-113037536\Desktop\home.jpg">
<table align="center"><tr><td>
<h1><font color="blue">
	License Management System
	</font>
</h1></td></tr>
<tr></tr><tr>
</tr></table>

<%@include file="HomeLink.jsp" %>
<form action="editServlet">
	<h4>Enter License Number</h4>
	<input type="text" name="lno" size="40">
	<br><br><input type="button" value="Edit">
	
</form>

<form action="regServlet" name="reg" method="post">
<table cellpadding="3"> 
<%
String lno = request.getParameter("lno");
%>

	<tr>
		<td>License No:</td>
		<td><input type="text" name="lno" disabled="disabled" value="<%=lno %>" size="40"> </td>
	</tr>
	
	<tr>
		<td>Address:</td>
		<td><textarea  name="address" cols="30" rows="5"></textarea> </td>
	</tr>
	
	<tr>
		<td>Contact No:</td>
		<td><input type="text" name="contact" size="40"> </td>
	</tr>	
	
	<tr>
	<td colspan="1" align="right"><input type="Submit" value="Update"> </td>
	<td><input type="button" value="Exit">  </td>
	</tr>
</table>
</form>
</body>
</html>