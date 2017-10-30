<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.model.*, java.util.*"%>
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
<%
 List<customer> l = (List<customer>)request.getAttribute("list");
 for(customer x:l){
%>
<%-- <table align="center"><tr>
<td>
Registration SucessFul....<br>
Your License No is: <%=x.getL_no() %>
<br><br>
Licence is As :
</td>
</tr>
</table> --%>
<br><br>
<br><br>

<table align="center">
<tr align="center"><th align="center" colspan="3">DRIVING LICENSE</td></tr>
<tr align="left">
<th > No:</th>
<th align="left"><%=x.getL_no()%></th>
<th >Issue Date: </th>
<td><%=x.getIdate()%></td>	
</tr>

<tr align="left">
<th align="left" width="100">Name : </th>
<td align="left" width="150"> <%=x.getName()%></td>
<th align="left" width="100">S/W/D of:</td>
<td align="left" width="200"> <%=x.getFnmae() %></td>
</tr>

<tr>
<th align="left" width="100" align="left">Date Of Birth: </th>
<td align="left" width="150"> <%=x.getDob()%></td>
<th align="left" width="100">Blood Group: </th>
<td align="left" width="150"> <%=x.getBg()%></td>
</tr>
<tr>
<th align="left" width="100" align="left">Address: </th>
<td align="left" width="150"> <%=x.getAddress()%></td>
<th align="left" width="100">Mobile No: </th>
<td align="left" width="150"> <%=x.getMob()%></td>
</tr>

<tr align="left">
<th align="left" width="100"><u>Valid From: </u></th>
<td align="left" width="150"> <%=x.getIdate()%></td>
<th align="left" width="100">Vehicle Class:</th>
<td align="left" width="200"> <%=x.getL_type()%></td>
</tr>
<tr align="left">
<th align="left" width="100"><u>Valid To: </u> </th>
<td align="left" width="150"> <%=x.getEdate()%></td>

<th align="left" width="100"><u>Place </u> </th>
<td align="left" width="150"> <%=x.getPlace()%></td>
</tr>
<tr><th colspan="3">This is license to drive throughout India.</th>
</table>

<%} %>

</body>

</body>
</html>