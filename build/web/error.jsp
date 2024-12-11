<%-- 
    Document   : error
    Created on : 10-Dec-2024, 11:59:50 am
    Author     : Nil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>

<body>

    <div class="container text-center mt-3">
        <img src="img/error.png" class="img-fluid" alt="">
        <h3 class="display-3">Sorry ! Something is wrong....</h3>
        <div>
            <%= exception %>
        </div>
        <a href="http://localhost:8080/TechBlog/" class="btn btn-primary text-white btn-lg mt-3">Go to Home</a>

    </div>
</body>

</html>
