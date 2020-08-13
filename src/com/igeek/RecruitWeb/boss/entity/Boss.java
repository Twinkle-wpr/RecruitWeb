package com.igeek.RecruitWeb.boss.entity;

import java.util.Date;

public class Boss {
    private Integer id;
    private String username;
    private String email;
    private String password;
    private String phone;
    private Date date;
    private String companyName;

    public Boss() {
    }

    public Boss(Integer id, String username, String email, String password, String phone, Date date, String companyName) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.date = date;
        this.companyName = companyName;
    }

    public Boss(Integer id, String username, String email, String password, String phone,  String companyName) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.companyName = companyName;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    @Override
    public String toString() {
        return "Boss{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", date=" + date +
                ", companyName='" + companyName + '\'' +
                '}';
    }
}
