package com.tech.blog.entities;
import java.sql.*;

/**
 *
 * @author Nil
 */
public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String gender;
    private String bio;
    private Timestamp date;
    private String profile;

    
    public User(){
    } 


    public User(int id, String name, String email, String password, String gender, String bio, Timestamp date){
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.bio = bio;
        this.date = date;
    } 
    public User(String name, String email, String password, String gender, String bio){
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.bio = bio;
    }
    public User(String name, String email, String password, String gender, String bio, Timestamp date){
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.bio = bio;
        this.date = date;
    } 
    
    public User(int id, String name, String email, String password, String gender, Timestamp date){
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.date = date;
    } 

    public User(String name, String email, String password, String gender, Timestamp date){
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.date = date;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }
    
    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    
}
