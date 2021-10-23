<%@ page contentType="text/html" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.sqlite.*" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title></title>
</head>
<%
	ResultSet rs;
	try {
		String itemId = request.getParameter("itemId");
		Class.forName("org.sqlite.JDBC");
		Connection conn = DriverManager.getConnection("jdbc:sqlite:/var/www/html/Shashank/dbShashank.db");
		Statement stat = conn.createStatement();
		String sqlQuery = "SELECT * FROM Item WHERE ItemID = " + itemId;
		rs = stat.executeQuery(sqlQuery);
%>
<body>
	<table border="1">
		<% while (rs.next()) { %>
		<tr>
			<th>Item ID</th>
			<td><% out.print(rs.getString("ItemID")); %></td>
		</tr>
		<tr>
			<th>Last Name</th>
			<td><% out.print(rs.getString("Description"));%></td>
		</tr>
		<tr>
			<th>Hallticket Number</th>
			<td><% out.print(rs.getString("UnitPrice"));%></td>
		</tr>
		<tr>
			<th>Hallticket Number</th>
			<td><% out.print(rs.getString("StockQty"));%></td>
		</tr>
		<%}%>
	</table>
<%
	}
	catch (Exception e) {
		out.print(e);
	}
%>
</body>
</html>
