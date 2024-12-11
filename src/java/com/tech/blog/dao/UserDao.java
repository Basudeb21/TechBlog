package com.tech.blog.dao;

import com.tech.blog.SQLQueries.Query;
import com.tech.blog.entities.User;
import java.sql.*;
/**
 *
 * @author Nil
 */
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean insertUser(User user){
        
        boolean is_insert = false;
        try{
            String query = Query.INSERT_USER;
            PreparedStatement psmt =  this.con.prepareStatement(query);
            psmt.setString(1, user.getName());
            psmt.setString(2, user.getEmail());
            psmt.setString(3, user.getPassword());
            psmt.setString(4, user.getGender());
            psmt.setString(5, user.getBio());


           int rowsAffected = psmt.executeUpdate();
            if (rowsAffected > 0) {
                is_insert = true;
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        return is_insert;
    }
    
    public User getUserByEmailAndPassword(String email, String password){
        User user = null;
        
        try{
            String query = Query.GET_USER_BY_EMAIL_PASSWORD;
            PreparedStatement pmst = con.prepareStatement(query);
            pmst.setString(1, email);
            pmst.setString(2, password);
            ResultSet set = pmst.executeQuery();
            
            if(set.next()){
                user = new User();
                user.setId(Integer.parseInt(set.getString("u_id")));
                user.setName(set.getString("u_name"));
                user.setEmail(set.getString("u_email"));
                user.setPassword(set.getString("u_password"));
                user.setGender(set.getString("u_gender"));
                user.setBio(set.getString("u_bio"));
                user.setDate(set.getTimestamp("reg_date"));
                user.setProfile(set.getString("u_profile"));
            }

        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return user;
    }
}
