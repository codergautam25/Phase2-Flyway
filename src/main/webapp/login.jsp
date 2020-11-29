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
	String flightn = request.getParameter("flightno");
        session.setAttribute("flightno", flightn);
	%>
	
	<form action="loginServlet" method="post">
		Enter username : <input type="email" name="email" required="required"><br>
		Enter password : <input type="password" name="password"
			required="required"><br>
		<button type="submit">Submit</button>
		<br>
		<p>
			New User? <a href="register.html?flightno=<% session.setAttribute("flightno",flightn);%>">register here</a>
		</p>

	</form>


</body>
</html>