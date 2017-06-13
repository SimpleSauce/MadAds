package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/register");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        // TODO: ensure the submitted information is valid

        // TODO: create a new user based off of the submitted information

        // TODO: if a user was successfully created, send them to their profile
        if() {
            response.sendRedirect("/profile");
        }
    }
}
