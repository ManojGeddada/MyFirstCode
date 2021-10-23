<%@ page contentType="text/html" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.sqlite.*" %>
 
<html>
<head>
	<title>Item Table</title>
</head>
<body>
	<%
		ResultSet resultSet = null;
		try
		{
			Class.forName("org.sqlite.JDBC").newInstance();
			String itemID = request.getParameter("itemID");
			Connection connection = DriverManager.getConnection("jdbc:sqlite:/var/www/html/Prasad/prasad_db.db");
			Statement statement = connection.createStatement() ;
			String query = "select * from Item";
			resultSet = statement.executeQuery(query);
		}
		catch (Exception e)
		{
			out.print("Please enter item id to get item data");
		}
	%>
	<table border="1" width="100%">
		<tr>
			<th>Item ID</th>
			<th>Description</th>
			<th>Unit Price</th>
			<th>Stock Quantity</th>
		</tr>
		<% try
			{
				while(resultSet.next())
				{ 
					out.print(" <tr align='center'> " + " <td>" + resultSet.getString("itemID") + "</td> " + " <td>" + resultSet.getString("description") + "</td> " + " <td>" + resultSet.getString("unitPrice") + "</td> " + " <td>" + resultSet.getString("stockQty") + "</td> " + " </tr>");
				}
			}
			catch(Exception e)
			{
				out.print(e);
			}
		%>
	</table>
</body>
</html>
