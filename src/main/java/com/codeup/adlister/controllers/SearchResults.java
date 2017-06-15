package com.codeup.adlister.controllers;
import java.util.ArrayList;
import java.util.List;

public abstract class SearchResults<T>
{
    private int totalResults = 0;
    private int pageSize = 25;
    private List<T> results = null;

    public int getPageSize()
    {
        return pageSize;
    }
    public void setPageSize(int pageSize)
    {
        this.pageSize = pageSize;
    }
    public int getTotalResults()
    {
        return totalResults;
    }
    private void setTotalResults(int totalResults)
    {
        this.totalResults = totalResults;
    }

    public List<T> getResults()
    {
        return results;
    }
    public List<T> getResults(int page)
    {
        if(page <= 0 || page > this.getNumberOfPages())
        {
            throw new RuntimeException("Page number is zero or there are not that many page results.");
        }
        List<T> subList = new ArrayList<T>();
        int start = (page -1)*this.getPageSize();
        int end = start + this.getPageSize();
        if(end > this.results.size())
        {
            end = this.results.size();
        }
        for (int i = start; i < end; i++)
        {
            subList.add(this.results.get(i));
        }
        return subList;
    }

    public int getNumberOfPages()
    {
        if(this.results == null || this.results.size() == 0)
        {
            return 0;
        }
        return (this.totalResults/this.pageSize)+(this.totalResults%this.pageSize > 0 ? 1: 0);
    }
    public void setResults(List<T> aRresults)
    {
        if(aRresults == null)
        {
            aRresults = new ArrayList<T>();
        }
        this.results = aRresults;
        this.setTotalResults(this.results.size());
    }

}