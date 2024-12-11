<%-- 
    Document   : login
    Created on : 07-Dec-2024, 11:33:41 pm
    Author     : Nil
--%>

<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file = "nav_bar.jsp" %>
      
        
        <div class="container d-flex justify-content-center align-items-center min-vh-100">


        <div class="row border rounded-5 p-3 bg-white shadow box-area">


            <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box"
                style="background: #103cbe;">
                <div class="featured-image mb-3">
                    <img src="img/app_logo.png" class="img-fluid" style="width: 250px;">
                </div>
                <p class="text-white fs-2" style="font-family: 'Courier New', Courier, monospace; font-weight: 600;">
                    Login now</p>
                <small class="text-white text-wrap text-center"
                    style="width: 17rem;font-family: 'Courier New', Courier, monospace;">Hello, user login now on your
                    id.</small>
            </div>


            <div class="col-md-6 right-box">
                <div class="row align-items-center">
                    <div class="header-text mb-4">
                        <h2>Welcome, Back</h2>
                        
                        <%
                            Message msg = (Message) session.getAttribute("msg");
                            if (msg != null) {
                        %>
                        <div class="alert <%= msg.getCssClass() %>" role="alert">
                        <%= msg.getContent() %>
                        </div>
                        <%
                                session.removeAttribute("msg");
                            }
                        %>

                        
                        
                    </div>
                    
                    <form action="LoginServlet" method="post">
                        <div class="input-group mb-3">
                            <input type="email" class="form-control form-control-lg bg-light fs-6"
                                placeholder="Enter email id" name="email" required>
                        </div>
                        <div class="input-group mb-5">
                            <input type="password" name="pass" class="form-control form-control-lg bg-light fs-6"
                                placeholder="Enter password" required>
                        </div>

                        <div class="input-group mb-3">
                            <input class="btn btn-lg btn-primary w-100 fs-6" type="submit" name="Login" value="Login">
                        </div>
                    </form>
                    <div class="row">
                        <small>Don't have an account? <a href="http://localhost:8080/TechBlog/signup.jsp">Signup
                                now</a></small>
                    </div>
                </div>
            </div>

        </div>
    </div>

    </body>
</html>
