/*   
 *  @author Naveen Hiranya
 */
package com.groupproject.baggagemanagementsystem.Backend;

import java.sql.Connection;
import java.sql.SQLException;

public class DatabaseConnectionTest {

    public static void main(String[] args) {
        Connection connection = null;
        try {
            connection = DatabaseConnection.getConnection();
            System.out.println("Database connected successfully.");
        } catch (SQLException e) {
            System.out.println(
                    "Database connection failed: " + e.getMessage()
            );
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                    System.out.println(
                            "Database connection closed."
                    );
                } catch (SQLException e) {
                    System.out.println(
                            "Error closing database connection: "
                            + e.getMessage()
                    );
                }
            }
        }
    }
}
