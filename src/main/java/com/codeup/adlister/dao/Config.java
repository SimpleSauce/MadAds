package com.codeup.adlister.dao;

public class Config {

    private String url = "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC";
    private String user = "jeriko";
    private String password = "Musicrules1";

    public String getUrl() { return url; }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }

}
