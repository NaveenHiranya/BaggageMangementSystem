
package Backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.io.FileInputStream;
import java.io.IOException;

public class DatabaseConnection {

    public static Connection getConnection() throws SQLException {

        Properties props = new Properties();

        String filePath = "Database.properties";

        try (FileInputStream input = new FileInputStream(filePath)) {

            props.load(input);
            System.out.println("Loaded property keys: " + props.stringPropertyNames());

            System.out.println("Properties file loaded successfully!");

        } catch (IOException e) {

            throw new SQLException("Cannot find Database.properties!", e);
        }
        // Load database configuration and credentials from an external properties file
        // to keep sensitive information separate from the source code.
        String url = props.getProperty("Database.url");
        String user = props.getProperty("Database.username");
        String password = props.getProperty("Database.password");

        System.out.println("URL: " + url);
        System.out.println("Username: " + user);
        System.out.println("Password loaded: " + (password != null));

        if (url == null || user == null || password == null) {
            throw new SQLException("Missing database properties! Check property names.");
        }

        return DriverManager.getConnection(url, user, password);
    }
}
