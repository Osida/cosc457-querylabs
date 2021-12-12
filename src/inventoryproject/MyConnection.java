/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package inventoryproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;

/**
 *
 * @author Osida
 */
public class MyConnection {

    Connection con;

    public MyConnection() {
//        String driverCon = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/mry";
        String dbUser = "root";
        String dbPassword = "7tR-kJAU";

        try {
            con = DriverManager.getConnection(dbURL, dbUser, dbPassword);
            System.out.println("Connected to DB!");
        } catch (SQLException e) {
            System.out.println("Oops error!");
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
//            e.printStackTrace();
        }
    }

    public Connection getRegisterConnection() {
        return con;
    }
}
