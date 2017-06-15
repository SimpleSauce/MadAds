package com.codeup.adlister.controllers;

import javax.servlet.http.HttpServlet;

public class SearchServlet extends HttpServlet {
    private boolean pagination = false;
    private int pageSize = 25;
    private String sortOrder = "ASC";

    public boolean isPagination()
    {
        return pagination;
    }
    public void setPagination(boolean pagination)
    {
        this.pagination = pagination;
    }
    public String getSortOrder()
    {
        return sortOrder;
    }
    public void setSortOrder(String sortOrder)
    {
        this.sortOrder = sortOrder;
    }
    public int getPageSize()
    {
        return pageSize;
    }
    public void setPageSize(int pageSize)
    {
        this.pageSize = pageSize;
    }

}

