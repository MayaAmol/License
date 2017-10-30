<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function validate()
{
	var lid=document.operation.lid.value;
    if (lid == null || lid=="")
    {
      alert("Enter license numbere");
      document.reg.lid.focus();
      window.location("View.jsp");
      return false;
    }
}
     </script>
<body background="C:\Users\training.D-113037536\Desktop\home.jpg">
<form action="oprationServlet" method="post" name="operation" onsubmit="return validate();" >
<table align="center"><tr><td>
<h1><font color="blue">
	License Management System
	</font>
</h1></td></tr>
<tr></tr><tr>
</tr></table>
<%@include file="HomeLink.jsp" %>
<table><tr><td><td></td>
<center>
	<h4 align="center">Enter License Number</h4>
	<input type="text" name="lid" size="50" >
	
	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	<input type="submit" value="Update" name= "action">&nbsp;&nbsp;&nbsp;
	<input type="submit"  value="View Details" name= "action">&nbsp;&nbsp;&nbsp;
	<input type="submit" value="Renew License" name= "action">&nbsp;&nbsp;&nbsp;
	</center></td></tr>
	</table>
	</form>
</body>
</html>