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
<script type="text/javascript">
function validate_date() {
	var flag = true;
	var newDate = document.renew.newDate.value;
	 
	if (newDate==null || newDate=="")
	    {
	      alert("Date field cannot be empty.");
	      document.renew.newDate.focus();
	      flag = false;
	    }
	 if(flag){
		 document.renew.submit();
	 }
	
}
</script>
  
  
<body background="C:\Users\training.D-113037536\Desktop\home.jpg">
<table align="center"><tr><td>
<h1><font color="blue">
	License Management System
	</font>
</h1></td></tr>
<tr></tr><tr>
</tr></table>

<%@include file="HomeLink.jsp" %>
<form action="editServlet" method="post" name = "edit" name="renew" onsubmit="" >
<%
 List<customer> l = (List<customer>)request.getAttribute("list");
 for(customer x:l){
%>
     <br><br><br> 
<table cellpadding="3" align="center" > 


	<tr>
		<td>License No:</td>
		<td><input type="text" name="lid" disabled="disabled" size="40" value="<%=x.getL_no()%>"> </td>
	</tr>
	
		<input type="hidden" name="lid" size="40" value="<%=x.getL_no()%>">
	
	<tr>
		<td>Name :</td>
		<td><input type="text" name="name" disabled="disabled" size="40" value="<%=x.getName() %>"> </td>
	</tr>
	<tr>
		<td>Issue Date :</td>
		<td><input type="text" disabled="disabled" size="40" value="<%=x.getIdate() %>"> </td>
	</tr>
	<tr>
		<td>Expiry Date :</td>
		<td><input type="text" disabled="disabled" size="40" value="<%=x.getEdate() %>"> </td>
	</tr>
	<tr>
		<td>New Expiry Date (DD/MM/YYYY):</td>
		<td><input type="text" id="newDate" name="newDate" size="40" onchange="validate_date()"> </td>
	</tr>	
	
	<tr>
	<td colspan="2" align="center"><input type="submit" value="Renew" name="action" onclick="validate_date()"> </td>
	</tr>

<%

 } %>
</table>
</form>
</body>
</html>