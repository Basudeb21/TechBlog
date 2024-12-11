package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@MultipartConfig
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            
            String u_name = request.getParameter("u_name");
            String u_email = request.getParameter("u_email");
            String u_pass = request.getParameter("u_pass");
            String u_gender = request.getParameter("u_gender");
            String u_bio = request.getParameter("u_bio");
            
            
            User user = new User(u_name, u_email, u_pass, u_gender, u_bio);
            
            UserDao dao = new UserDao(ConnectionProvider.getConnection());
            if(dao.insertUser(user)){
                Message msg = new Message("Account successfully created.... Please login.", "success", "alert-success");
                HttpSession ses = request.getSession();
                ses.setAttribute("reg_msg", msg);
                response.sendRedirect("http://localhost:8080/TechBlog/signup.jsp");
            }
            else{
                Message msg = new Message("Account not registered due to some error...", "error", "alert-danger");
                HttpSession ses = request.getSession();
                ses.setAttribute("reg_msg", msg);
                response.sendRedirect("http://localhost:8080/TechBlog/signup.jsp");
            }
            
            

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
