/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package invSystem;

import java.lang.System.Logger;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Osida
 */
public class MySQLConnection {
    Connection con;
    
    public MySQLConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Searching for Connection class ...");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Class not found & unable to connect ... " + cnf.getLocalizedMessage());
        }
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/mry", "root", "root");
        } catch (SQLException e2) {
            e2.printStackTrace();
        }

    }

    public Connection getRegisterConnection() {
        return con;
    }
}
