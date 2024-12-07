<%-- 
    Document   : index
    Created on : 07-Dec-2024, 1:32:23 pm
    Author     : Nil
--%>

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <style>
        .banner-background {
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 97%, 65% 91%, 32% 100%, 0 91%, 0 0);
        }
    </style>

    </head>
    <body>
        <%@include file = "nav_bar.jsp" %>
        
        
    <div class="container-fluid bg-primary p-3 banner-background">
        <div class="container text-white p-3">
            <h3 class="display-3">Welcome to TechBlog</h3>
            <h3></h3>
            <p>Welcome to the world of technology, <br>
                A programming language is a system of notation for writing computer programs.</p>
            <p>
                Programming languages are described in terms of their syntax (form) and semantics (meaning), usually
                defined by a formal
                language. Languages usually provide features such as a type system, variables, and mechanisms for error
                handling.
            </p>
            <a href="http://localhost:8080/TechBlog/signup.jsp" class="btn btn-outline-light me-3"><i class="fa-solid fa-plus"></i> Start ! it's free</a>
            <a href="http://localhost:8080/TechBlog/login.jsp" class="btn btn-outline-light"><i class="fa-solid fa-user"></i> Login</a>

        </div>
    </div>


    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">JAVA</h5>
                        <p class="card-text">Java was originally developed by James Gosling at Sun Microsystems. It was
                            released
                            in May 1995 as a core component of
                            Sun's Java platform.</p>
                        <a href="#" class="btn btn-primary">read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">JAVA</h5>
                        <p class="card-text">Java was originally developed by James Gosling at Sun Microsystems. It was
                            released
                            in May 1995 as a core component of
                            Sun's Java platform.</p>
                        <a href="#" class="btn btn-primary">read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">JAVA</h5>
                        <p class="card-text">Java was originally developed by James Gosling at Sun Microsystems. It was
                            released
                            in May 1995 as a core component of
                            Sun's Java platform.</p>
                        <a href="#" class="btn btn-primary">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">JAVA</h5>
                        <p class="card-text">Java was originally developed by James Gosling at Sun Microsystems. It was
                            released
                            in May 1995 as a core component of
                            Sun's Java platform.</p>
                        <a href="#" class="btn btn-primary">read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">JAVA</h5>
                        <p class="card-text">Java was originally developed by James Gosling at Sun Microsystems. It was
                            released
                            in May 1995 as a core component of
                            Sun's Java platform.</p>
                        <a href="#" class="btn btn-primary">read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">JAVA</h5>
                        <p class="card-text">Java was originally developed by James Gosling at Sun Microsystems. It was
                            released
                            in May 1995 as a core component of
                            Sun's Java platform.</p>
                        <a href="#" class="btn btn-primary">read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
