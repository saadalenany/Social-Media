package com.saad.socialmedia.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import java.sql.Blob;
import java.util.Date;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @NotNull
    private int id;
    @NotNull
    private String name;
    @NotNull
    private String email;
    @NotNull
    private String password;
    @NotNull
    private String title;
    @Null
    private String location;
    @Null
    private Date date;
    @Null
    private Blob image;

    public User(String name, String email, String password, String title) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.title = title;
    }

    public User(int id, String name, String email, String password, String title, String location, Date date, Blob image) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.title = title;
        this.location = location;
        this.date = date;
        this.image = image;
    }

    public User(String name, String email, String password, String title, String location, Date date, Blob image) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.title = title;
        this.location = location;
        this.date = date;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Blob getImage() {
        return image;
    }

    public void setImage(Blob image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", title='" + title + '\'' +
                ", location='" + location + '\'' +
                ", date=" + date +
                ", image=" + image +
                '}';
    }
}
