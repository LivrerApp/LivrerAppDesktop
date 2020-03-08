/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
/**
 *
 * @author ADMIN
 */

public class Dbconnexion {
    public static Connection con;
    public static  Statement stmt;
    /*
    public static void main(String args[]){
      try{ 
        //SQL
     Class.forName("com.mysql.jdbc.Driver") ;
    con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/crebas","root","");  
    stmt=con.createStatement();  
        }
        catch(Exception e){ System.out.println(e);} 
      
    }*/
    public static Connection connect() {
        if (con == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crebas?useSSL=false","root","");
            }  catch(Exception e){ System.out.println(e);} 
        }
        return con;
    }

    public static void disconnect() {
        if (con != null) {
            try {
                con.close();
                con = null;
            } catch(Exception e){ System.out.println(e);} 
        }
    }
    
}
