<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Flight No</th>
			<th>Airline Name</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Ticket Price</th>
		</tr>


		<%
			String url = "jdbc:mysql://localhost:3306/flyaway";
		String dbusername = "root";
		String dbpassword = "gautam@25";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url, dbusername, dbpassword);

			String sqlQuery = "select flightno,airline_name,origin,destination,fare from flightdetails";
			PreparedStatement pstmt = connection.prepareStatement(sqlQuery);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
		%>




		<tr>

			<td><%=rs.getString("flightno")%></td>
			<td><%=rs.getString("airline_name")%></td>
			<td><%=rs.getString("origin")%></td>
			<td><%=rs.getString("destination")%></td>
			<td><%=rs.getString("fare")%></td>
		</tr>


		<%
			}
		%>

		<%
			} catch (Exception e) {
		// TODO: handle exception
		}
		%>
	</table>
	 <button ><a href="AdminHome.jsp"  style="text-decoration:none">Go back to home page</a></button>
</body>
</html>