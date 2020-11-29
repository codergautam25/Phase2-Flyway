<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
margin:0;
}
a{
margin : 5px 5px;
padding : 5px;
text-decoration : none;
}
</style>
</head>
<body>
<center>
<div><h2>
   <%  String email=(String)session.getAttribute("email"); 
   
   	 out.println("welcome admin :"+email);
   %>
</h2></div>
<br>
<div class="topnav">
  <a href="changePassword.jsp">Change Password</a>
  <a href="Places.jsp">List of Places</a>
  <a href="AirlineList.jsp">List of Airlines</a>
  <a href="FlightsList.jsp">List of Flights</a>
</div>
 <button ><a href="adminlogin.jsp"  style="text-decoration:none">Logout</a></button>
</center>
</body>
</html>