package org.prodigius.mysqlexample;

import java.sql.*;

public class App
{

    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String JDBC_URL = "jdbc:mysql://localhost/mysqlexample";
    private static final String DBUSER = "admin";
    private static final String DBPASSWD = "admin";

    public static void main( String[] args ) throws ClassNotFoundException
    {
        Class.forName(JDBC_DRIVER);
        Connection conn = null;
        Statement stmt = null;

        try
        {
            System.out.println("Creating a connection to the database ...");
            conn = DriverManager.getConnection(JDBC_URL, DBUSER, DBPASSWD);
            System.out.println("Connection successful.");

            stmt = conn.createStatement();

            String sql = "CREATE TABLE `User` (" +
                "`id` tinyint(4) NOT NULL AUTO_INCREMENT," +
                "`username` varchar(30) NOT NULL," +
                "`password` varchar(30) NOT NULL," +
                "`email` varchar(50) NOT NULL," +
                "`first_name` varchar(30) NOT NULL," +
                "`last_name` varchar(30) NOT NULL," +
                " PRIMARY KEY (`id`)" +
                ") ENGINE=InnoDB DEFAULT CHARSET=utf8";

            System.out.println("Creating table 'User' in database ...");
            stmt.executeUpdate(sql);
            System.out.println("Done.");

            sql = "insert into `User`" +
                " (username, password, email, first_name, last_name) " +
                " values (?, ?, ?, ?, ?) ";

            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "bsmith");
            pstmt.setString(2, "mypass0");
            pstmt.setString(3, "bsmith@localhost");
            pstmt.setString(4, "Bob");
            pstmt.setString(5, "Smith");
            pstmt.execute();

            sql = "select * from `User` where username='bsmith'";

            stmt = conn.createStatement();
            ResultSet userResultSet = stmt.executeQuery(sql);

            System.out.println("");
            while (userResultSet.next())
            {
                System.out.println(
                    "The username is " + userResultSet.getString("username"));
                System.out.println(
                    "password is " + userResultSet.getString("password"));
                System.out.println(
                    "email is " + userResultSet.getString("email"));
                System.out.println(
                    "first name is " + userResultSet.getString("first_name"));
                System.out.println(
                    "last name is " + userResultSet.getString("last_name"));
            }
            System.out.println("");

            System.out.println("Dropping table `user` ...");
            sql = "drop table `User`";
            stmt.executeUpdate(sql);
            System.out.println("Done.");
        }
        catch (SQLException sqlException)
        {
            System.out.println("Unable to make a successful db connection.");
            sqlException.printStackTrace();
        }
        finally
        {
            try
            {
                System.out.println("Now closing database connection ...");
                stmt.close();
                conn.close();
            }
            catch (SQLException sqlException)
            {
                sqlException.printStackTrace();
            }
        }

    }
}
