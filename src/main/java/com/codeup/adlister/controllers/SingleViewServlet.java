package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SingleViewServlet", urlPatterns = "/ads/singleView")
public class SingleViewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("singleView", DaoFactory.getAdsDao());
        long id = Long.parseLong(request.getParameter("id"));
        User user = (User) request.getSession().getAttribute("user");

        Ad ad = DaoFactory.getAdsDao().edit(id);
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/singleView.jsp")
            .forward(request, response);
    }
}
