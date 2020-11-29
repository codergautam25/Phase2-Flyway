<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
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
<center>
<%
Object s=session.getAttribute("flightno");


String url="jdbc:mysql://localhost:3306/flyaway";
String  username="root";
String password="gautam@25";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection(url,username,password);
	
	String sqlQuery="select * from flightdetails where flightno=?";
	  PreparedStatement pstmt=connection.prepareStatement(sqlQuery);
	  
	//  pstmt.setString(1, no);
	pstmt.setObject(1, s);
	//  out.println(no);
	  
	  ResultSet rs=pstmt.executeQuery();
	  while(rs.next()){
		/*   out.println("Flightno:"+rs.getString("flightno"));
		  out.println("Origin is:"+rs.getString("origin"));
		  out.println("Destination is:"+rs.getString("destination"));
		  out.println("Departure time is:"+rs.getString("departure_time"));
		  out.println("Arrival time is:"+rs.getString("arrival_time"));
		  out.println("Fare is:"+rs.getString("fare"));   */
		  
		  %>
		  
		
		  <h2>Flight Booking Details</h2>
		  <button style="float:right;"><a href="logout">Log out</a></button>
		  <table>
		  <tr><td align="right">Flight No. : </td><td><%=rs.getString("flightno")%></td></tr>
		  <tr><td align="right">Origin : </td><td><%=rs.getString("origin")%></td></tr>
		  <tr><td align="right">Destination : </td><td><%=rs.getString("destination")%></td></tr>
		  <tr><td align="right">Departure Time : </td><td><%=rs.getString("departure_time")%></td></tr>
		  <tr><td align="right">Arrival Time : </td><td><%=rs.getString("arrival_time")%></td></tr>
		  <tr><td align="right">Fare : </td><td><%=rs.getString("fare")%></td></tr>
		  </table>
		  

	<%   }

} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	System.out.println("Some Error occured :"+ e);
}
%>
</center>
</body>
</html>