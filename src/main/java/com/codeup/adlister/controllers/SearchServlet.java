package com.codeup.adlister.controllers;

import javax.servlet.http.HttpServlet;
import java.sql.*;
import java.util.Scanner;
public class SearchServlet extends HttpServlet {


    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false", "root", "codeup");


            //  This captures the users input and stores it in a String called "name"
            System.out.println("Please enter name to search: ");
            String name = "%" + sc.next() + "%";
            System.out.println(name);

            //  The string "SQL" represents a query for usernames in the database.
            String SQL = "SELECT * FROM users WHERE username LIKE ?";
            System.out.println(SQL);
            PreparedStatement stmt = con.prepareStatement(SQL);
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();

            //  This loops through the database and if the name matches something like it in the database it is returned
            while (rs.next()) {
                System.out.println("Username: " + rs.getString("username") + " found.");
                System.out.println("");
            }

            //  If there is an error, the following message will print.
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
        }

    }
}

