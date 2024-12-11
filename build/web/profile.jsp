<%-- 
    Document   : profile
    Created on : 10-Dec-2024, 1:05:52 pm
    Author     : Nil
--%>

<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="http://localhost:8080/TechBlog/error.jsp" %>
<%
    
    User this_user = (User)session.getAttribute("current_user");
    
    if(this_user == null){
        response.sendRedirect("http://localhost:8080/TechBlog/login.jsp");
    }
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd.MM.yyyy");
    String formattedDate = sdf.format(this_user.getDate());
    String profileImage = this_user.getProfile();
    if (profileImage == null || profileImage.isEmpty()) {
        profileImage = "default.png";
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/spin.css">
    <link rel="stylesheet" href="css/profile.css">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>    
    </head>
    <body>
        <%@page import="com.tech.blog.entities.User"%>
<nav class="navbar navbar-expand-lg bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="#">TechBlog</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="#">
                            <i class="fa-solid fa-code"></i>

                            ITStack</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="fa-solid fa-layer-group"></i>
                            Catagories
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Semester</a></li>
                            <li><a class="dropdown-item" href="#">Development</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Application Development</a></li>
                            <li><a class="dropdown-item" href="#">Webpage Development</a></li>

                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="#">
                            <i class="fa-solid fa-address-book"></i> Contact</a>
                    </li>
                    
                </ul>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="#">
                            <i class="fa-solid fa-user-circle"></i> <%= this_user.getName() %></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="LogoutServlet">
                            <i class="fa-solid fa-power-off"></i> Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
                    
    <div class="container-fluid p-0 bg-primary">
        <div class="container bg-primary ">
            <div class="blue-box">
                <img src="img/<%= profileImage %>" alt="Profile Image" class="profile-image img-fluid">
            </div>
        </div>
    </div>
    <div class="container mt-5 p-3 text-center">
        <div class="row text-start">
            <div class="col-md-3">
                <div class="card">
                    <h5 class="card-header bg-primary text-light">Personal Details</h5>
                    <div class="card-body bg-danger text-light">
                        <h5 class="card-title"><%= this_user.getName() %></h5>
                        <p class="card-text">ID : <%= this_user.getId() %></p>
                        <p class="card-text">EMAIL : <%= this_user.getEmail() %></p>
                        <p class="card-text">GENDER : <%= this_user.getGender() %></p>
                        <p class="card-text">BIO : <%= this_user.getBio() %></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <h5 class="card-header bg-primary text-light">Profile Details</h5>
                    <div class="card-body bg-dark text-light">
                        <h5 class="card-title">REG : <%= formattedDate %></h5>
                        <p class="card-text">POST : 212</p>
                        <p class="card-text">FOLLOWERS : 1M</p>
                        <p class="card-text">FOLLOWING : 100</p>
                        <p class="card-text">LIKES : 500M</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <h5 class="card-header bg-primary text-light">Last Post</h5>
                    <div class="card-body bg-warning text-light">
                        <h5 class="card-title">DATE : 21.02.2025</h5>
                        <p class="card-text">LIKES : 5M</p>
                        <p class="card-text">COMMENTS : 333K</p>
                        <p class="card-text">SHARE : 200K</p>
                        <p class="card-text">TOPIC : JAVA</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <h5 class="card-header bg-primary text-light">Top Interests</h5>
                    <div class="card-body bg-secondary text-light">
                        <h5 class="card-title">Domain : Programming</h5>
                        <p class="card-text">TOP-1 : JAVA</p>
                        <p class="card-text">TOP-2 : KOTLIN</p>
                        <p class="card-text">TOP-3 : PYTHON</p>
                        <p class="card-text">TOP-4 : C#</p>
                    </div>
                </div>
            </div>
        </div>

        <button class="btn btn-primary text-white ps-5 pe-5 mt-5">Edit Profile</button>
    </div>
             
    </body>
</html>
