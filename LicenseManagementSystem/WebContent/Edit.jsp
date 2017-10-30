<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.model.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.control.*"%>
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
<form action="editServlet" method="post" name = "edit">
<%
 List<customer> l = (List<customer>)request.getAttribute("list");
 for(customer x:l){
%>
      <br><br>
<table cellpadding="3" align="center" > 


	<tr>
		<td>License No:</td>
		<td><input type="text" name="lid" disabled="disabled" size="40" value="<%=x.getL_no()%>"> </td>
	</tr>
	<tr>
		<td>Licensee Name:</td>
		<td><input type="text" name="" disabled="disabled" size="40" value="<%=x.getName()%>"> </td>
	</tr>
	
		<input type="hidden" name="lid" size="40" value="<%=x.getL_no()%>">
	<%-- <tr>
		<td>Name:</td>
		<td><input  name="name" disabled="disabled" cols="30" rows="5" value=" <%=x.getName() %>"></textarea> </td>
	</tr> --%>
	<tr>
		<td>Address:</td>
		<td><textarea  name="address" cols="30" rows="5" ><%=x.getAddress() %></textarea> </td>
	</tr>
	
	<tr>
		<td>Contact No:</td>
		<td><input type="text" name="contact" size="40" value="<%=x.getMob() %>"> </td>
	</tr>	
	
	<tr>
	<td colspan="2" align="center"><input type="Submit" value="Update" name="action"> </td>
		</tr>

<%

 } %>
</table>
</form>
</body>
</html>