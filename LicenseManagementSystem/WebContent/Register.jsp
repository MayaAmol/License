<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register New Employee</title>

</head>
<script type="text/javascript">
function validate()
{
	 var pos = document.getElementById("ltype");
     if(pos.value==0)
	   	{
	   		alert("Please select license type");
	   	 document.reg.ltype.focus();
	   		return false;
	   	}
	
   var name=document.reg.name.value;
    if (name==null || name=="")
    {
      alert("Name field cannot be empty.");
      document.reg.name.focus();
      return false;
    }
    
    var address=document.reg.address.value;
    if (address==null || address=="")
    {
      alert("Address field cannot be empty.");
      document.reg.address.focus();
      return false;
    }
    
     var contact=document.reg.contact.value;
    if (contact == null || contact=="")
    {
      alert("Contact No must be enter");
      document.reg.contact.focus();
      return false;
    }
    else if(!(contact.value.length == 10)){
    	 alert("Invalid contact no");
         document.reg.contact.focus();
         return false;
    }

    var bg = document.getElementById("bg");
     if(bg.value==0)
	   	{
	   		alert("Please select license type");
	   	 document.reg.bg.focus();
	   		return false;
	   	}
  
     //place
    var place=document.reg.place.value;
    if (place == null || place=="")
    {
      alert("Email must be enter");
      document.reg.place.focus();
      return false;
    }
    
    var fname=document.reg.fname.value;
    if (fname == null || fname=="")
    {
      alert("Email must be enter");
      document.reg.fname.focus();
      return false;
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
<form action="regServlet" onsubmit="return validate();" name="reg" method="post">
<br><br>
<table cellpadding="3" align="center"> 
<tr>
		<td>License Type</td>
		<td>
		
			<select name="ltype" id="ltype">
			<option value="0"> Select Type</option>
				<option value="Two Wheeler without gear"> Two Wheeler without gear</option>
				<option value="Two Wheeler with gear"> Two Wheeler with gear</option>
				<option value="Three wheeler"> Three wheeler</option>
				<option value="Four wheeler">Four wheeler</option>
				<option value="Heavy vehicle"> Heavy vehicle</option>
			
			</select>
			
		 </td>
		 </tr>
	
	<tr>
		<td>Name:</td>
		<td><input type="text" name="name" size="40"> </td>
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
		<td>Date Of Birth(DD/MM/YYYY):</td>
		<td><input type="text" name="dob"size="40">  </td>
	</tr>
	<tr>
		<td>Blood Group:</td>
		<td>
		
			<select name="bg" id="bg">
			<option value="0"> Select Blood Group</option>
				<option value="A+"> A+</option>
				<option value="A-"> A-</option>
				<option value="B+"> B+</option>
				<option value="B-"> B-</option>
				<option value="AB+"> AB+</option>
				<option value="AB-"> AB-</option>
				<option value="O+"> O+</option>
				<option value="O-"> O-</option>
				
			</select>
			
		 </td>
		 </tr>
		<tr>
		<td>Place:</td>
		<td><input type="text" name="place"size="40"> </td>
	</tr>
	
	<tr>
		<td>Father's Name:</td>
		<td><input type="text" name="fname"size="40"> </td>
	</tr>
	
	<tr>
		<td>Expiry Date(DD/MM/YYYY):</td>
		<td><input type="text" name="edate"size="40"> </td>
	</tr>

	<tr>
	<td colspan="2" align="center"><input type="Submit" value="Register"> </td>
	
	</tr>
</table>
<br><br>
</form>
</body>
<%@include file="footer.jsp" %>
</html>