<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%   
Object flight=session.getAttribute("flightno");
%>
<form action="BookingDetails.jsp" method="post">
	Enter Card.No : <input type="text" name="cardno"  placeholder="Card Number"  "><br/>
	Enter Card Holder Name : <input type="text" name="nameoncard" placeholder="Name on card" ><br/>
	Expiry date : <select name=month>Month
	  <option >Month</option>
	  <% for(int i=1;i<=12;i++){ %>
	  <option value="<% out.println(i); %>"><% out.println(i); %></option>
	  <%} %>
	  </select>
	  <select name=year>Year
	  <option >Year</option>
	  <% for(int i=2020;i<=2030;i++){ %>
	  <option value="<% out.println(i); %>"><% out.println(i); %></option>
	  <%} %>
	  </select>
	  Enter cvv : <input type="password" name="cvv" placeholder=" Enter your cvv" maxlength="3" >
	  <br>
	  
	  <button type="submit" name="submit">Pay</button> 

</form>

</body>
</html>