<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Insert student</h1>
<form action="save"  method="post">
SID<input type="text" name="sid">
NAME<input type="text" name="name">
DIVISION<input type="text" name="division">
MOBILE NO<input type="text" name="mobileno">
<input type="submit" value="save">
<input type="reset" value="reset">
</form>

<a href="updatestudent">update</a>&nbsp
<a href="deletestudent">delete</a>&nbsp
<a href="viewtables">show records</a>
</body>
</html>