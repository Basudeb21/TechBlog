/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.SQLQueries;

/**
 *
 * @author Nil
 */
public interface Query {
    public static final String INSERT_USER = "INSERT INTO `user`(`u_name`, `u_email`, `u_password`, `u_gender`, `u_bio`) VALUES (?, ?, ?, ?, ?)";
    public static final String GET_USER_BY_EMAIL_PASSWORD = "SELECT * FROM `user` WHERE `u_email` = ? AND `u_password` = ?";
    public static final String IS_A_USER = "SELECT COUNT(*) FROM users WHERE email = ?";

}
