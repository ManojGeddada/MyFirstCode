//Implimentation class for iCrud.

import java.sql.*;

class MysqlCrud implements iCrud
{
	String databaseName = "prasadDB";
	String userName = "root";
	String password = "pwd";
	String serverName = "165.22.14.77";
	String url = "jdbc:mysql://" + serverName + "/" + databaseName;

	Connection conn;

	public Connection getDatabaseConnection()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, userName, password);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return conn;
	}
}