<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update student</h1>
<form action="/update" method="post">
SID<input type="text" name="sid">
NAME<input type="text" name="name">
DIVISION<input type="text" name="division">
MOBILE NO<input type="text" name="mobileno">
<input type="submit" value="update">
<input type="reset" value="reset">
</form>
<a href="insertstudent">back to page</a>
</body>
</html>