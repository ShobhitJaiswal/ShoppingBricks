
package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public final class ConnectionProvider 
{
	static Connection con=null;

	private ConnectionProvider()
	
{
		
	}

	public static Connection getCon()
	{
	
	try{
		if(con==null)
		{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopcool","root","root");
		return con;
		}
		else {
			return con;
		}
		}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return con;
}
}