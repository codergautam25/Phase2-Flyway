<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form action="ChangePassword" method="post">
   Admin Email Id : <input name="email" value="<%= session.getAttribute("email")%>" readonly="readonly">
    <br>
	Set new Password : <input type="password" name="password" required="required">
	<button type="submit">Change Password</button>
    </form>
    
    
    <button><a href="AdminHome.jsp" style="text-decoration:none;">GoTo HomePage</a></button>
</body>
</html>