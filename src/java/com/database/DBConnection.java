
package com.database;
import java.sql.Connection;
import java.sql.DriverManager;
        

public class DBConnection {
    public static Connection con;
    public static Connection getCon(){
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mhvr","root","root");
System.out.println("connection success");
    }
        catch(Exception e){
            System.out.println(e);
        }
        return con;
}
}
     
