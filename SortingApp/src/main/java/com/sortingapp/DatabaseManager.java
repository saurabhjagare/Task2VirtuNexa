package com.sortingapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseManager {
    private static final String URL = "jdbc:mysql://localhost:3307/sorting_app";
    private static final String USER = "root";
    private static final String PASSWORD = "Saurabh@321"; 

    public static Connection connect() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public static void saveSortedData(String input, String sorted, String orderType) {
        String sql = "INSERT INTO sorted_numbers (input_numbers, sorted_numbers, order_type) VALUES (?, ?, ?)";
        try (Connection conn = connect();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, input);
            pstmt.setString(2, sorted);
            pstmt.setString(3, orderType);
            pstmt.executeUpdate();
            System.out.println("Data saved to database.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
