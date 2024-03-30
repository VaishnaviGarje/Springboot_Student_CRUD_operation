<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student data</title>
<style>

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 70%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<form action="viewtable">
<h1>STUDENT RECORDS</h1>
<table>

<tr>
    <th>SID</th>
    <th>DIVISION</th>
    <TH>MOBILE NUMBER</TH>
    <th>NAME</th>
  </tr>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentDB", "root", "root");
PreparedStatement ps=c.prepareStatement("select * from studentpojo");
ResultSet rs=ps.executeQuery();
while(rs.next()){
	out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
}
%>
</table>
<a href="insertstudent">back to page</a>
</form>
</body>
</html>