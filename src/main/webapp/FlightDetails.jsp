<%@page import="org.apache.taglibs.standard.tag.common.core.CatchTag"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Details</title>
<style>
body{
margin : 0;
padding : 0;
}
.head{
background-color : #000;
color : #fff;
height : 50px;
}
h2{
padding-top : 10px;
font-family : "Brush Script MT", Brush Script Std, cursive;
}
tr{
border : 1px solid #000;
 
} 
</style>
</head>
<body>
<center>
<div>
<div class="head">
	<h2>FlyAway</h2>
</div>
</div>
<div>
	<h3><u>Flight details</u></h3>
		<table>
			<tr>
				<th>Flight no</th>
				<th>Origin</th>
				<th>Destination</th>
				<th>Departure Time</th>
				<th>Arrival Time</th>
				<th>Fare</th>
			</tr>

			<%!String url = "jdbc:mysql://localhost:3306/flyaway";
	String username = "root";
	String password = "gautam@25";
	%>

			<%
	String origin = (String) request.getAttribute("origin");
	String des = (String) request.getAttribute("destination");
	String date=(String)request.getAttribute("date");
	String totalPerson=(String)request.getAttribute("totalPerson");
	

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		String sql = "select * from flightdetails where origin=? and destination=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, origin);
		pstmt.setString(2, des);
		
		

	/* 	session.setAttribute("origin",origin); 
		session.setAttribute("destination",des); 
		session.setAttribute("date",date); 
		session.setAttribute("totalPerson",totalPerson);  */
		
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			session.setAttribute("fare", rs.getString("fare"));
			session.setAttribute("departure_time",  rs.getString("departure_time"));
			session.setAttribute("arrival_time",rs.getString("arrival_time"));

	%>
			<%-- 	
<tr>
	<form action="login.html" method="post">
	<td align="center"><input type="text" name="flightno" value="<%=rs.getString("flatten")%>" hidden><%=rs.getString("flightno")%></td>
	<td align="center"><input type="text" name="origin" value="<%=rs.getString("origin")%>" hidden><%=rs.getString("origin")%></td>
	<td align="center"><input type="text" name="destination" value="<%=rs.getString("destination")%>" hidden><%=rs.getString("destination")%></td>
	<td align="center"><input type="text" name="departure_time" value="<%=rs.getString("departure_time")%>" hidden><%=rs.getString("departure_time")%></td>
	<td align="center"><input type="text" name="arrival_time" value="<%=rs.getString("arrival_time")%>" hidden><%=rs.getString("arrival_time")%></td>
	<td align="center"><input type="text" name="fare" value="<%=rs.getString("fare")%>" hidden><%=rs.getString("fare")%></td>
	<td><input type="submit" value="Book Now"></td>
	
		
	</form> 
</tr>
	 --%>
			<tr>
				<td><%= rs.getString("flightno") %></td>
				<td><%= rs.getString("origin")%></td>
				<td><%= rs.getString("destination")%></td>
				<td><%= rs.getString("departure_time")%></td>
				<td><%= rs.getString("arrival_time")%></td>
				<td><%= rs.getString("fare")%></td>
				
				<td> <a href="login.jsp?flightno=<%= rs.getString("flightno") %>">Book Now</a></td>
				
			</tr>


			<%
				}
			} catch (Exception e) {
			out.print("Something wrong " + e);
			}
			%>
		</table>
</div>
</center>
</body>
</html>