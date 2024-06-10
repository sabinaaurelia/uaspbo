/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class KoneksiDatabase {
    private static final String URL = "jdbc:mysql://localhost:3306/dbskincare";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    private static Connection connection = null;

    public static Connection openConnection() {
        try {
            if (connection == null || connection.isClosed()) {
                connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                JOptionPane.showMessageDialog(null, "Database successfully connected");
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Database not connected: " + e.getMessage());
        }
        return connection;
    }
}
