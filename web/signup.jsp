<%-- 
    Document   : signup
    Created on : 08-Dec-2024, 12:56:16 am
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
    <link rel="stylesheet" href="css/spin.css">

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
        <div class="container d-flex justify-content-center align-items-center min-vh-100">

        <div class="row border rounded-5 p-3 bg-white shadow box-area">

            <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box"
                style="background: #103cbe;">
                <div class="featured-image mb-3">
                    <img src="img/app_logo.png" class="img-fluid" style="width: 250px;">
                </div>
                <p class="text-white fs-2" style="font-family: 'Courier New', Courier, monospace; font-weight: 600;">
                    Signup now</p>
                <small class="text-white text-wrap text-center"
                    style="width: 17rem;font-family: 'Courier New', Courier, monospace;">Hello, user create a new
                    account to
                    stay updated about technology.</small>
            </div>

            <div class="col-md-6 right-box">
                <div class="row align-items-center">
                    <div class="header-text mb-4">
                        <h2>Welcome, To TechBlog</h2>
                        
                        <%
                            Message msg = (Message) session.getAttribute("reg_msg");
                            if (msg != null) {
                        %>
                        <div class="alert <%= msg.getCssClass() %>" role="alert">
                        <%= msg.getContent() %>
                        </div>
                        <%
                            }
                        %>


                        
                        
                    </div>
                    <form action="RegisterServlet" method="post" id="reg-form">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control form-control-lg bg-light fs-6"
                                placeholder="Enter your name" name="u_name" required>
                        </div>
                        <div class="input-group mb-3">
                            <input type="email" class="form-control form-control-lg bg-light fs-6"
                                placeholder="Enter email id" name="u_email" required>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" name="u_pass" class="form-control form-control-lg bg-light fs-6"
                                placeholder="Enter password" required>
                        </div>
                        <div class="mb-3">
                            <div class="d-flex gap-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="u_gender" id="male" value="Male"
                                        required>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="u_gender" id="female"
                                        value="Female" required>
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="u_gender" id="other" value="Other"
                                        required>
                                    <label class="form-check-label" for="other">Other</label>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control bg-light fs-6" id="about" name="u_bio" rows="4"
                                placeholder="Enter something about yourself..."></textarea>
                        </div>
                        <div class="container text-center" id="loader" style="display: none">
                            <span class="fa-solid fa-arrows-rotate fa-spin fa-2x load-spin "></span>
                            <h6>Please Wait.....</h6>
                        </div>
                        <div class="input-group mb-3">
                            <input class="btn btn-lg btn-primary w-100 fs-6" type="submit" name="Signup" value="Signup" id="submit">
                        </div>
                    </form>
                    <div class="row">
                        <small>Already have an account? <a href="http://localhost:8080/TechBlog/login.jsp">Login
                                now</a></small>
                    </div>
                </div>
            </div>

        </div>
    </div>
        
        <script>
            $(document).ready(function(){
                console.log("LOADED")
                $('#reg-form').on("submit",function(event){
                    event.preventDefault();
                    let form = new FormData(this);
                    
                    $("#submit").hide();
                    $("#loader").show();
                    $.ajax({
                        url: "RegisterServlet",
                        type: "POST",
                        data: form,
                        success: function(data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit").show();
                            $("#loader").hide();

                            Swal.fire({
                                title: "Congratulations....",
                                text: "Your account has been successfully created!",
                                icon: "success"
                            }).then((result) => {
                                // Check if the OK button was clicked
                                if (result.isConfirmed) {
                                    response.sendRedirect("http://localhost:8080/TechBlog/login.jsp");
                                }
                            });
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            $("#submit").show();
                            $("#loader").hide();
                            Swal.fire({
                                icon: "error",
                                title: "Oops...",
                                text: "Register was not successful!",
                                footer: '<a href="#">Why do I have this issue?</a>'
                            });
                        },
                    processData: false,
                    contentType: false
                });
            });
        });
    </script>
        
        
    </body>
</html>
