/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ABDELADIM ABID
 */

public class Connexion {

    private static Connection con;
    private static final String user = "givelife";
    private static final String pass = "givelife1195";
    private static final String url = "jdbc:oracle:thin:@localhost :1521:XE";

    private Connexion() {

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            System.out.println("le pilote charge ");
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("la base a ete trouver ");
        } catch (ClassNotFoundException e) {
            System.out.println("le pilote ne pas charge " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("probleme de connexion" + e.getMessage());
        }

    }
    public static Connection getConn() {
        if (con == null) {
            new Connexion();
        }
        return con;
    }
}
