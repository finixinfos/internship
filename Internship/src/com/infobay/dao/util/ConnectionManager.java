package com.infobay.dao.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.log4j.Logger;

import com.infobay.action.LoginAction;


public class ConnectionManager
{
  private static ConnectionManager connectionManager = new ConnectionManager();
  private DataSource dataSource = null;
  private Context context = null;
  private static final Logger logger = Logger.getLogger(LoginAction.class);
  private int numberOfOpenConnections = 0;

  public static ConnectionManager getConnectionManager()
  {
    return connectionManager;
  }

  private ConnectionManager() {
   
    try {
    	System.out.println("inside connection manager");
      this.context = new InitialContext();
      Context initContext  = (Context) this.context.lookup("java:/comp/env");
      this.dataSource = ((DataSource)initContext.lookup("jdbc/InternshipDB"));
    } catch (NamingException ex) {
      ex.printStackTrace();
    }
  }

  public Connection getConnection()
    throws Exception
  {
    Connection connection = null;
    try {
    connection = this.dataSource.getConnection();
   /* 	String url = "jdbc:mysql://182.50.155.55:3306/psychome_exam";
   	 String user="xxx";
   	 String password="xxx$";
    	
    String url = "jdbc:mysql://localhost:3306/examonline";
		String user = "root";
		String password = "bala1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(url, user, password);*/
		  this.numberOfOpenConnections += 1;
	      if (logger.isDebugEnabled()) {
	        this.logger.debug("Number of Open Connections, after Open new connection:" + this.numberOfOpenConnections);
	      }
      return connection;
      } 
    catch (Exception ex) {
    	ex.printStackTrace();
    } 
   
    throw new Exception("couldn't Open the connection");
  }

  public void releaseConnection(Connection connection)
    throws Exception
  {
    try
    {
      connection.close();
      this.numberOfOpenConnections -= 1;
      if (logger.isDebugEnabled())
        this.logger.debug("Number of Open Connections, after close old connection:" + this.numberOfOpenConnections);
    }
    catch (SQLException ex) {
      throw new Exception("couldn't close the connection");
    }
  }
}